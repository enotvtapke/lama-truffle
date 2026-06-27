package com.oracle.truffle.sl.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.io.IOAccess;
import org.junit.Assert;
import org.junit.Assume;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * Benchmarks the self-hosted Lama compiler ({@code compilerSrc/Driver.lama}
 * running on the SL/Truffle interpreter) on synthetic arithmetic-expression
 * programs of growing size.
 *
 * <p>For each size it:
 * <ol>
 *   <li>generates a balanced arithmetic expression with <em>reasonable
 *       (logarithmic) nesting depth</em> — {@code y := <expr>; write(y)};</li>
 *   <li>compiles it with the self-hosted compiler in the default {@code Build}
 *       mode, passing {@code -dt} so the compiler prints its own parsing time,
 *       and measures the whole compilation wall-clock time;</li>
 *   <li>runs the produced 32-bit native executable and measures its run time;</li>
 *   <li>checks the program's output equals the value computed independently
 *       here in Java.</li>
 * </ol>
 *
 * <p>Mirrors {@link LamaSelfHostedCompilerTest}'s in-JVM {@code Context} setup,
 * but uses {@code Build} mode (so the {@code gcc} link step inside Driver.lama
 * actually produces a binary) instead of parse-only {@code -ast}.
 *
 * <p>Compiled with {@code -noimports}: compiling <em>with</em> imports trips a
 * pre-existing interpreter bug in {@code loadInterface}; with {@code -noimports}
 * the {@code write}/{@code read} symbols are resolved at link time from
 * {@code runtime.a}. Requires a working {@code gcc -m32} toolchain; the test
 * skips itself (via {@link Assume}) when that is unavailable.
 */
public class LamaSelfHostedBenchmarkTest {

    private static final String LANGUAGE_ID = "lama";

    private static final Path LAMA_IMPORTS_DIR = Paths.get("tests", "lama", "imports");
    private static final Path COMPILER_DIR = Paths.get("tests", "lama", "compilerSrc");
    private static final Path BUNDLED_RUNTIME_DIR = Paths.get("..", "runtime").toAbsolutePath().normalize();

    /** Expression sizes (number of leaf terms) to benchmark. */
    private static final int[] SIZES = {100, 250, 500, 1000, 2000, 4000};

    /** The native runtime uses 31-bit tagged integers, so keep |value| < 2^30. */
    private static final long INT_LIMIT = 1L << 30;

    private static final long RUN_TIMEOUT_SECONDS = 60;

    @Test
    public void benchmarkArithmeticExpressions() throws Exception {
        Assume.assumeTrue("requires a working `gcc -m32` toolchain", gccM32Works());

        System.out.printf(Locale.ROOT, "%n%6s %5s %10s %12s %9s %12s %8s%n",
                "size", "depth", "parse(s)", "compile(s)", "run(s)", "result", "correct");
        System.out.println("-".repeat(70));

        for (int n : SIZES) {
            Expr e = genExpr(n);
            if (Math.abs(e.value) >= INT_LIMIT) {
                System.out.printf(Locale.ROOT, "%6d  SKIP: value %d exceeds 31-bit range%n", n, e.value);
                continue;
            }

            Path workDir = Files.createTempDirectory("lama-bench-" + n + "-");
            try {
                String name = "benchexpr" + n;
                Files.writeString(workDir.resolve(name + ".lama"),
                        "var y;\ny := " + e.string + ";\nwrite(y)\n", StandardCharsets.UTF_8);

                long t0 = System.nanoTime();
                String driverOutput = compileWithSelfHostedDriver(workDir, name);
                long compileNs = System.nanoTime() - t0;

                Path executable = workDir.resolve(name);
                Assert.assertTrue(
                        "self-hosted compiler produced no executable for size " + n
                                + " (gcc link step failed?):\n" + driverOutput,
                        Files.isExecutable(executable));

                long r0 = System.nanoTime();
                String out = runCompiledBinary(executable).trim();
                long runNs = System.nanoTime() - r0;

                boolean correct = out.equals(Long.toString(e.value));
                System.out.printf(Locale.ROOT, "%6d %5d %10.4f %12.3f %9.4f %12s %8s%n",
                        n, parenDepth(e.string), parseParsingTime(driverOutput),
                        compileNs / 1e9, runNs / 1e9, out, correct ? "OK" : "WRONG");

                Assert.assertEquals("wrong result for size " + n, Long.toString(e.value), out);
            } finally {
                deleteRecursively(workDir);
            }
        }

        System.out.println("-".repeat(70));
        System.out.println("parse(s)   = parsing time reported by the compiler itself (-dt)");
        System.out.println("compile(s) = whole wall-clock compile time (parse + SM + X86 + gcc link)");
        System.out.println("run(s)     = wall-clock time to run the native executable");
    }

