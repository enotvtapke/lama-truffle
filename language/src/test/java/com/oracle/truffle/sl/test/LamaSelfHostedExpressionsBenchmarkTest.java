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

@RunWith(Parameterized.class)
public class LamaSelfHostedExpressionsBenchmarkTest {

    /** Expression sizes (number of leaf terms) to benchmark. */
    private static final int[] SIZES = {100, 250, 500, 1000, 2000, 4000, 8000};

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
            params.add(new Object[]{n, e.string, e.value});
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
                    "[expr size=%d depth=%d] parse=%.1fms sm=%.1fms x86=%.1fms compile=%s run=%s result=%s%n",
                    size, parenDepth(exprString),
                    LamaSelfHostedDriver.timeMillis(driverOutput, "Parsing time"),
                    LamaSelfHostedDriver.timeMillis(driverOutput, "SM compile time"),
                    LamaSelfHostedDriver.timeMillis(driverOutput, "X86 compile time"),
                    LamaSelfHostedDriver.formatMillis(compileNs), LamaSelfHostedDriver.formatMillis(runNs), out);

            Assert.assertEquals("wrong result for size " + size, Long.toString(expectedValue), out);
        } finally {
            LamaSelfHostedDriver.deleteRecursively(workDir);
        }
    }

    private record Expr(String string, long value) { }

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
        return terms.getFirst();
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
