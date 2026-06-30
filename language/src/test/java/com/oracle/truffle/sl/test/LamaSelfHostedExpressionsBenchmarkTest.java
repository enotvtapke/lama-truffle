package com.oracle.truffle.sl.test;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

/**
 * Benchmarks the self-hosted Lama compiler on synthetic arithmetic-expression
 * programs of growing size, one JUnit case per size.
 *
 * <p>For each size it generates a balanced arithmetic expression (logarithmic
 * nesting depth) {@code y := <expr>; write(y)}, compiles it with the self-hosted
 * compiler in {@code Build} mode (passing {@code -dt} so the compiler reports its
 * own parsing time), runs the produced 32-bit native executable, and checks its
 * output equals the value computed independently here in Java.
 *
 * <p>The compile/run pipeline and shared compiler engine live in
 * {@link LamaSelfHostedDriver}.
 */
@RunWith(Parameterized.class)
public class LamaSelfHostedExpressionsBenchmarkTest {

    /** Expression sizes (number of leaf terms) to benchmark. */
    private static final int[] SIZES = {100, 250, 500, 1000, 2000, 4000, 8000};

    /** The native runtime uses 31-bit tagged integers, so keep |value| < 2^30. */
    private static final long INT_LIMIT = 1L << 30;

    private static final long RUN_TIMEOUT_SECONDS = 60;

    private final int size;
    private final String exprString;
    private final long expectedValue;

    public LamaSelfHostedExpressionsBenchmarkTest(int size, String exprString, long expectedValue) {
        this.size = size;
        this.exprString = exprString;
        this.expectedValue = expectedValue;
    }

    @Parameterized.Parameters(name = "size={0}")
    public static Collection<Object[]> data() {
        List<Object[]> params = new ArrayList<>();
        for (int n : SIZES) {
            Expr e = genExpr(n);
            // Skip sizes whose value would overflow the native 31-bit integers.
            if (Math.abs(e.value) < INT_LIMIT) {
                params.add(new Object[]{n, e.string, e.value});
            }
        }
        return params;
    }

    @Test
    public void benchmarkArithmeticExpression() throws Exception {
        Path workDir = LamaSelfHostedDriver.createWorkDir("lama-expr-bench-" + size + "-");
        try {
            String name = "benchexpr" + size;
            Path unitFile = workDir.resolve(name + ".lama");
            Files.writeString(unitFile, "var y;\ny := " + exprString + ";\nwrite(y)\n", StandardCharsets.UTF_8);

            long t0 = System.nanoTime();
            String driverOutput = LamaSelfHostedDriver.compileWithSelfHostedDriver(workDir, unitFile, name, "-dt");
            long compileNs = System.nanoTime() - t0;

            Path executable = workDir.resolve(name);
            Assert.assertTrue(
                    "self-hosted compiler produced no executable for size " + size
                            + " (gcc link step failed?):\n" + driverOutput,
                    Files.isExecutable(executable));

            long r0 = System.nanoTime();
            String out = LamaSelfHostedDriver.runCompiledBinary(executable, null, RUN_TIMEOUT_SECONDS).trim();
            long runNs = System.nanoTime() - r0;

            System.out.printf(Locale.ROOT,
                    "[expr size=%d depth=%d] parse=%.1f ms compile=%s run=%s result=%s%n",
                    size, parenDepth(exprString), LamaSelfHostedDriver.parseParsingTime(driverOutput),
                    LamaSelfHostedDriver.formatMillis(compileNs), LamaSelfHostedDriver.formatMillis(runNs), out);

            Assert.assertEquals("wrong result for size " + size, Long.toString(expectedValue), out);
        } finally {
            LamaSelfHostedDriver.deleteRecursively(workDir);
        }
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
}
