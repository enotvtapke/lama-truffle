package com.oracle.truffle.sl.test;

import org.junit.Assert;
import org.junit.Test;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Locale;

/**
 * Runs the self-hosted Lama compiler over the real benchmark programs under
 * {@code tests/benchmarks} — the same {@code .lama} files exercised by
 * {@link LamaBenchmarkTest}, one test method each.
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
public class LamaSelfHostedSuiteBenchmarkTest {

    private static final Path BENCHMARKS_DIR = Paths.get("tests", "benchmarks");
    private static final long RUN_TIMEOUT_SECONDS = 120;

    @Test
    public void fib() throws Exception {
        runBenchmark("fib");
    }

    @Test
    public void fact() throws Exception {
        runBenchmark("fact");
    }

    @Test
    public void bubbleSort() throws Exception {
        runBenchmark("bubbleSort");
    }

    @Test
    public void sieve() throws Exception {
        runBenchmark("sieve");
    }

    @Test
    public void matrixMul() throws Exception {
        runBenchmark("matrixMul");
    }

    @Test
    public void higherOrder() throws Exception {
        runBenchmark("higherOrder");
    }

    @Test
    public void sexpEval() throws Exception {
        runBenchmark("sexpEval");
    }

    @Test
    public void ackermann() throws Exception {
        runBenchmark("ackermann");
    }

    private void runBenchmark(String name) throws Exception {
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

            System.out.printf(Locale.ROOT,
                    "[%s] parse=%.1fms sm=%.1fms x86=%.1fms compile=%s run=%s result=%s%n",
                    name,
                    LamaSelfHostedDriver.timeMillis(driverOutput, "Parsing time"),
                    LamaSelfHostedDriver.timeMillis(driverOutput, "SM compile time"),
                    LamaSelfHostedDriver.timeMillis(driverOutput, "X86 compile time"),
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

    private static String expectedOf(String name) throws java.io.IOException {
        return Files.readString(BENCHMARKS_DIR.resolve(name + ".expected"), StandardCharsets.UTF_8).trim();
    }
}
