package com.oracle.truffle.lama.test.selfhsoted;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
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
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.TimeUnit;

import static com.oracle.truffle.lama.test.LamaInterpreterTest.STDLIB_DIR;
import static com.oracle.truffle.lama.test.selfhsoted.LamaSelfHostedDriver.*;

/**
 * Bootstrap end-to-end test: first the self-hosted compiler (running on the
 * Truffle interpreter) compiles the standard library and its own sources and
 * links them into a native {@code Driver} executable — the <em>bootstrapped</em>
 * compiler. Then that native binary is used to compile every program under
 * {@code tests/lama/compiler}; each resulting executable is run against its
 * {@code .input} and checked against the {@code .log} oracle.
 *
 * <p>The bootstrap is performed once in {@link #bootstrap()} and shared by all
 * parameterized cases.
 */
@RunWith(Parameterized.class)
public class LamaBootstrappedCompilerTest {

    private static final Path TESTS_DIR = Paths.get("testData", "correctness", "selfhosted");

    private static final List<String> STDLIB_MODULES = List.of(
            "List", "Ref", "Matcher", "Timer", "Fun", "Array", "Buffer", "Lazy",
            "Collection", "Data", "STM", "Ostap");

    private static final List<String> COMPILER_MODULES = List.of(
            "World", "Manifest", "Lexer", "Infix", "Interface", "State",
            "Builtins", "Expr", "Parser", "SM", "SMOptimizer", "X86");

    private static final List<String> IGNORED_TESTS = List.of(
            "test045"
    );

    private static final long COMPILE_TIMEOUT_SECONDS = 60;
    private static final long RUN_TIMEOUT_SECONDS = 30;

    private static Path buildDir;
    private static Path nativeDriver;

    private final Path lamaFile;
    private final Path inputFile;
    private final Path expectedFile;
    private final String testName;

    public LamaBootstrappedCompilerTest(String testName, Path lamaFile, Path inputFile, Path expectedFile) {
        this.testName = testName;
        this.lamaFile = lamaFile;
        this.inputFile = inputFile;
        this.expectedFile = expectedFile;
    }

    @Parameterized.Parameters(name = "{0}")
    public static List<Object[]> data() throws IOException {
        List<Object[]> params = new ArrayList<>();
        if (!Files.isDirectory(TESTS_DIR)) {
            return params;
        }
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(TESTS_DIR, "*.lama")) {
            for (Path lamaFile : stream) {
                String baseName = lamaFile.getFileName().toString().replace(".lama", "");
                if (IGNORED_TESTS.contains(baseName)) continue;
                Path expectedFile = lamaFile.resolveSibling(baseName + ".log");
                if (Files.exists(expectedFile)) {
                    params.add(new Object[]{
                            baseName, lamaFile, lamaFile.resolveSibling(baseName + ".input"), expectedFile});
                }
            }
        }
        params.sort(Comparator.comparing(a -> ((String) a[0])));
        return params;
    }

    @BeforeClass
    public static void bootstrap() throws Exception {
        buildDir = LamaSelfHostedDriver.createWorkDir("lama-bootstrapped-compiler-");
        String buildPath = buildDir.toAbsolutePath().toString();

        long t0 = System.nanoTime();
        for (String module : STDLIB_MODULES) {
            compileUnit(STDLIB_DIR, module, "-c", "-I", buildPath);
        }
        for (String module : COMPILER_MODULES) {
            compileUnit(COMPILER_DIR, module, "-c", "-I", buildPath);
        }
        String driverOutput = compileUnit(COMPILER_DIR, "Driver", "-I", buildPath);

        nativeDriver = buildDir.resolve("Driver");
        if (!Files.isExecutable(nativeDriver)) {
            throw new AssertionError(
                    "bootstrap did not produce a native Driver executable in " + buildDir
                            + "\n\ndriver output:\n" + driverOutput);
        }
        System.out.printf("[bootstrap] built native compiler in %s%n",
                LamaSelfHostedDriver.formatMillis(System.nanoTime() - t0));
    }

    @AfterClass
    public static void cleanup() throws IOException {
        if (buildDir != null) {
            LamaSelfHostedDriver.deleteRecursively(buildDir);
        }
    }

    @Test
    public void testBootstrappedCompiler() throws Exception {
        Path workDir = LamaSelfHostedDriver.createWorkDir("lama-bootstrapped-" + testName + "-");
        try {
            Path unitCopy = workDir.resolve(testName + ".lama");
            Files.copy(lamaFile, unitCopy, StandardCopyOption.REPLACE_EXISTING);

            long compileStart = System.nanoTime();
            String compileOutput = runNativeDriver(workDir, testName);
            long compileNs = System.nanoTime() - compileStart;

            Path executable = workDir.resolve(testName);
            if (!Files.isExecutable(executable)) {
                throw new AssertionError(
                        "bootstrapped compiler did not produce an executable for " + testName
                                + "\n\ncompiler output:\n" + compileOutput);
            }

            long runStart = System.nanoTime();
            String actualOutput =
                    LamaSelfHostedDriver.runCompiledBinary(executable, inputFile, RUN_TIMEOUT_SECONDS);
            long runNs = System.nanoTime() - runStart;

            System.out.printf("[%s] compile=%s, run=%s%n",
                    testName, LamaSelfHostedDriver.formatMillis(compileNs),
                    LamaSelfHostedDriver.formatMillis(runNs));

            Assert.assertEquals(
                    Files.readString(expectedFile, StandardCharsets.UTF_8), actualOutput);
        } finally {
            LamaSelfHostedDriver.deleteRecursively(workDir);
        }
    }

    private static String compileUnit(Path srcDir, String module, String... extraArgs) throws IOException {
        Path source = srcDir.resolve(module + ".lama");
        Assert.assertTrue("missing source unit: " + source, Files.exists(source));
        Path unitCopy = buildDir.resolve(module + ".lama");
        Files.copy(source, unitCopy, StandardCopyOption.REPLACE_EXISTING);
        return LamaSelfHostedDriver.compileWithSelfHostedDriver(buildDir, unitCopy, module, extraArgs);
    }

    private String runNativeDriver(Path workDir, String unit) throws IOException, InterruptedException {
        ProcessBuilder pb = new ProcessBuilder(
                nativeDriver.toAbsolutePath().toString(),
                unit + ".lama",
                "-I", buildDir.toAbsolutePath().toString())
                .directory(workDir.toFile())
                .redirectErrorStream(true);
        // The native Driver reads LAMA for the runtime archive and Std interface.
        pb.environment().put("LAMA", RUNTIME_DIR.toString());
        Process proc = pb.start();
        proc.getOutputStream().close();

        byte[] output = proc.getInputStream().readAllBytes();
        boolean finished = proc.waitFor(COMPILE_TIMEOUT_SECONDS, TimeUnit.SECONDS);
        if (!finished) {
            proc.destroyForcibly();
            throw new AssertionError("bootstrapped compiler timed out on " + unit);
        }
        String text = new String(output, StandardCharsets.UTF_8);
        if (proc.exitValue() != 0) {
            throw new AssertionError(
                    "bootstrapped compiler exited with status " + proc.exitValue()
                            + " for " + unit + "\n" + text);
        }
        return text;
    }
}
