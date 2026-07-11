package com.oracle.truffle.sl.test;

import org.junit.Assert;
import org.junit.Test;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Locale;

/**
 * Bootstrap benchmark: the self-hosted Lama compiler (running on the Truffle
 * interpreter) compiles the whole standard library and then its own sources —
 * i.e. the compiler compiling itself.
 *
 * <p>Every module is compiled in {@code -c} (compile-only) mode with timing
 * enabled ({@code -dt}); imports are resolved from the checked-in interface
 * files on the unit search path, so each module can be compiled independently.
 * For every module we report the wall-clock time spent inside the interpreter
 * plus the driver's own parse / stack-machine / x86 phase timings, and a grand
 * total at the end.
 */
public class LamaBootstrappedCompilerBenchmarkTest {

    private static final Path IMPORTS_DIR = Paths.get("tests", "lama", "imports");
    private static final Path COMPILER_DIR = Paths.get("tests", "lama", "compilerSrc");

    private static final List<String> STDLIB_MODULES = List.of(
            "List", "Ref", "Matcher", "Timer", "Fun", "Array", "Buffer", "Lazy",
            "Collection", "Data", "STM", "Ostap");

    private static final List<String> COMPILER_MODULES = List.of(
            "World", "Manifest", "Lexer", "Infix", "Interface", "State",
            "Builtins", "Expr", "Parser", "SM", "SMOptimizer", "X86", "Driver");

    /** Accumulated per-phase milliseconds across all compiled modules. */
    private double totalWall;
    private double totalParse;
    private double totalSm;
    private double totalX86;

    @Test
    public void bootstrap() throws Exception {
        Path workDir = LamaSelfHostedDriver.createWorkDir("lama-bootstrap-");
        try {
            System.out.printf(Locale.ROOT, "%n%-14s %10s %10s %10s %10s%n",
                    "module", "parse", "sm", "x86", "wall");
            System.out.println("-".repeat(58));

            System.out.println("[standard library]");
            for (String module : STDLIB_MODULES) {
                compileModule(workDir, IMPORTS_DIR, module);
            }

            System.out.println("[self-hosted compiler]");
            for (String module : COMPILER_MODULES) {
                compileModule(workDir, COMPILER_DIR, module);
            }

            System.out.println("-".repeat(58));
            int modules = STDLIB_MODULES.size() + COMPILER_MODULES.size();
            System.out.printf(Locale.ROOT, "%-14s %9.1fms %9.1fms %9.1fms %9.1fms%n",
                    "TOTAL (" + modules + ")", totalParse, totalSm, totalX86, totalWall);
        } finally {
            LamaSelfHostedDriver.deleteRecursively(workDir);
        }
    }

    /**
     * Copies {@code <srcDir>/<module>.lama} into the shared work directory,
     * compiles it with the self-hosted driver in compile-only mode, asserts an
     * object file was produced, and records the timing.
     */
    private void compileModule(Path workDir, Path srcDir, String module) throws Exception {
        Path source = srcDir.resolve(module + ".lama");
        Assert.assertTrue("missing source unit: " + source, Files.exists(source));
        Path unitCopy = workDir.resolve(module + ".lama");
        Files.copy(source, unitCopy, StandardCopyOption.REPLACE_EXISTING);

        String importsPath = IMPORTS_DIR.toAbsolutePath().normalize().toString();
        String compilerPath = COMPILER_DIR.toAbsolutePath().normalize().toString();

        long t0 = System.nanoTime();
        String driverOutput = LamaSelfHostedDriver.compileWithSelfHostedDriver(
                workDir, unitCopy, module, "-c", "-dt", "-I", importsPath, "-I", compilerPath);
        double wallMs = (System.nanoTime() - t0) / 1_000_000.0;

        Path objectFile = workDir.resolve(module + ".o");
        Assert.assertTrue(
                "self-hosted compiler produced no object file for " + module + ":\n" + driverOutput,
                Files.exists(objectFile));

        double parseMs = LamaSelfHostedDriver.timeMillis(driverOutput, "Parsing time");
        double smMs = LamaSelfHostedDriver.timeMillis(driverOutput, "SM compile time");
        double x86Ms = LamaSelfHostedDriver.timeMillis(driverOutput, "X86 compile time");

        totalWall += wallMs;
        totalParse += parseMs;
        totalSm += smMs;
        totalX86 += x86Ms;

        System.out.printf(Locale.ROOT, "%-14s %9.1fms %9.1fms %9.1fms %9.1fms%n",
                module, parseMs, smMs, x86Ms, wallMs);
    }
}
