package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;
import com.oracle.truffle.sl.runtime.lama.LamaString;

/**
 * Mirrors the reference runtime's {@code Lstring}, which uses {@code printValue}
 * to pretty-print any Lama value. Notable differences from the naive
 * toString cascade:
 * <ul>
 *   <li>Closures are rendered as {@code <closure 0xHEX[, v1, v2, ...]>}, with
 *       the "function pointer" (our callTarget identity) printed as hex and
 *       any captured values printed recursively.</li>
 *   <li>S-expressions tagged {@code "cons"} are rendered as bracketed lists
 *       {@code {a, b, c}} (walking the linked list).</li>
 *   <li>Strings are quoted.</li>
 * </ul>
 */
@NodeInfo(shortName = "string")
public abstract class LamaStringBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public LamaString doLong(long value) {
        return LamaString.from(Long.toString(value));
    }

    @Specialization
    @TruffleBoundary
    public LamaString doString(LamaString value) {
        return LamaString.from(stringify(value));
    }

    @Specialization
    @TruffleBoundary
    public LamaString doArray(LamaArray value) {
        return LamaString.from(stringify(value));
    }

    @Specialization
    @TruffleBoundary
    public LamaString doSExpr(LamaSExpr value) {
        return LamaString.from(stringify(value));
    }

    @Specialization
    @TruffleBoundary
    public LamaString doFunction(LamaFunction value) {
        return LamaString.from(stringify(value));
    }

    @Fallback
    @TruffleBoundary
    public LamaString doGeneric(Object value) {
        return LamaString.from(String.valueOf(value));
    }

    private static String stringify(Object value) {
        StringBuilder sb = new StringBuilder();
        appendValue(sb, value);
        return sb.toString();
    }

    private static void appendValue(StringBuilder sb, Object value) {
        if (value instanceof Long l) {
            sb.append((long) l);
        } else if (value instanceof LamaString s) {
            sb.append('"').append(s.toString()).append('"');
        } else if (value instanceof LamaArray a) {
            sb.append('[');
            for (int i = 0; i < a.getSize(); i++) {
                if (i > 0) sb.append(", ");
                appendValue(sb, a.readElement(i));
            }
            sb.append(']');
        } else if (value instanceof LamaSExpr e) {
            appendSExpr(sb, e);
        } else if (value instanceof LamaFunction f) {
            appendFunction(sb, f);
        } else {
            sb.append(String.valueOf(value));
        }
    }

    private static void appendSExpr(StringBuilder sb, LamaSExpr e) {
        if ("cons".equals(e.tag) && e.elements.length == 2) {
            // Reference runtime.c printValue walks the list while the tail
            // remains a heap pointer (i.e. another cons cell) and stops on
            // any unboxed tail. The unboxed tail value itself is discarded,
            // so an improper list like cons(1, 2) renders as {1}.
            sb.append('{');
            LamaSExpr cur = e;
            boolean first = true;
            while (true) {
                if (!first) {
                    sb.append(", ");
                }
                first = false;
                appendValue(sb, cur.elements[0]);
                Object tail = cur.elements[1];
                if (tail instanceof LamaSExpr tailS && "cons".equals(tailS.tag) && tailS.elements.length == 2) {
                    cur = tailS;
                } else {
                    break;
                }
            }
            sb.append('}');
            return;
        }
        sb.append(e.tag);
        if (e.elements.length > 0) {
            sb.append(" (");
            for (int i = 0; i < e.elements.length; i++) {
                if (i > 0) sb.append(", ");
                appendValue(sb, e.elements[i]);
            }
            sb.append(')');
        }
    }

    private static void appendFunction(StringBuilder sb, LamaFunction f) {
        // In the reference the per-closure captures are printed after the
        // function pointer. Truffle snapshots the entire enclosing frame
        // (including the parent scope chain), so listing all of it would
        // not match the reference anyway — we print only the stable
        // "function pointer" portion.
        sb.append("<closure 0x");
        int ptr = f.callTarget == null ? 0 : System.identityHashCode(f.callTarget);
        sb.append(Integer.toHexString(ptr));
        sb.append('>');
    }
}
