package com.oracle.truffle.sl.test;

import org.junit.Assert;
import org.junit.Assume;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Drives the self-hosted Lama compiler (in
 * {@code language/tests/lama/compilerSrc/}) on the programs under
 * {@code language/tests/lama/compiler/}, parameterised the same way as
 * {@link LamaInterpreterTest}.
 *
 * <p>For every test file {@code name.lama}:
 * <ol>
 *   <li>Copy it into a fresh temp dir (so the compiler's
 *       {@code .s}/{@code .i}/ELF outputs are isolated per test and
 *       don't pollute the source tree).</li>
 *   <li>Spawn the {@code standalone/target/sl} launcher from inside the
 *       temp dir. It runs {@code compilerSrc/Driver.lama} under the
 *       Graal Lama runtime with
 *       {@code sysargs = [driverPath, copyOfTestLama, -noimports]},
 *       producing the compiled 32-bit ELF alongside the source
 *       file.</li>
 *   <li>Execute that ELF, feeding it {@code name.input} on stdin.</li>
 *   <li>Assert stdout equals {@code name.log}.</li>
 * </ol>
 *
 * <p>The test quietly skips (via {@link Assume}) when the host doesn't
 * have the pieces the self-hosted compiler needs: the Graal launcher
 * binary must already be built, the 32-bit {@code gcc} toolchain must
 * work, and {@code LAMA} (or {@code LAMA_RUNTIME}) must point to a
 * directory containing a Lama-compatible {@code runtime.a}.</p>
 */
@RunWith(Parameterized.class)
public class LamaSelfHostedCompilerTest {

    private static final Path TESTS_DIR = Paths.get("tests", "lama", "compiler");
    private static final Path LAMA_IMPORTS_DIR = Paths.get("tests", "lama", "imports");
    private static final Path COMPILER_DIR = Paths.get("tests", "lama", "compilerSrc");

    /**
     * Programs the self-hosted compiler in {@code compilerSrc/} currently
     * rejects. These are real gaps in the student compiler, not in the
     * test harness — {@code SM.lama} still misses a few AST shapes. Move
     * a test out of this list once the compiler gains the corresponding
     * feature.
     */
    private static final List<String> IGNORED_TESTS = List.of(
            // Conditional assignment `(if ... fi) := 10` — SM.lama:945
            // doesn't handle `ElemRef(Var(_), Const(_))` as an lvalue.
            "test045"
    );

    /** `standalone/target/sl` relative to the language module's working dir. */
    private static final Path SL_LAUNCHER = Paths.get("..", "standalone", "target", "sl");

    /** Overall ceiling for `sl + compiled ELF` per test. */
    private static final long COMPILE_TIMEOUT_SECONDS = 120;
    /** Time budget for the compiled binary to consume its input and exit. */
    private static final long RUN_TIMEOUT_SECONDS = 30;

    private final Path lamaFile;
    private final Path inputFile;
    private final Path expectedFile;
    private final String testName;

    public LamaSelfHostedCompilerTest(String testName, Path lamaFile, Path inputFile, Path expectedFile) {
        this.lamaFile = lamaFile;
        this.inputFile = inputFile;
        this.expectedFile = expectedFile;
        this.testName = testName;
    }

    @Parameterized.Parameters(name = "{0}")
    public static Collection<Object[]> data() throws IOException {
        List<Object[]> params = new ArrayList<>();
        if (!Files.isDirectory(TESTS_DIR)) {
            return params;
        }
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(TESTS_DIR, "*.lama")) {
            for (Path lamaFile : stream) {
                String baseName = lamaFile.getFileName().toString().replace(".lama", "");
                if (IGNORED_TESTS.contains(baseName)) continue;
                Path inputFile = lamaFile.resolveSibling(baseName + ".input");
                Path expectedFile = lamaFile.resolveSibling(baseName + ".log");
                if (Files.exists(expectedFile)) {
                    params.add(new Object[]{baseName, lamaFile, inputFile, expectedFile});
                }
            }
        }
        params.sort(Comparator.comparing(a -> ((String) a[0])));
        return params;
    }

    @Test
    public void testSelfHostedCompiler() throws Exception {
        checkToolchainOrSkip();

        Path workDir = Files.createTempDirectory("lama-selfhost-" + testName + "-");
        try {
            // The self-hosted compiler rejects filenames that don't match
            // its `<uident/lident>.lama` regex — `-` is not allowed.
            // Rewrite the copy under a compiler-friendly name.
            String sanitized = toValidUnitName(testName);
            Path testCopy = workDir.resolve(sanitized + ".lama");
            Files.copy(lamaFile, testCopy, StandardCopyOption.REPLACE_EXISTING);

            String driverOutput = compileWithSelfHostedDriver(workDir, testCopy);

            Path executable = workDir.resolve(sanitized);
            if (!Files.isExecutable(executable)) {
                // Driver.lama's `system("gcc …")` return code is not checked
                // by the compiler itself, so a link failure leaves Driver
                // exiting 0 with no ELF produced. Surface the driver/gcc
                // output to make the cause actionable.
                throw new AssertionError(
                        "self-hosted compiler did not produce an executable: " + executable
                                + "\nThis usually means the linker step inside Driver.lama failed"
                                + " (e.g. LAMA points at a runtime.a that doesn't define LStd_* symbols)."
                                + "\n\ngcc / driver output:\n" + driverOutput);
            }

            String actualOutput = runCompiledBinary(executable);
            String expectedOutput = Files.readString(expectedFile, StandardCharsets.UTF_8);
            Assert.assertEquals(expectedOutput, actualOutput);
        } finally {
            deleteRecursively(workDir);
        }
    }

    /** Strip characters the self-hosted compiler disallows in unit names. */
    private static String toValidUnitName(String raw) {
        StringBuilder out = new StringBuilder(raw.length());
        for (char c : raw.toCharArray()) {
            boolean ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                    || (c >= '0' && c <= '9') || c == '_' || c == '\'';
            out.append(ok ? c : '_');
        }
        if (out.length() == 0
                || !((out.charAt(0) >= 'a' && out.charAt(0) <= 'z')
                     || (out.charAt(0) >= 'A' && out.charAt(0) <= 'Z'))) {
            out.insert(0, 't');
        }
        return out.toString();
    }

    /**
     * Spawns {@code ./sl} inside {@code workDir}, pointing it at
     * {@code compilerSrc/Driver.lama} with the test file as the sole
     * user argument. We run through the launcher (rather than driving
     * Graal {@code Context} directly) so the compiler's CWD, env vars,
     * and thread stack size all match real-world usage — including the
     * generous stack size that parser-combinator-heavy Lama code needs.
     */
    private String compileWithSelfHostedDriver(Path workDir, Path testCopy) throws IOException, InterruptedException {
        Path slLauncher = SL_LAUNCHER.toAbsolutePath().normalize();
        Assert.assertTrue("sl launcher missing (run `mvn package` first): " + slLauncher,
                Files.isExecutable(slLauncher));

        Path driverFile = COMPILER_DIR.resolve("Driver.lama").toAbsolutePath().normalize();
        Assert.assertTrue("Driver.lama missing: " + driverFile, Files.exists(driverFile));

        String runtimePath = resolveLamaRuntimePath();

        List<String> command = List.of(
                slLauncher.toString(),
                "--disable-launcher-output",
                "-I", LAMA_IMPORTS_DIR.toAbsolutePath().normalize().toString(),
                "-I", COMPILER_DIR.toAbsolutePath().normalize().toString(),
                "--args", testCopy.getFileName() + " -noimports",
                driverFile.toString()
        );

        ProcessBuilder pb = new ProcessBuilder(command)
                .directory(workDir.toFile())
                .redirectErrorStream(true);
        // Driver.lama reads LAMA (X86.lama) / LAMA_RUNTIME (older compiler).
        // Set both so either compiler flavour works.
        pb.environment().put("LAMA", runtimePath);
        pb.environment().put("LAMA_RUNTIME", runtimePath);

        Process proc = pb.start();
        proc.getOutputStream().close();
        boolean finished = proc.waitFor(COMPILE_TIMEOUT_SECONDS, TimeUnit.SECONDS);
        byte[] output = proc.getInputStream().readAllBytes();
        String outputStr = new String(output, StandardCharsets.UTF_8);
        if (!finished) {
            proc.destroyForcibly();
            throw new AssertionError(
                    "self-hosted compiler timed out after " + COMPILE_TIMEOUT_SECONDS
                            + "s\ncommand: " + String.join(" ", command)
                            + "\noutput so far:\n" + outputStr);
        }
        int exit = proc.exitValue();
        if (exit != 0) {
            throw new AssertionError(
                    "self-hosted compiler exited with status " + exit
                            + "\ncommand: " + String.join(" ", command)
                            + "\noutput:\n" + outputStr);
        }
        return outputStr;
    }

    /** Runs the produced 32-bit ELF and returns its stdout. */
    private String runCompiledBinary(Path executable) throws IOException, InterruptedException {
        ProcessBuilder pb = new ProcessBuilder(executable.toAbsolutePath().toString())
                .redirectErrorStream(false);
        Process proc = pb.start();

        if (Files.exists(inputFile)) {
            byte[] inputBytes = Files.readAllBytes(inputFile);
            try (var os = proc.getOutputStream()) {
                os.write(inputBytes);
                os.flush();
            } catch (IOException ignored) {
                // child closed stdin early — ok
            }
        } else {
            proc.getOutputStream().close();
        }

        boolean finished = proc.waitFor(RUN_TIMEOUT_SECONDS, TimeUnit.SECONDS);
        if (!finished) {
            proc.destroyForcibly();
            throw new AssertionError("Compiled program timed out: " + executable);
        }
        byte[] stdout = proc.getInputStream().readAllBytes();
        byte[] stderr = proc.getErrorStream().readAllBytes();
        int exit = proc.exitValue();
        if (exit != 0) {
            throw new AssertionError(
                    "Compiled program exited with status " + exit + "\n"
                            + "stderr: " + new String(stderr, StandardCharsets.UTF_8));
        }
        return new String(stdout, StandardCharsets.UTF_8);
    }

    // ---------------------------------------------------------------
    //  Environment probes: skip rather than fail when the 32-bit Lama
    //  toolchain isn't available on the host running the tests.
    // ---------------------------------------------------------------

    private static Boolean cachedToolchainOk;
    private static String cachedToolchainSkipReason;
    private static String cachedRuntimePath;

    private static void checkToolchainOrSkip() {
        if (cachedToolchainOk == null) {
            cachedToolchainOk = probeToolchain();
        }
        Assume.assumeTrue(cachedToolchainSkipReason, cachedToolchainOk);
    }

    private static boolean probeToolchain() {
        Path slLauncher = SL_LAUNCHER.toAbsolutePath().normalize();
        if (!Files.isExecutable(slLauncher)) {
            cachedToolchainSkipReason =
                    "sl launcher not built yet at " + slLauncher
                            + "; run `mvn package` to enable self-hosted compiler tests";
            return false;
        }
        String runtime;
        try {
            runtime = resolveLamaRuntimePath();
        } catch (IOException e) {
            cachedToolchainSkipReason = "failed to prepare Lama runtime copy: " + e.getMessage();
            return false;
        }
        if (runtime == null) {
            cachedToolchainSkipReason =
                    "no usable Lama runtime found. Either set LAMA (preferred) or LAMA_RUNTIME"
                            + " to a directory containing runtime.a with LStd_* symbols,"
                            + " or provide one at <project-root>/runtime/runtime.a.";
            return false;
        }
        Path runtimeArchive = Paths.get(runtime, "runtime.a");
        if (!Files.exists(runtimeArchive)) {
            cachedToolchainSkipReason = "runtime.a not found under " + runtime;
            return false;
        }
        if (runtime.contains(" ")) {
            cachedToolchainSkipReason =
                    "LAMA path contains spaces (" + runtime + ") — the self-hosted compiler "
                            + "builds an unescaped gcc command line, so whitespace-free paths are required."
                            + " Set LAMA to a path without whitespace or delete the explicit env var so the"
                            + " harness copies the bundled runtime/ into a scratch dir automatically.";
            return false;
        }
        if (!runtimeDefinesStdSymbols(runtimeArchive)) {
            cachedToolchainSkipReason =
                    "runtime.a at " + runtime + " does not export LStd_* symbols (e.g. LStd_read)."
                            + " The self-hosted compiler in compilerSrc/ emits calls into LStd_*;"
                            + " point LAMA at a runtime built for it, or drop a compatible runtime into"
                            + " <project-root>/runtime/ to let the harness pick it up automatically.";
            return false;
        }
        if (!gccMultilibWorks()) {
            cachedToolchainSkipReason =
                    "gcc with -m32 support is required but not functional on this host "
                            + "(install e.g. gcc-multilib on Debian/Ubuntu)";
            return false;
        }
        cachedRuntimePath = runtime;
        return true;
    }

    private static String resolveLamaRuntimePath() throws IOException {
        if (cachedRuntimePath != null) return cachedRuntimePath;

        String env = System.getenv("LAMA");
        if (env != null && !env.isBlank()) return env;
        env = System.getenv("LAMA_RUNTIME");
        if (env != null && !env.isBlank()) return env;
        String prop = System.getProperty("lama.test.runtimePath");
        if (prop != null && !prop.isBlank()) return prop;

        // Fall back to the repo's own runtime/ directory. If it lives under a
        // path containing whitespace (common on "virtual machines/...") we
        // copy it into a space-free scratch dir once per JVM, since the
        // self-hosted compiler's gcc invocation is not shell-escaped.
        Path bundled = Paths.get("..", "runtime").toAbsolutePath().normalize();
        if (Files.exists(bundled.resolve("runtime.a"))) {
            if (bundled.toString().contains(" ")) {
                Path scratch = Files.createTempDirectory("lama-rt-");
                for (Path p : Files.newDirectoryStream(bundled)) {
                    Path target = scratch.resolve(p.getFileName());
                    if (Files.isRegularFile(p)) {
                        Files.copy(p, target, StandardCopyOption.REPLACE_EXISTING);
                    }
                }
                scratch.toFile().deleteOnExit();
                return scratch.toString();
            }
            return bundled.toString();
        }
        return null;
    }

    private static boolean runtimeDefinesStdSymbols(Path runtimeArchive) {
        try {
            Process p = new ProcessBuilder("nm", runtimeArchive.toString())
                    .redirectErrorStream(true).start();
            byte[] out = p.getInputStream().readAllBytes();
            p.waitFor(10, TimeUnit.SECONDS);
            String text = new String(out, StandardCharsets.UTF_8);
            // The self-hosted compilerSrc/ emits LStd_read, LStd_write, ...
            return text.contains("LStd_");
        } catch (IOException | InterruptedException e) {
            if (e instanceof InterruptedException) Thread.currentThread().interrupt();
            return true; // Give up probing; let the compile succeed/fail on its own.
        }
    }

    private static boolean gccMultilibWorks() {
        try {
            Path tmpC = Files.createTempFile("lama-probe-", ".c");
            Path tmpBin = Files.createTempFile("lama-probe-", "");
            try {
                Files.writeString(tmpC, "int main(void){return 0;}", StandardCharsets.UTF_8);
                Process p = new ProcessBuilder(
                        "gcc", "-m32", "-o", tmpBin.toString(), tmpC.toString())
                        .redirectErrorStream(true).start();
                boolean finished = p.waitFor(15, TimeUnit.SECONDS);
                return finished && p.exitValue() == 0;
            } finally {
                Files.deleteIfExists(tmpC);
                Files.deleteIfExists(tmpBin);
            }
        } catch (IOException | InterruptedException e) {
            if (e instanceof InterruptedException) Thread.currentThread().interrupt();
            return false;
        }
    }

    private static void deleteRecursively(Path root) throws IOException {
        if (!Files.exists(root)) return;
        try (var stream = Files.walk(root)) {
            stream.sorted(Comparator.reverseOrder()).forEach(p -> {
                try { Files.deleteIfExists(p); } catch (IOException ignored) {}
            });
        }
    }
}
