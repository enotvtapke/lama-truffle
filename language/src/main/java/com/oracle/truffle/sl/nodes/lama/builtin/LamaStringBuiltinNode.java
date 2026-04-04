package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;
import com.oracle.truffle.sl.runtime.lama.LamaString;

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
        return LamaString.from(stringifyString(value));
    }

    @Specialization
    @TruffleBoundary
    public LamaString doArray(LamaArray value) {
        return LamaString.from( stringifyArray(value));
    }

    @Specialization
    @TruffleBoundary
    public LamaString doSExpr(LamaSExpr value) {
        return LamaString.from(stringifySExpr(value));
    }

    @Specialization
    @TruffleBoundary
    public LamaString doFunction(LamaFunction value) {
        return LamaString.from(stringifyFunction(value));
    }

    @Fallback
    @TruffleBoundary
    public LamaString doGeneric(Object value) {
        return LamaString.from(String.valueOf(value));
    }

    private static String stringify(Object value) {
        if (value instanceof Long l) {
            return Long.toString(l);
        } else if (value instanceof LamaString s) {
            return stringifyString(s);
        } else if (value instanceof LamaArray a) {
            return stringifyArray(a);
        } else if (value instanceof LamaSExpr s) {
            return stringifySExpr(s);
        } else if (value instanceof LamaFunction) {
            return stringifyFunction((LamaFunction) value);
        }
        return String.valueOf(value);
    }

    private static String stringifyString(LamaString value) {
        return "\"" + value.toString() + "\"";
    }

    private static String stringifyArray(LamaArray value) {
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < value.getSize(); i++) {
            if (i > 0) sb.append(", ");
            sb.append(stringify(value.readElement(i)));
        }
        sb.append("]");
        return sb.toString();
    }

    private static String stringifyFunction(LamaFunction value) {
        return "<closure " + value + ">";
    }

    private static String stringifySExpr(LamaSExpr sexpr) {
        if (sexpr.elements.length == 0) {
            return sexpr.tag;
        }
        StringBuilder sb = new StringBuilder(sexpr.tag);
        sb.append(" (");
        for (int i = 0; i < sexpr.elements.length; i++) {
            if (i > 0) sb.append(", ");
            sb.append(stringify(sexpr.elements[i]));
        }
        sb.append(")");
        return sb.toString();
    }
}
