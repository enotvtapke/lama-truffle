package com.oracle.truffle.lama.test.selfhsoted;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Engine;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.io.IOAccess;
import org.junit.Assert;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

final class LamaSelfHostedDriver {

    static final String LANGUAGE_ID = "lama";

    static final Path LAMA_IMPORTS_DIR = Paths.get("tests", "lama", "imports");
    static final Path COMPILER_DIR = Paths.get("tests", "lama", "compilerSrc");
    static final Path BUNDLED_RUNTIME_DIR = Paths.get("..", "runtime").toAbsolutePath().normalize();

    private static Engine engine;
    private static Source driverSource;

    private LamaSelfHostedDriver() {
    }

    /** Lazily builds the shared engine and parses {@code Driver.lama} once. */
    private static synchronized void ensureInitialized() {
        if (engine != null) {
            return;
        }
        Path driverFile = COMPILER_DIR.resolve("Driver.lama").toAbsolutePath().normalize();
        Assert.assertTrue("Driver.lama missing: " + driverFile, Files.exists(driverFile));
        try {
            driverSource = Source.newBuilder(LANGUAGE_ID, driverFile.toFile()).build();
        } catch (IOException ex) {
            throw new AssertionError("could not read Driver.lama: " + driverFile, ex);
        }
        engine = Engine.newBuilder().build();
    }

    static String compileWithSelfHostedDriver(Path workDir, Path unitFile, String label, String... extraArgs) {
        ensureInitialized();

        Path driverFile = COMPILER_DIR.resolve("Driver.lama").toAbsolutePath().normalize();
        String unitSearchPath = String.join(File.pathSeparator,
                LAMA_IMPORTS_DIR.toAbsolutePath().normalize().toString(),
                COMPILER_DIR.toAbsolutePath().normalize().toString());

        // Driver.lama drops sysargs[0] (the program name), so the input file
        // follows the driver path, then any extra flags.
        List<String> appArgs = new ArrayList<>();
        appArgs.add(driverFile.toString());
        appArgs.add(unitFile.getFileName().toString());
        appArgs.addAll(Arrays.asList(extraArgs));

        ByteArrayOutputStream captured = new ByteArrayOutputStream();
        try (Context context = Context.newBuilder(LANGUAGE_ID)
                .engine(engine)
                .out(captured)
                .err(captured)
                .currentWorkingDirectory(workDir.toAbsolutePath())
                .options(Map.of("lama.UnitSearchPath", unitSearchPath))
                .environment("LAMA", BUNDLED_RUNTIME_DIR.toString())
                .allowIO(IOAccess.ALL)
                .allowAllAccess(true)
                .arguments(LANGUAGE_ID, appArgs.toArray(new String[0]))
                .build()) {
            context.eval(driverSource);
        } catch (PolyglotException e) {
            throw new AssertionError(
                    "self-hosted compiler failed for " + label + ":\n"
                            + captured.toString(StandardCharsets.UTF_8), e);
        }
        return captured.toString(StandardCharsets.UTF_8);
    }

    static String runCompiledBinary(Path executable, Path inputFile, long timeoutSeconds)
            throws IOException, InterruptedException {
        Process proc = new ProcessBuilder(executable.toAbsolutePath().toString())
                .redirectErrorStream(false)
                .start();

        if (inputFile != null && Files.exists(inputFile)) {
            byte[] inputBytes = Files.readAllBytes(inputFile);
            try (var os = proc.getOutputStream()) {
                os.write(inputBytes);
                os.flush();
            } catch (IOException ignored) {
                // child closed stdin early — ok
            }
        } else {
            proc.getOutputStream().close();
        }

        boolean finished = proc.waitFor(timeoutSeconds, TimeUnit.SECONDS);
        if (!finished) {
            proc.destroyForcibly();
            throw new AssertionError("Compiled program timed out: " + executable);
        }
        byte[] stdout = proc.getInputStream().readAllBytes();
        byte[] stderr = proc.getErrorStream().readAllBytes();
        int exit = proc.exitValue();
        if (exit != 0) {
            throw new AssertionError(
                    "Compiled program exited with status " + exit + "\n"
                            + "stderr: " + new String(stderr, StandardCharsets.UTF_8));
        }
        return new String(stdout, StandardCharsets.UTF_8);
    }

    static double timeMillis(String driverOutput, String label) {
        for (String line : driverOutput.split("\n")) {
            int colon = line.indexOf(':');
            if (colon > 0 && line.regionMatches(true, 0, label, 0, label.length())) {
                return Double.parseDouble(line.substring(colon + 1).trim()) * 1000;
            }
        }
        throw new IllegalStateException("Cannot find value for label '%s' in:\n%s".formatted(label, driverOutput));
    }

    static Path createWorkDir(String prefix) throws IOException {
        return Files.createTempDirectory(prefix);
    }

    static String formatMillis(long nanos) {
        return String.format(Locale.ROOT, "%.1fms", nanos / 1_000_000.0);
    }

    static void deleteRecursively(Path root) throws IOException {
        if (!Files.exists(root)) {
            return;
        }
        try (var stream = Files.walk(root)) {
            stream.sorted(Comparator.reverseOrder()).forEach(p -> {
                try {
                    Files.deleteIfExists(p);
                } catch (IOException ignored) {
                }
            });
        }
    }
}