    // ------------------------------------------------------------------
    // Expression generation
    // ------------------------------------------------------------------

    /** A generated expression: its fully-parenthesised text and its value. */
    private static final class Expr {
        final String string;
        final long value;

        Expr(String string, long value) {
            this.string = string;
            this.value = value;
        }
    }

    /**
     * A balanced binary tree over {@code n} leaf terms. Each leaf is a small
     * parenthesised {@code (a op b)} of two digits (value &le; 81); the leaves
     * are folded pairwise with alternating {@code +}/{@code -} into a balanced
     * tree, so the value stays bounded (&le; 81*n) while the nesting depth is
     * only ~log2(n). Full parenthesisation makes the value independent of
     * Lama's precedence/associativity, so the value computed here is a faithful
     * oracle for the compiled program's output.
     */
    private static Expr genExpr(int n) {
        String[] ops = {"*", "+", "-"};
        List<Expr> terms = new ArrayList<>(n);
        for (int i = 0; i < n; i++) {
            int a = (i * 7 % 9) + 1;
            int b = (i * 3 % 9) + 1;
            String op = ops[i % 3];
            long v = switch (op) {
                case "*" -> (long) a * b;
                case "+" -> a + b;
                default -> a - b;
            };
            terms.add(new Expr("(" + a + op + b + ")", v));
        }
        int level = 0;
        while (terms.size() > 1) {
            List<Expr> next = new ArrayList<>((terms.size() + 1) / 2);
            for (int j = 0; j < terms.size(); j += 2) {
                if (j + 1 < terms.size()) {
                    boolean plus = ((j / 2 + level) % 2 == 0);
                    Expr l = terms.get(j);
                    Expr r = terms.get(j + 1);
                    long v = plus ? l.value + r.value : l.value - r.value;
                    next.add(new Expr("(" + l.string + (plus ? "+" : "-") + r.string + ")", v));
                } else {
                    next.add(terms.get(j));
                }
            }
            terms = next;
            level++;
        }
        return terms.get(0);
    }

