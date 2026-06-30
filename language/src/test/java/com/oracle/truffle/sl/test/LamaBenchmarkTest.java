package com.oracle.truffle.sl.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.Value;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class LamaBenchmarkTest {

    private static final String LAMA = "lama";
    private static final Path BENCHMARKS_DIR = Paths.get("tests", "benchmarks");
    private static final int WARMUP = 3;
    private static final int RUNS = 5;
    private static final int INTERP_RUNS = 2;
    private static final double MIN_SPEEDUP = 10.0;

    @Test
    public void fib() throws IOException {
        runBenchmark("fib");
    }

    @Test
    public void fact() throws IOException {
        runBenchmark("fact");
    }

    @Test
    public void bubbleSort() throws IOException {
        runBenchmark("bubbleSort", 5);
    }

    @Test
    public void sieve() throws IOException {
        runBenchmark("sieve");
    }

    @Test
    public void matrixMul() throws IOException {
        runBenchmark("matrixMul", 1.5);
    }

    @Test
    public void higherOrder() throws IOException {
        runBenchmark("higherOrder");
    }

    @Test
    public void sexpEval() throws IOException {
        runBenchmark("sexpEval");
    }

    @Test
    public void ackermann() throws IOException {
        runBenchmark("ackermann");
    }

    private void runBenchmark(String name) throws IOException {
        runBenchmark(name, MIN_SPEEDUP);
    }

    private void runBenchmark(String name, double expectedSpeedup) throws IOException {
        Path programFile = BENCHMARKS_DIR.resolve(name + ".lama");
        long expected = Long.parseLong(
                Files.readString(BENCHMARKS_DIR.resolve(name + ".expected"), StandardCharsets.UTF_8).trim());
        Source source = Source.newBuilder(LAMA, programFile.toFile()).build();

        double compiledMs = measureAvg(source, expected, true);
        System.out.printf("[%s] Compiled:    %.1f ms%n", name, compiledMs);
        double interpretedMs = measureAvg(source, expected, false);

        double speedup = interpretedMs / compiledMs;
        System.out.printf("[%s] Interpreted: %.1f ms%n", name, interpretedMs);
        System.out.printf("[%s] Speedup:     %.1fx%n", name, speedup);

        Assert.assertTrue(
                String.format("Expected at least %.0fx speedup for %s, got %.1fx", expectedSpeedup, name, speedup),
                speedup >= expectedSpeedup
        );
    }

    private double measureAvg(Source source, long expected, boolean compiled) {
        int warmup = compiled ? WARMUP : 0;
        int runs = compiled ? RUNS : INTERP_RUNS;
        try (Context context = Context.newBuilder(LAMA)
                .out(OutputStream.nullOutputStream())
                .err(OutputStream.nullOutputStream())
                .allowExperimentalOptions(true)
                .option("engine.Compilation", String.valueOf(compiled))
                .build()) {

            Value bench = context.eval(source);
            Assert.assertTrue(
                    "benchmark must end with a no-arg entry function as its final expression",
                    bench.canExecute());

            for (int i = 0; i < warmup; i++) {
                Assert.assertEquals(expected, bench.execute().asLong());
            }

            long totalNs = 0;
            for (int i = 0; i < runs; i++) {
                long start = System.nanoTime();
                Value result = bench.execute();
                totalNs += System.nanoTime() - start;
                Assert.assertEquals(expected, result.asLong());
            }
            return (double) totalNs / runs / 1_000_000.0;
        }
    }
}
