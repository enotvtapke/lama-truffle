package com.oracle.truffle.lama.test.selfhsoted;

import org.junit.Assert;
import org.junit.Assume;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

import static com.oracle.truffle.lama.test.LamaInterpreterTest.STDLIB_DIR;
import static com.oracle.truffle.lama.test.selfhsoted.LamaSelfHostedDriver.COMPILER_DIR;
import static com.oracle.truffle.lama.test.selfhsoted.LamaSelfHostedDriver.RUNTIME_DIR;

/**
 * Bootstrap benchmark, native variant: the self-hosted Lama compiler compiled
 * to a native binary by {@code lamac} ({@code lama/src/lama-impl}) compiles the
 * whole standard library and then its own sources — i.e. the compiler compiling
 * itself.
 *
 * <p>The Truffle sibling ({@link LamaSelfHostedCompilerBootstrappingBenchmarkTest})
 * measures the same work while the compiler runs on the Truffle interpreter;
 * this one measures the {@code lamac}-native compiler. Every module is compiled
 * in {@code -c} (compile-only) mode with timing enabled ({@code -dt}); imports
 * resolve from the checked-in interface files on the unit search path, so each
 * module compiles independently. We report the driver's own parse / stack-machine
 * / x86 phase timings plus wall-clock per module, and a grand total.
 *
 * <p>Requires the native compiler and a 32-bit toolchain; if either is missing
 * (and {@code lama-impl} cannot be built) the test is skipped rather than failed.
 */
public class LamaLamacCompilerBootstrappingBenchmarkTest {
    private static final List<String> STDLIB_MODULES = List.of(
            "List", "Ref", "Matcher", "Timer", "Fun", "Array", "Buffer", "Lazy",
            "Collection", "Data", "STM", "Ostap");

    private static final List<String> COMPILER_MODULES = List.of(
            "World", "Manifest", "Lexer", "Infix", "Interface", "State",
            "Builtins", "Expr", "Parser", "SM", "SMOptimizer", "X86", "Driver");

    /** Give the native compiler this long to compile a single module. */
    private static final long COMPILE_TIMEOUT_SECONDS = 120;

    /** The lamac-built native compiler; null when unavailable. */
    private static Path compilerBinary;
    private static String skipReason;

    /** Accumulated per-phase milliseconds across all compiled modules. */
    private double totalWall;
    private double totalParse;
    private double totalSm;
    private double totalX86;

    @BeforeClass
    public static void ensureNativeCompiler() throws Exception {
        if (!gccMultilibWorks()) {
            skipReason = "gcc with -m32 support is required but not functional "
                    + "(install e.g. gcc-multilib)";
            return;
        }
        Path binary = COMPILER_DIR.toAbsolutePath().normalize().resolve("lama-impl");
        if (!Files.isExecutable(binary) && commandAvailable("lamac", "-v")) {
            // Not built yet — build it once (compiles lama/src with lamac and
            // links it against the patched 64-bit runtime via link.sh).
            runMake(COMPILER_DIR);
        }
        if (!Files.isExecutable(binary)) {
            skipReason = "native compiler not found and could not be built: " + binary
                    + " (build it with: make -C lama/src)";
            return;
        }
        compilerBinary = binary;
    }