    private static int parenDepth(String s) {
        int d = 0;
        int max = 0;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '(') {
                max = Math.max(max, ++d);
            } else if (c == ')') {
                d--;
            }
        }
        return max;
    }

    // ------------------------------------------------------------------
    // Driving the self-hosted compiler (in-JVM, Build mode, -dt)
    // ------------------------------------------------------------------

    /**
     * Runs {@code Driver.lama} in {@code Build} mode (the default) with
     * {@code -dt -noimports} on {@code <name>.lama} in {@code workDir}. The
     * compiler writes {@code <name>.s}/{@code .i} there and links a native
     * executable {@code <name>} via its internal {@code gcc} call. Returns the
     * driver's captured stdout/stderr (which carries the {@code -dt} timings).
     */
    private String compileWithSelfHostedDriver(Path workDir, String name) {
        Path driverFile = COMPILER_DIR.resolve("Driver.lama").toAbsolutePath().normalize();
        Assert.assertTrue("Driver.lama missing: " + driverFile, Files.exists(driverFile));

        String unitSearchPath = String.join(File.pathSeparator,
                LAMA_IMPORTS_DIR.toAbsolutePath().normalize().toString(),
                COMPILER_DIR.toAbsolutePath().normalize().toString());

        // Driver.lama drops sysargs[0] (the program name = driver path), so the
        // input file and flags follow it. No mode flag => default Build mode.
        String[] appArgs = {
                driverFile.toString(),
                name + ".lama",
                "-noimports",
                "-dt"
        };

        ByteArrayOutputStream captured = new ByteArrayOutputStream();
        Source source;
        try {
            source = Source.newBuilder(LANGUAGE_ID, driverFile.toFile()).build();
        } catch (IOException ex) {
            throw new AssertionError("could not read Driver.lama: " + driverFile, ex);
        }

        // The parser-combinator-heavy compiler recurses deeply on large
        // expressions, so run the evaluation on a dedicated thread with a big
        // stack (the standalone `sl` launcher uses -Xss256m for the same reason).
        Throwable[] failure = new Throwable[1];
        Runnable task = () -> {
            try (Context context = Context.newBuilder(LANGUAGE_ID)
                    .out(captured)
                    .err(captured)
                    .currentWorkingDirectory(workDir.toAbsolutePath())
                    .options(Map.of("lama.UnitSearchPath", unitSearchPath))
                    .environment("LAMA", BUNDLED_RUNTIME_DIR.toString())
                    .allowIO(IOAccess.ALL)
                    .allowAllAccess(true)
                    .arguments(LANGUAGE_ID, appArgs)
                    .build()) {
                context.eval(source);
            } catch (Throwable t) {
                failure[0] = t;
            }
        };
        Thread thread = new Thread(null, task, "lama-self-host-compile", 512L * 1024 * 1024);
        thread.start();
        try {
            thread.join();
        } catch (InterruptedException ex) {
            Thread.currentThread().interrupt();
            throw new AssertionError("interrupted while compiling", ex);
        }
        if (failure[0] != null) {
            throw new AssertionError(
                    "self-hosted compiler failed:\n" + captured.toString(StandardCharsets.UTF_8), failure[0]);
        }
        return captured.toString(StandardCharsets.UTF_8);
    }

    /** Parses the {@code "Parsing time : <seconds>"} line printed by {@code -dt}. */
    private static double parseParsingTime(String driverOutput) {
        for (String line : driverOutput.split("\n")) {
            int colon = line.indexOf(':');
            if (colon > 0 && line.regionMatches(true, 0, "Parsing time", 0, "Parsing time".length())) {
                try {
                    return Double.parseDouble(line.substring(colon + 1).trim());
                } catch (NumberFormatException ignored) {
                    return Double.NaN;
                }
            }
        }
        return Double.NaN;
    }

    /** Runs the produced 32-bit ELF (no stdin needed) and returns its stdout. */
    private String runCompiledBinary(Path executable) throws IOException, InterruptedException {
        Process proc = new ProcessBuilder(executable.toAbsolutePath().toString())
                .redirectErrorStream(false)
                .start();
        proc.getOutputStream().close();
        boolean finished = proc.waitFor(RUN_TIMEOUT_SECONDS, TimeUnit.SECONDS);
        if (!finished) {
            proc.destroyForcibly();
            throw new AssertionError("compiled program timed out: " + executable);
        }
        byte[] stdout = proc.getInputStream().readAllBytes();
        byte[] stderr = proc.getErrorStream().readAllBytes();
        if (proc.exitValue() != 0) {
            throw new AssertionError("compiled program exited with status " + proc.exitValue()
                    + "\nstderr: " + new String(stderr, StandardCharsets.UTF_8));
        }
        return new String(stdout, StandardCharsets.UTF_8);
    }

    // ------------------------------------------------------------------
    // Toolchain probe / cleanup
    // ------------------------------------------------------------------

    private static boolean gccM32Works() {
        Path src = null;
        Path out = null;
        try {
            src = Files.createTempFile("m32probe", ".c");
            out = Files.createTempFile("m32probe", ".out");
            Files.writeString(src, "int main(void){return 0;}");
            Process p = new ProcessBuilder("gcc", "-m32", src.toString(), "-o", out.toString())
                    .redirectErrorStream(true).start();
            return p.waitFor(60, TimeUnit.SECONDS) && p.exitValue() == 0;
        } catch (IOException | InterruptedException ex) {
            return false;
        } finally {
            try {
                if (src != null) Files.deleteIfExists(src);
                if (out != null) Files.deleteIfExists(out);
            } catch (IOException ignored) {
            }
        }
    }

    private static void deleteRecursively(Path root) throws IOException {
        if (!Files.exists(root)) return;
        try (var stream = Files.walk(root)) {
            stream.sorted(Comparator.reverseOrder()).forEach(p -> {
                try {
                    Files.deleteIfExists(p);
                } catch (IOException ignored) {
                }
            });
        }
    }
}
