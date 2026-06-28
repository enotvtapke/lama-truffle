package com.oracle.truffle.sl.launcher;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.Value;
import org.graalvm.polyglot.io.IOAccess;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.*;

public final class LamaMain {

    private static final String LAMA = "lama";

    /**
     * The main entry point.
     */
    public static void main(String[] args) throws IOException {
        Source source;
        List<String> unitSearchPaths = new ArrayList<>();
        String file = null;
        boolean launcherOutput = true;
        List<String> explicitAppArgs = null;

        for (int i = 0; i < args.length; i++) {
            String arg = args[i];
            if (arg.equals("--disable-launcher-output")) {
                launcherOutput = false;
            } else if (arg.equals("-I")) {
                if (i + 1 >= args.length) {
                    printUsage(System.err);
                    System.exit(1);
                }
                unitSearchPaths.add(new File(args[++i]).getAbsolutePath());
            } else if (arg.equals("--args")) {
                if (i + 1 >= args.length) {
                    printUsage(System.err);
                    System.exit(1);
                }
                explicitAppArgs = splitArgString(args[++i]);
            } else if (arg.equals("-h")) {
                printUsage(System.out);
                System.exit(0);
            } else if (file == null) {
                file = arg;
            } else {
                printUsage(System.err);
                System.exit(1);
            }
        }

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

        Map<String, String> options = new HashMap<>();
        String unitSearchPathOption = buildUnitSearchPathOption(unitSearchPaths);
        if (!unitSearchPathOption.isEmpty()) {
            options.put("lama.UnitSearchPath", unitSearchPathOption);
        }

        String[] appArgs = new String[]{};
        if (explicitAppArgs != null) {
            appArgs = prepend(explicitAppArgs.toArray(new String[0]), file == null ? "-" : file);
        }

        System.exit(executeSource(source, System.in, System.out, options, launcherOutput, appArgs));
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

    public static String[] prepend(String[] original, String element) {
        String[] newArray = new String[original.length + 1]; // Create new array
        newArray[0] = element; // Place new element at the front
        System.arraycopy(original, 0, newArray, 1, original.length); // Copy old elements
        return newArray;
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

        // Lama programs — especially ones that use the Ostap parser combinators
        // or deeply recursive stdlib routines — can produce very deep Truffle
        // call stacks. Running evaluation on a dedicated Java thread with a
        // large explicit stack size insulates us from the JVM's default, which
        // on Linux is typically 512 KB–1 MB and not enough for e.g. compiling
        // anything non-trivial via the self-hosted compiler/Driver.lama.
        // Override with -J-Dlama.launcher.StackSize=<bytes> (or 0 to inherit).
        long stackSizeBytes = resolveLauncherStackSize();

        try {
            Value result = runEvalOnDedicatedThread(context, source, stackSizeBytes);
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

    private static long resolveLauncherStackSize() {
        String property = System.getProperty("lama.launcher.StackSize");
        if (property != null) {
            try {
                return Long.parseLong(property.trim());
            } catch (NumberFormatException e) {
                System.err.println("lama.launcher.StackSize: not a number, ignoring: " + property);
            }
        }
        return 64L * 1024 * 1024;
    }

    private static Value runEvalOnDedicatedThread(Context context, Source source, long stackSizeBytes) {
        if (stackSizeBytes <= 0) {
            return context.eval(source);
        }
        Object[] result = new Object[1];
        Throwable[] thrown = new Throwable[1];
        Thread worker = new Thread(null, () -> {
            try {
                result[0] = context.eval(source);
            } catch (Throwable t) {
                thrown[0] = t;
            }
        }, "lama-main", stackSizeBytes);
        worker.start();
        try {
            worker.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException("Interrupted while waiting for evaluation thread", e);
        }
        if (thrown[0] instanceof PolyglotException pe) throw pe;
        if (thrown[0] instanceof RuntimeException re) throw re;
        if (thrown[0] instanceof Error err) throw err;
        if (thrown[0] != null) throw new RuntimeException(thrown[0]);
        return (Value) result[0];
    }

    private static String buildUnitSearchPathOption(List<String> unitSearchPaths) {
        return String.join(File.pathSeparator, new LinkedHashSet<>(unitSearchPaths));
    }

    private static void printUsage(PrintStream err) {
        err.println("Usage: LamaMain <options> <input file>");
        err.println("When no options are specified, interprets the input file.");
        err.println("Options:");
        err.println("  -I <path>                --- add <path> into unit search path list");
        err.println("  --args \"<a1> <a2> ...\"   --- pass whitespace-separated args to the Lama program (sysargs)");
        err.println("  --disable-launcher-output");
    }

}
