package com.oracle.truffle.sl.test;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.stream.Stream;

/**
 * Runs the self-hosted Lama compiler over the real benchmark programs under
 * {@code tests/benchmarks} — the same {@code .lama} files exercised by
 * {@link LamaBenchmarkTest} — one JUnit case per benchmark.
 *
 * <p>The benchmarks end with the bare entry function {@code bench} (so
 * {@link LamaBenchmarkTest} can call it through the polyglot API); a native
 * binary instead needs to actually <em>invoke</em> it, so the trailing
 * {@code bench} is rewritten to {@code write (bench ())}. Each benchmark keeps
 * its arithmetic within 31 bits (via modulo), so the native (31-bit) result
 * equals the {@code .expected} 64-bit oracle and is asserted.
 *
 * <p>The benchmark names are valid Lama identifiers (the self-hosted compiler
 * names the compilation unit after the input file). The compile/run pipeline
 * and shared compiler engine live in {@link LamaSelfHostedDriver}.
 */
@RunWith(Parameterized.class)
public class LamaSelfHostedSuiteBenchmarkTest {

    private static final Path BENCHMARKS_DIR = Paths.get("tests", "benchmarks");
    private static final long RUN_TIMEOUT_SECONDS = 120;

    private final String name;

    public LamaSelfHostedSuiteBenchmarkTest(String name) {
        this.name = name;
    }

    @Parameterized.Parameters(name = "{0}")
    public static Collection<Object[]> data() throws IOException {
        List<Object[]> params = new ArrayList<>();
        if (!Files.isDirectory(BENCHMARKS_DIR)) {
            return params;
        }
        try (Stream<Path> files = Files.list(BENCHMARKS_DIR)) {
            files.map(p -> p.getFileName().toString())
                    .filter(f -> f.endsWith(".lama"))
                    .map(f -> f.substring(0, f.length() - ".lama".length()))
                    .sorted()
                    .forEach(n -> params.add(new Object[]{n}));
        }
        return params;
    }

    @Test
    public void benchmark() throws Exception {
        Path workDir = LamaSelfHostedDriver.createWorkDir("lama-suite-bench-" + name + "-");
        try {
            String runnable = toRunnableSource(
                    Files.readString(BENCHMARKS_DIR.resolve(name + ".lama"), StandardCharsets.UTF_8));
            Path unitFile = workDir.resolve(name + ".lama");
            Files.writeString(unitFile, runnable, StandardCharsets.UTF_8);

            long t0 = System.nanoTime();
            String driverOutput = LamaSelfHostedDriver.compileWithSelfHostedDriver(workDir, unitFile, name, "-dt");
            long compileNs = System.nanoTime() - t0;

            Path executable = workDir.resolve(name);
            Assert.assertTrue(
                    "self-hosted compiler produced no executable for " + name + ":\n" + driverOutput,
                    Files.isExecutable(executable));

            long r0 = System.nanoTime();
            String result = LamaSelfHostedDriver.runCompiledBinary(executable, null, RUN_TIMEOUT_SECONDS).trim();
            long runNs = System.nanoTime() - r0;

            System.out.printf(Locale.ROOT, "[%s] parse=%.4fs compile=%s run=%s result=%s%n",
                    name, LamaSelfHostedDriver.parseParsingTime(driverOutput),
                    LamaSelfHostedDriver.formatMillis(compileNs), LamaSelfHostedDriver.formatMillis(runNs), result);

            Assert.assertEquals("wrong result for " + name, expectedOf(name), result);
        } finally {
            LamaSelfHostedDriver.deleteRecursively(workDir);
        }
    }

    // ------------------------------------------------------------------
    // Benchmark source rewriting
    // ------------------------------------------------------------------

    /**
     * Rewrites a benchmark whose final top-level expression is the bare entry
     * function {@code bench} into one that actually invokes it and prints the
     * result, so the compiled native binary performs the work and produces
     * verifiable output.
     */
    private static String toRunnableSource(String source) {
        String trimmed = source.stripTrailing();
        Assert.assertTrue("benchmark must end with a standalone `bench` entry expression",
                trimmed.endsWith("\nbench") || trimmed.equals("bench"));
        String head = trimmed.substring(0, trimmed.length() - "bench".length());
        return head + "write (bench ())\n";
    }

    private static String expectedOf(String name) throws IOException {
        return Files.readString(BENCHMARKS_DIR.resolve(name + ".expected"), StandardCharsets.UTF_8).trim();
    }
}
