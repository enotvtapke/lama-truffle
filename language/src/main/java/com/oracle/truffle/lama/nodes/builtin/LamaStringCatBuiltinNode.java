package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaArray;
import com.oracle.truffle.lama.runtime.LamaSExpr;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "stringcat")
public abstract class LamaStringCatBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public LamaString catLong(@SuppressWarnings("unused") long value) {
        return LamaString.from("");
    }

    @Specialization
    @TruffleBoundary
    public LamaString catString(LamaString s) {
        return LamaString.from(s.toString());
    }

    @Specialization
    @TruffleBoundary
    public LamaString catArray(LamaArray array) {
        StringBuilder sb = new StringBuilder();
        appendArray(array, sb);
        return LamaString.from(sb.toString());
    }

    @Specialization(guards = "isConsStringList(e)")
    @TruffleBoundary
    public LamaString catCons(LamaSExpr e) {
        StringBuilder sb = new StringBuilder();
        appendList(e.elements[0], sb);
        appendList(e.elements[1], sb);
        return LamaString.from(sb.toString());
    }

    @Fallback
    @TruffleBoundary
    public LamaString catInvalid(@SuppressWarnings("unused") Object value) {
        throw LamaException.create("stringcat: expected list of strings", this);
    }

    protected static boolean isConsStringList(LamaSExpr e) {
        return "cons".equals(e.tag) && e.elements.length == 2;
    }

    private static void appendArray(LamaArray array, StringBuilder sb) {
        for (int i = 0; i < array.getSize(); i++) {
            appendList(array.readElement(i), sb);
        }
    }

    private static void appendList(Object p, StringBuilder sb) {
        if (p instanceof Long l) {
        } else if (p instanceof LamaString s) {
            sb.append(s);
        } else if (p instanceof LamaArray a) {
            appendArray(a, sb);
        } else if (p instanceof LamaSExpr e) {
            if (!isConsStringList(e)) {
                throw new RuntimeException("stringcat: expected list of strings");
            }
            appendList(e.elements[0], sb);
            appendList(e.elements[1], sb);
        } else {
            throw new RuntimeException("stringcat: expected list of strings");
        }
    }
}
