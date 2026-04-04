package com.oracle.truffle.sl.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class LamaBenchmarkTest {

    private static final String LAMA = "lama";
    private static final Path BENCHMARKS_DIR = Paths.get("tests", "benchmarks");
    private static final int RUNS = 5;
    private static final double MIN_SPEEDUP = 5.0;

    @Ignore
    @Test
    public void fib() throws IOException {
        runBenchmark("fib");
    }

    @Ignore
    @Test
    public void fact() throws IOException {
        runBenchmark("fact");
    }

    @Test
    public void bubbleSort() throws IOException {
        runBenchmark("bubble-sort");
    }

    private void runBenchmark(String name) throws IOException {
        Path programFile = BENCHMARKS_DIR.resolve(name + ".lama");
        String expectedOutput = Files.readString(
                BENCHMARKS_DIR.resolve(name + ".expected"), StandardCharsets.UTF_8);
        Source source = Source.newBuilder(LAMA, programFile.toFile()).build();

        double compiledMs = measureAvg(source, expectedOutput, true);
        double interpretedMs = measureAvg(source, expectedOutput, false);

        double speedup = interpretedMs / compiledMs;
        System.out.printf("[%s] Compiled:    %.1f ms%n", name, compiledMs);
        System.out.printf("[%s] Interpreted: %.1f ms%n", name, interpretedMs);
        System.out.printf("[%s] Speedup:     %.1fx%n", name, speedup);

        Assert.assertTrue(
                String.format("Expected at least %.0fx speedup for %s, got %.1fx",
                        MIN_SPEEDUP, name, speedup),
                speedup >= MIN_SPEEDUP
        );
    }

    private double measureAvg(Source source, String expectedOutput, boolean compiled) {
        long totalNs = 0;
        for (int i = 0; i < RUNS; i++) {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            try (Context context = Context.newBuilder(LAMA)
                    .out(out)
                    .allowExperimentalOptions(true)
                    .option("engine.Compilation", String.valueOf(compiled))
                    .build()) {

                long start = System.nanoTime();
                context.eval(source);
                totalNs += System.nanoTime() - start;

                Assert.assertEquals(expectedOutput, out.toString(StandardCharsets.UTF_8));
            }
        }
        return (double) totalNs / RUNS / 1_000_000.0;
    }
}
