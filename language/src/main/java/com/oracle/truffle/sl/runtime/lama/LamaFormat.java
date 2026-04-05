package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Pre-processes the Lama/C format string, adapting the few specifiers
 * that Java doesn't support natively ({@code %i}, {@code %u}) and converting
 * Lama runtime values to the Java types that {@code String.format} expects.
 */
public final class LamaFormat {

    private LamaFormat() {
    }

    private static final Pattern FORMAT_SPEC = Pattern.compile(
            "%%|%([-+#0 ]*)(\\d*)(?:\\.(\\d+))?(l)?([diouxXcs])");

    @TruffleBoundary
    public static String format(String fmt, Object[] args, int firstArgIndex) {
        StringBuilder javaFmt = new StringBuilder();
        List<Object> javaArgs = new ArrayList<>();
        int ai = firstArgIndex;
        Matcher m = FORMAT_SPEC.matcher(fmt);
        int lastEnd = 0;

        while (m.find()) {
            javaFmt.append(fmt, lastEnd, m.start());
            if (m.group().equals("%%")) {
                javaFmt.append("%%");
            } else {
                String flags = m.group(1);
                String width = m.group(2);
                String prec = m.group(3);
                char conv = m.group(5).charAt(0);
                Object arg = args[ai++];
                conv = adaptAndConvert(conv, arg, javaArgs);
                javaFmt.append('%').append(flags);
                if (width != null && !width.isEmpty()) javaFmt.append(width);
                if (prec != null) javaFmt.append('.').append(prec);
                javaFmt.append(conv);
            }
            lastEnd = m.end();
        }
        javaFmt.append(fmt, lastEnd, fmt.length());
        return String.format(Locale.ROOT, javaFmt.toString(), javaArgs.toArray());
    }

    private static char adaptAndConvert(char conv, Object arg, List<Object> javaArgs) {
        switch (conv) {
            case 'i':
                javaArgs.add(toLong(arg));
                return 'd';
            case 'd': case 'o': case 'x': case 'X':
                javaArgs.add(toLong(arg));
                return conv;
            case 'u':
                javaArgs.add(Long.toUnsignedString(toLong(arg)));
                return 's';
            case 'c':
                javaArgs.add((int) toLong(arg));
                return 'c';
            case 's':
                javaArgs.add(stringify(arg));
                return 's';
            default:
                javaArgs.add(stringify(arg));
                return 's';
        }
    }

    private static long toLong(Object raw) {
        if (raw instanceof Long l) return l;
        if (raw instanceof Integer i) return i.longValue();
        if (raw instanceof LamaString s) return Long.parseLong(s.toString().trim());
        throw new IllegalArgumentException("printf: expected numeric argument, got " + raw);
    }

    private static String stringify(Object raw) {
        if (raw instanceof LamaString s) return s.toString();
        if (raw instanceof Long l) return Long.toString(l);
        return raw.toString();
    }
}
