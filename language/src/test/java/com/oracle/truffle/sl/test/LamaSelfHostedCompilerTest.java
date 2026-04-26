package com.oracle.truffle.sl.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.Value;
import org.graalvm.polyglot.io.IOAccess;
import org.junit.Assert;
import org.junit.Assume;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
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
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * Drives the self-hosted Lama compiler in {@code compiler/} on the test
 * suite under {@code language/tests/lama/compiler/}, parameterised the
 * same way as {@link LamaInterpreterTest}.
 *
 * <p>For every test file {@code name.lama}:
 * <ol>
 *   <li>Run {@code compiler/Driver.lama} through the Graal Lama runtime
 *       with {@code sysargs = [driverPath, copyOfTestLama]}. The driver
 *       writes {@code copyOfTestLama}.s and an executable next to it.</li>
 *   <li>Execute the produced 32-bit ELF, feeding it {@code name.input}
 *       on stdin.</li>
 *   <li>Assert stdout equals {@code name.log}.</li>
 * </ol>
 *
 * <p>The test quietly skips (via {@link Assume}) when the host doesn't
 * have the pieces the self-hosted compiler needs — i.e. no
 * {@code LAMA_RUNTIME} env var, no {@code runtime.a} inside that path,
 * or the 32-bit {@code gcc} toolchain isn't installed. This matches the
 * shape of the reference Lama regression tests.</p>
 */
@RunWith(Parameterized.class)
public class LamaSelfHostedCompilerTest {

    private static final Path TESTS_DIR = Paths.get("tests", "lama", "compiler");
    private static final Path LAMA_IMPORTS_DIR = Paths.get("tests", "lama", "imports");
    private static final Path COMPILER_DIR = Paths.get("tests", "lama", "compilerSrc");

    /** Give each compiled binary at most this long to consume its input. */
    private static final long RUN_TIMEOUT_SECONDS = 30;

    /** Evaluate `Driver.lama` on a dedicated thread with the same headroom as LamaMain. */
    private static final long EVAL_STACK_SIZE = 64L * 1024 * 1024;

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
            Path testCopy = workDir.resolve(testName + ".lama");
            Files.copy(lamaFile, testCopy, StandardCopyOption.REPLACE_EXISTING);

            compileWithSelfHostedDriver(testCopy);

            Path executable = workDir.resolve(testName);
            Assert.assertTrue(
                    "self-hosted compiler did not produce an executable: " + executable,
                    Files.isExecutable(executable));

