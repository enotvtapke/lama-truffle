package com.oracle.truffle.lama.runtime;

import java.util.Objects;

public class LamaStringifier {
    private final StringBuilder sb = new StringBuilder();

    public String stringify(Object value) {
        sb.setLength(0);
        appendValue(value);
        return sb.toString();
    }

    private void appendValue(Object value) {
        switch (LamaValueTag.of(value)) {
            case INT, FOREIGN -> sb.append(value);
            case STRING -> sb.append('"').append(value).append('"');
            case ARRAY -> {
                LamaArray a = (LamaArray) value;
                sb.append('[');
                for (int i = 0; i < a.getSize(); i++) {
                    if (i > 0) sb.append(", ");
                    appendValue(a.readElement(i));
                }
                sb.append(']');
            }
            case SEXP -> appendSExprOrList((LamaSExpr) value);
            case CLOSURE -> appendFunction((LamaFunction) value);
        }
    }

    private static final String CONS = "cons";

    private void appendSExprOrList(LamaSExpr e) {
        if (CONS.equals(e.tag) && e.elements.length == 2) {
            int checkpoint = sb.length();
            sb.append('{');
            appendValue(e.elements[0]);
            Object cur = e.elements[1];
            while (!Objects.equals(cur, 0L)) {
                if (cur instanceof LamaSExpr sExprCur && sExprCur.tag.equals(CONS) && sExprCur.elements.length == 2) {
                    sb.append(", ");
                    appendValue(sExprCur.elements[0]);
                    cur = sExprCur.elements[1];
                } else {
                    // SExpr is not a list
                    sb.setLength(checkpoint);
                    appendSExpr(e);
                    return;
                }
            }
            sb.append('}');
        } else {
            appendSExpr(e);
        }
    }

    private void appendSExpr(LamaSExpr e) {
        sb.append(e.tag);
        if (e.elements.length > 0) {
            sb.append(" (");
            appendValue(e.elements[0]);
            for (int i = 1; i < e.elements.length; i++) {
                sb.append(", ");
                appendValue(e.elements[i]);
            }
            sb.append(')');
        }
    }

    private void appendFunction(LamaFunction f) {
        sb.append("<closure 0x");
        int ptr = f.callTarget == null ? 0 : System.identityHashCode(f.callTarget);
        sb.append(Integer.toHexString(ptr));
        sb.append('>');
    }
}
