package com.oracle.truffle.sl.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Engine;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.io.IOAccess;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import java.util.concurrent.TimeUnit;

@RunWith(Parameterized.class)
public class LamaSelfHostedCompilerTest {

    private static final String LANGUAGE_ID = "lama";

    private static final Path TESTS_DIR = Paths.get("tests", "lama", "compiler");
    private static final Path LAMA_IMPORTS_DIR = Paths.get("tests", "lama", "imports");
    private static final Path COMPILER_DIR = Paths.get("tests", "lama", "compilerSrc");
    private static final Path BUNDLED_RUNTIME_DIR = Paths.get("..", "runtime").toAbsolutePath().normalize();

    /**
     * Programs the self-hosted compiler in {@code compilerSrc/} currently
     * rejects. These are real gaps in the student compiler, not in the
     * test harness — {@code SM.lama} still misses a few AST shapes. Move
     * a test out of this list once the compiler gains the corresponding
     * feature.
     */
    private static final List<String> IGNORED_TESTS = List.of(
            "test045"
//            , "generated00010"
    );

    /** Time budget for the compiled binary to consume its input and exit. */
    private static final long RUN_TIMEOUT_SECONDS = 30;

    /**
     * One Engine shared by every test. Lama is registered ContextPolicy.SHARED,
     * so per-test Contexts built on this engine reuse the already-parsed
     * compiler and a single initialized runtime; each test still gets its own
     * isolated Context (own args, cwd, IO, and -- since module-variable tables
     * are resolved per context -- its own module state).
     */
    private static Engine engine;
    private static Source driverSource;

    @BeforeClass
    public static void setUpEngine() throws java.io.IOException {
        engine = Engine.newBuilder().build();
        Path driverFile = COMPILER_DIR.resolve("Driver.lama").toAbsolutePath().normalize();
        Assert.assertTrue("Driver.lama missing: " + driverFile, Files.exists(driverFile));
        driverSource = Source.newBuilder(LANGUAGE_ID, driverFile.toFile()).build();
    }

    @AfterClass
    public static void tearDownEngine() {
        if (engine != null) engine.close();
    }

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
        Path workDir = Files.createTempDirectory("lama-selfhost-" + testName + "-");
        try {
            Path testCopy = workDir.resolve(testName + ".lama");
            Files.copy(lamaFile, testCopy, StandardCopyOption.REPLACE_EXISTING);

            long compileStart = System.nanoTime();
            String driverOutput = compileWithSelfHostedDriver(workDir, testCopy);
            long compileNs = System.nanoTime() - compileStart;

            Path executable = workDir.resolve(testName);
            if (!Files.isExecutable(executable)) {
                throw new AssertionError(
                        "self-hosted compiler did not produce an executable: " + executable
                                + "\nThis usually means the linker step inside Driver.lama failed"
                                + " (e.g. LAMA points at a runtime.a that doesn't define LStd_* symbols)."
                                + "\n\ngcc / driver output:\n" + driverOutput);
            }

            long runStart = System.nanoTime();
            String actualOutput = runCompiledBinary(executable);
            long runNs = System.nanoTime() - runStart;

            // One concise line per test, surfaced via Surefire's stdout
            // (visible directly in `mvn test` output and saved into
            // target/surefire-reports/<class>-output.txt).
            System.out.printf(
                    "[%s] compile=%s, run=%s%n",
                    testName, formatMillis(compileNs), formatMillis(runNs));

            String expectedOutput = Files.readString(expectedFile, StandardCharsets.UTF_8);
            Assert.assertEquals(expectedOutput, actualOutput);
        } finally {
            deleteRecursively(workDir);
        }
    }

    private static String formatMillis(long nanos) {
        return String.format(Locale.ROOT, "%.1f ms", nanos / 1_000_000.0);
    }

    /**
     * Runs {@code compilerSrc/Driver.lama} on a fresh Graal {@link Context}
     * inside this JVM (no {@code sl} subprocess), with the test file as its
     * sole user argument. The Context's working directory is {@code workDir}
     * and {@code LAMA} points at the bundled runtime, so the compiler's file
     * IO and its {@code gcc} link step both happen there.
     *
     * <p>The Context is built on the shared {@link #engine}, so the compiler is
     * parsed once for the whole suite. Returns whatever the driver wrote to
     * stdout/stderr, for use in failure diagnostics.</p>
     */
    private String compileWithSelfHostedDriver(Path workDir, Path testCopy) {
        Path driverFile = COMPILER_DIR.resolve("Driver.lama").toAbsolutePath().normalize();

        String unitSearchPath = String.join(File.pathSeparator,
                LAMA_IMPORTS_DIR.toAbsolutePath().normalize().toString(),
                COMPILER_DIR.toAbsolutePath().normalize().toString());

        // Driver.lama drops sysargs[0] (the program name), so the test file
        // follows the driver path.
        String[] appArgs = {
                driverFile.toString(),
                testCopy.getFileName().toString(),
        };

        ByteArrayOutputStream captured = new ByteArrayOutputStream();

        // Each test gets its own isolated Context (args, cwd, IO, module state)
        // but builds it on the shared `engine`, so the compiler is parsed once
        // for the whole suite.
        try (Context context = Context.newBuilder(LANGUAGE_ID)
                .engine(engine)
                .out(captured)
                .err(captured)
                .currentWorkingDirectory(workDir.toAbsolutePath())
                .options(Map.of("lama.UnitSearchPath", unitSearchPath))
                .environment("LAMA", BUNDLED_RUNTIME_DIR.toString())
                .allowIO(IOAccess.ALL)
                .allowAllAccess(true)
                .arguments(LANGUAGE_ID, appArgs)
                .build()) {
            context.eval(driverSource);
        } catch (PolyglotException e) {
            throw new AssertionError(
                    "self-hosted compiler failed for " + testName + ":\n"
                            + captured.toString(StandardCharsets.UTF_8), e);
        }
        return captured.toString(StandardCharsets.UTF_8);
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

    private static void deleteRecursively(Path root) throws IOException {
        if (!Files.exists(root)) return;
        try (var stream = Files.walk(root)) {
            stream.sorted(Comparator.reverseOrder()).forEach(p -> {
                try { Files.deleteIfExists(p); } catch (IOException ignored) {}
            });
        }
    }
}
