package com.oracle.truffle.lama.test;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;

/**
 * Runs every program under {@code tests/lama/compiler} through the self-hosted
 * Lama compiler, executes the resulting native binary (feeding it the matching
 * {@code .input}) and checks its stdout against the {@code .log} oracle.
 */
@RunWith(Parameterized.class)
public class LamaSelfHostedCompilerTest {

    private static final Path TESTS_DIR = Paths.get("tests", "lama", "compiler");

    private static final List<String> IGNORED_TESTS = List.of(
            "test045"
    );

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
        Path workDir = LamaSelfHostedDriver.createWorkDir("lama-selfhost-" + testName + "-");
        try {
            Path testCopy = workDir.resolve(testName + ".lama");
            Files.copy(lamaFile, testCopy, StandardCopyOption.REPLACE_EXISTING);

            long compileStart = System.nanoTime();
            String driverOutput = LamaSelfHostedDriver.compileWithSelfHostedDriver(workDir, testCopy, testName);
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
            String actualOutput = LamaSelfHostedDriver.runCompiledBinary(executable, inputFile, RUN_TIMEOUT_SECONDS);
            long runNs = System.nanoTime() - runStart;

            System.out.printf("[%s] compile=%s, run=%s%n",
                    testName, LamaSelfHostedDriver.formatMillis(compileNs), LamaSelfHostedDriver.formatMillis(runNs));

            String expectedOutput = Files.readString(expectedFile, StandardCharsets.UTF_8);
            Assert.assertEquals(expectedOutput, actualOutput);
        } finally {
            LamaSelfHostedDriver.deleteRecursively(workDir);
        }
    }
}