    @Test
    public void bootstrap() throws Exception {
        Assume.assumeTrue(skipReason, skipReason == null);

        Path workDir = LamaSelfHostedDriver.createWorkDir("lama-lamac-bootstrap-");
        try {
            System.out.printf(Locale.ROOT, "%n%-14s %10s %10s %10s %10s%n",
                    "module", "parse", "sm", "x86", "wall");
            System.out.println("-".repeat(58));

            System.out.println("[standard library]");
            for (String module : STDLIB_MODULES) {
                compileModule(workDir, STDLIB_DIR, module);
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
     * compiles it with the native compiler in compile-only mode, asserts an
     * object file was produced, and records the timing.
     */
    private void compileModule(Path workDir, Path srcDir, String module) throws Exception {
        Path source = srcDir.resolve(module + ".lama");
        Assert.assertTrue("missing source unit: " + source, Files.exists(source));
        Path unitCopy = workDir.resolve(module + ".lama");
        Files.copy(source, unitCopy, StandardCopyOption.REPLACE_EXISTING);

        String importsPath = STDLIB_DIR.toAbsolutePath().normalize().toString();
        String compilerPath = COMPILER_DIR.toAbsolutePath().normalize().toString();

        long t0 = System.nanoTime();
        String driverOutput = runNativeCompiler(workDir,
                module + ".lama", "-c", "-dt", "-I", importsPath, "-I", compilerPath);
        double wallMs = (System.nanoTime() - t0) / 1_000_000.0;

        Path objectFile = workDir.resolve(module + ".o");
        Assert.assertTrue(
                "native compiler produced no object file for " + module + ":\n" + driverOutput,
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

    /** Runs the native compiler in {@code workDir}, returning its combined stdout/stderr. */
    private String runNativeCompiler(Path workDir, String... args) throws IOException, InterruptedException {
        String[] cmd = new String[args.length + 1];
        cmd[0] = compilerBinary.toString();
        System.arraycopy(args, 0, cmd, 1, args.length);

        ProcessBuilder pb = new ProcessBuilder(cmd)
                .directory(workDir.toFile())
                .redirectErrorStream(true);
        // The native compiler reads LAMA for the runtime archive and Std interface.
        pb.environment().put("LAMA", RUNTIME_DIR.toString());
        Process proc = pb.start();
        proc.getOutputStream().close();

        byte[] output = proc.getInputStream().readAllBytes();
        boolean finished = proc.waitFor(COMPILE_TIMEOUT_SECONDS, TimeUnit.SECONDS);
        String text = new String(output, StandardCharsets.UTF_8);
        if (!finished) {
            proc.destroyForcibly();
            throw new AssertionError("native compiler timed out\n" + text);
        }
        if (proc.exitValue() != 0) {
            throw new AssertionError(
                    "native compiler exited with status " + proc.exitValue() + "\n" + text);
        }
        return text;
    }

    // --- toolchain probes -------------------------------------------------

    private static boolean commandAvailable(String... cmd) {
        try {
            Process p = new ProcessBuilder(cmd).redirectErrorStream(true).start();
            p.getInputStream().readAllBytes();
            return p.waitFor(15, TimeUnit.SECONDS) && p.exitValue() == 0;
        } catch (IOException | InterruptedException e) {
            if (e instanceof InterruptedException) Thread.currentThread().interrupt();
            return false;
        }
    }

    private static boolean gccMultilibWorks() {
        try {
            Path tmpC = Files.createTempFile("lama-probe-", ".c");
            Path tmpBin = Files.createTempFile("lama-probe-", "");
            try {
                Files.writeString(tmpC, "int main(void){return 0;}", StandardCharsets.UTF_8);
                Process p = new ProcessBuilder("gcc", "-m32", "-o", tmpBin.toString(), tmpC.toString())
                        .redirectErrorStream(true).start();
                boolean finished = p.waitFor(15, TimeUnit.SECONDS);
                return finished && p.exitValue() == 0;
            } finally {
                Files.deleteIfExists(tmpC);
                Files.deleteIfExists(tmpBin);
            }
        } catch (IOException | InterruptedException e) {
            if (e instanceof InterruptedException) Thread.currentThread().interrupt();
            return false;
        }
    }

    private static void runMake(Path dir) {
        try {
            Process p = new ProcessBuilder("make", "-C", dir.toAbsolutePath().normalize().toString())
                    .redirectErrorStream(true).start();
            p.getInputStream().readAllBytes();
            p.waitFor(10, TimeUnit.MINUTES);
        } catch (IOException | InterruptedException e) {
            if (e instanceof InterruptedException) Thread.currentThread().interrupt();
            // Leave lama-impl absent; the caller will skip with a clear message.
        }
    }
}
