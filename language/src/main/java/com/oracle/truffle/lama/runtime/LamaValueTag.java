package com.oracle.truffle.lama.runtime;

/**
 * The runtime category of a Lama value. The ordinal defines the canonical
 * ordering used when comparing values of different kinds (see
 * {@link LamaComparisonHashingLib}).
 */
public enum LamaValueTag {
    INT, STRING, ARRAY, SEXP, CLOSURE, FOREIGN;

    public static LamaValueTag of(Object v) {
        if (v instanceof Long) {
            return INT;
        }
        if (v instanceof LamaString) {
            return STRING;
        }
        if (v instanceof LamaArray) {
            return ARRAY;
        }
        if (v instanceof LamaSExpr) {
            return SEXP;
        }
        if (v instanceof LamaFunction) {
            return CLOSURE;
        }
        return FOREIGN;
    }
}