            String actualOutput = runCompiledBinary(executable);
            String expectedOutput = Files.readString(expectedFile, StandardCharsets.UTF_8);
            Assert.assertEquals(expectedOutput, actualOutput);
        } finally {
            deleteRecursively(workDir);
        }
    }

    /** Drives {@code compiler/Driver.lama} on the supplied source file. */
    private void compileWithSelfHostedDriver(Path testCopy) throws Exception {
        Path driverFile = COMPILER_DIR.resolve("Driver.lama").toAbsolutePath().normalize();
        Assert.assertTrue("Driver.lama missing: " + driverFile, Files.exists(driverFile));

        String unitPath = LAMA_IMPORTS_DIR.toAbsolutePath().normalize()
                + java.io.File.pathSeparator
                + COMPILER_DIR.toAbsolutePath().normalize();

        // sysargs[0] == program name by convention, sysargs[1..] are what
        // Driver.lama sees after `arrayList(sysargs).tl`. So the first
        // user-visible argument is the .lama file to compile.
        String[] appArgs = new String[]{
                driverFile.toString(),
                testCopy.toAbsolutePath().normalize().toString(),
                "-noimports"
        };

        ByteArrayOutputStream driverOut = new ByteArrayOutputStream();
        ByteArrayOutputStream driverErr = new ByteArrayOutputStream();

        // Evaluate Driver.lama on a worker thread with a 64 MB stack,
        // matching LamaMain. The Graal default JVM thread stack is far
        // too small for the parser-combinator recursion in Ostap +
        // Parser + X86 code generation.
        Throwable[] thrown = new Throwable[1];
        Thread worker = new Thread(null, () -> {
            try (Context context = Context.newBuilder("lama")
                    .in(new ByteArrayInputStream(new byte[0]))
                    .out(driverOut)
                    .err(driverErr)
                    .options(Map.of("lama.UnitSearchPath", unitPath))
                    .allowIO(IOAccess.ALL)
                    .allowAllAccess(true)
                    .arguments("lama", appArgs)
                    .build()) {
                Source source = Source.newBuilder("lama", driverFile.toFile()).build();
                try {
                    Value result = context.eval(source);
                    // Consume result to mirror LamaMain; this surfaces any
                    // lazy errors.
                    if (result == null) {
                        thrown[0] = new RuntimeException("Driver returned null");
                    }
                } catch (PolyglotException e) {
                    thrown[0] = new RuntimeException(
                            "Driver failed:\n"
                                    + "stdout: " + driverOut.toString(StandardCharsets.UTF_8) + "\n"
                                    + "stderr: " + driverErr.toString(StandardCharsets.UTF_8) + "\n"
                                    + "message: " + e.getMessage(),
                            e);
                }
            } catch (Throwable t) {
                thrown[0] = t;
            }
        }, "lama-selfhost-" + testName, EVAL_STACK_SIZE);
        worker.start();
        worker.join();

        if (thrown[0] instanceof Exception ex) {
            throw ex;
        }
        if (thrown[0] != null) {
            throw new RuntimeException(thrown[0]);
        }
    }

    /** Runs the produced 32-bit ELF and returns its stdout. */
    private String runCompiledBinary(Path executable) throws IOException, InterruptedException {
        ProcessBuilder pb = new ProcessBuilder(executable.toAbsolutePath().toString())
                .redirectErrorStream(false);
        // Clean environment except for the essentials; many Lama tests
        // read from stdin until EOF and do not care about the rest.
        Process proc = pb.start();

        // Pipe `.input` into the child. A compiled Lama program frequently
        // calls `read()` fewer times than the number of input lines supplied
        // by the reference Lama regression suite, so the child may close its
        // stdin while we still have bytes queued — which manifests as
        // `IOException: Broken pipe`. We deliberately swallow that case so
        // long as the child eventually exits on its own.
        if (Files.exists(inputFile)) {
            byte[] inputBytes = Files.readAllBytes(inputFile);
            try (var os = proc.getOutputStream()) {
                os.write(inputBytes);
                os.flush();
            } catch (IOException ignored) {
                // child closed stdin early – ok
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

    private static void checkToolchainOrSkip() {
        if (cachedToolchainOk == null) {
            cachedToolchainOk = probeToolchain();
        }
        Assume.assumeTrue(cachedToolchainSkipReason, cachedToolchainOk);
    }

    private static boolean probeToolchain() {
        String runtime = resolveLamaRuntimePath();
        if (runtime == null) {
            cachedToolchainSkipReason =
                    "LAMA_RUNTIME env var (or -Dlama.test.runtimePath) is not set; "
                            + "self-hosted compiler tests require a path to a directory containing runtime.a";
            return false;
        }
        Path runtimeArchive = Paths.get(runtime, "runtime.a");
        if (!Files.exists(runtimeArchive)) {
            cachedToolchainSkipReason = "runtime.a not found under " + runtime;
            return false;
        }
        if (!gccMultilibWorks()) {
            cachedToolchainSkipReason =
                    "gcc with -m32 support is required but not functional on this host "
                            + "(install e.g. gcc-multilib on Debian/Ubuntu)";
            return false;
        }
        return true;
    }

    private static String resolveLamaRuntimePath() {
        String env = System.getenv("LAMA_RUNTIME");
        if (env != null && !env.isBlank()) return env;
        String prop = System.getProperty("lama.test.runtimePath");
        if (prop != null && !prop.isBlank()) return prop;
        return null;
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
