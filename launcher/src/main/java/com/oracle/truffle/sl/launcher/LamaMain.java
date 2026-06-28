package com.oracle.truffle.sl.launcher;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.Value;
import org.graalvm.polyglot.io.IOAccess;
import picocli.CommandLine;
import picocli.CommandLine.Command;
import picocli.CommandLine.Option;
import picocli.CommandLine.Parameters;
import picocli.CommandLine.Spec;
import picocli.CommandLine.Unmatched;
import picocli.CommandLine.Model.CommandSpec;

import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.*;
import java.util.concurrent.Callable;

@Command(name = "lama", mixinStandardHelpOptions = false, sortOptions = false, //
                description = "Run a Lama program on the GraalVM Truffle interpreter.%n" +
                                "When no input file is given, the program is read from standard input.", //
                footer = {"%nGraalVM polyglot options of the form --<group>.<option>[=<value>] " +
                                "(for example --lama.UnitSearchPath=..., --engine.TraceCompilation, " +
                                "--compiler.InlineAcrossTruffleBoundary) are forwarded to the polyglot context."})
public final class LamaMain implements Callable<Integer> {

    private static final String LAMA = "lama";

    @Spec CommandSpec spec;

    @Option(names = "-I", paramLabel = "<path>", description = "Add <path> to the Lama unit search path list (repeatable).")
    private List<String> includeDirs = new ArrayList<>();

    @Option(names = "--args", paramLabel = "\"<a1> <a2> ...\"", description = "Pass whitespace-separated args to the Lama program (sysargs).")
    private String programArgsString;

    @Option(names = "--disable-launcher-output", description = "Suppress the launcher's own diagnostic output.")
    private boolean disableLauncherOutput;

    @Option(names = {"-h", "--help"}, usageHelp = true, description = "Show this help message and exit.")
    private boolean helpRequested;

    @Parameters(index = "0", arity = "0..1", paramLabel = "<input file>", description = "Lama source file to execute.")
    private String file;

    /**
     * Captures everything picocli does not recognize. GraalVM-style polyglot
     * options (e.g. {@code --lama.X}, {@code --engine.X}, {@code --compiler.X})
     * are forwarded to the {@link Context.Builder}; anything else is reported as
     * an error.
     */
    @Unmatched
    private List<String> unmatched = new ArrayList<>();

    /**
     * The main entry point.
     */
    public static void main(String[] args) {
        int exitCode = new CommandLine(new LamaMain()).setUnmatchedArgumentsAllowed(true).execute(args);
        System.exit(exitCode);
    }

    @Override
    public Integer call() {
        Map<String, String> options = new HashMap<>();
        if (!collectForwardedOptions(options)) {
            return 1;
        }

        List<String> unitSearchPaths = new ArrayList<>(includeDirs);

        Source source;
        try {
            if (file == null) {
                source = Source.newBuilder(LAMA, new InputStreamReader(System.in), "<stdin>").interactive(true).build();
            } else {
                File inputFile = new File(file);
                File parent = inputFile.getAbsoluteFile().getParentFile();
                if (parent != null) {
                    unitSearchPaths.add(parent.getAbsolutePath());
                }
                source = Source.newBuilder(LAMA, inputFile).interactive(false).build();
            }
        } catch (java.io.IOException e) {
            System.err.println("Cannot read input '" + (file == null ? "<stdin>" : file) + "': " + e.getMessage());
            return 1;
        }

        String unitSearchPathOption = buildUnitSearchPathOption(unitSearchPaths, options.get("lama.UnitSearchPath"));
        if (!unitSearchPathOption.isEmpty()) {
            options.put("lama.UnitSearchPath", unitSearchPathOption);
        }

        List<String> programArgs = new ArrayList<>();
        if (programArgsString != null) {
            programArgs.add(file == null ? "<stdin>" : file);
            programArgs.addAll(splitArgString(programArgsString));
        }

        return executeSource(source, System.in, System.out, options, !disableLauncherOutput, programArgs.toArray(new String[]{}));
    }

    /**
     * Splits the {@link #unmatched} arguments into forwarded polyglot options
     * and genuinely unknown arguments. Returns {@code false} (after printing the
     * usage message) if any unknown argument is encountered.
     */
    private boolean collectForwardedOptions(Map<String, String> options) {
        boolean ok = true;
        for (String arg : unmatched) {
            if (arg.startsWith("--") && arg.length() > 2) {
                String body = arg.substring(2);
                int eqIdx = body.indexOf('=');
                String key = eqIdx < 0 ? body : body.substring(0, eqIdx);
                String value = eqIdx < 0 ? "true" : body.substring(eqIdx + 1);
                // Only forward grouped, GraalVM-style options (e.g. lama.X, engine.X, compiler.X).
                if (key.indexOf('.') > 0) {
                    options.put(key, value);
                    continue;
                }
            }
            System.err.println("Unknown argument: " + arg);
            ok = false;
        }
        if (!ok) {
            spec.commandLine().usage(System.err);
        }
        return ok;
    }

    private static List<String> splitArgString(String raw) {
        if (raw.isEmpty()) {
            return List.of();
        }
        String[] parts = raw.trim().split("\\s+");
        if (parts.length == 1 && parts[0].isEmpty()) {
            return List.of();
        }
        return Arrays.asList(parts);
    }

    private static int executeSource(Source source, InputStream in, PrintStream out, Map<String, String> options, boolean launcherOutput, String[] appArgs) {
        Context context;
        PrintStream err = System.err;
        try {
            context = Context.newBuilder(LAMA).in(in).out(out).options(options).allowIO(IOAccess.ALL).allowAllAccess(true).arguments("lama", appArgs).build();
        } catch (IllegalArgumentException e) {
            err.println(e.getMessage());
            return 1;
        }

        if (launcherOutput) {
            out.println("== running on " + context.getEngine());
        }

        try {
            Value result = context.eval(source);
            if (launcherOutput) {
                out.println(result);
            }
            return 0;
        } catch (PolyglotException ex) {
            if (ex.isInternalError()) {
                ex.printStackTrace();
            } else {
                err.printf("%s at %s", ex.getMessage(), ex.getSourceLocation());
            }
            return 1;
        } finally {
            context.close();
        }
    }

    private static String buildUnitSearchPathOption(List<String> unitSearchPaths, String forwarded) {
        List<String> all = new ArrayList<>(unitSearchPaths);
        if (forwarded != null && !forwarded.isEmpty()) {
            all.addAll(Arrays.asList(forwarded.split(File.pathSeparator)));
        }
        return String.join(File.pathSeparator, new LinkedHashSet<>(all));
    }

}
