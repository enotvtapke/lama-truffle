package com.oracle.truffle.sl.launcher;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.Value;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

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

        System.exit(executeSource(source, System.in, System.out, options, launcherOutput));
    }

    private static int executeSource(Source source, InputStream in, PrintStream out, Map<String, String> options, boolean launcherOutput) {
        Context context;
        PrintStream err = System.err;
        try {
            context = Context.newBuilder(LAMA).in(in).out(out).options(options).allowAllAccess(true).build();
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
                // for internal errors we print the full stack trace
                ex.printStackTrace();
            } else {
                err.println(ex.getMessage());
            }
            return 1;
        } finally {
            context.close();
        }
    }

    private static String buildUnitSearchPathOption(List<String> unitSearchPaths) {
        return String.join(File.pathSeparator, new LinkedHashSet<>(unitSearchPaths));
    }

    private static void printUsage(PrintStream err) {
        err.println("Usage: LamaMain <options> <input file>");
        err.println("When no options are specified, interprets the input file.");
        err.println("Options:");
        err.println("  -I <path>       --- add <path> into unit search path list");
        err.println("  --disable-launcher-output");
    }

}
