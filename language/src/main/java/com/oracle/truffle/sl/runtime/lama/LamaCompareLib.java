package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

/**
 * Helpers aligned with the reference Lama {@code runtime.c} (tagHash, compare, hash, clone).
 *
 * <p>Reference tag ordering comes from {@code runtime_common.h}:
 * {@code STRING_TAG=1 < ARRAY_TAG=3 < SEXP_TAG=5 < CLOSURE_TAG=7}. The
 * {@link #typeRank(Object)} helper preserves this ordering so that values of
 * different kinds compare in the same direction as in the C runtime.
 */
public final class LamaCompareLib {

    private LamaCompareLib() {
    }

    public static long flatCompare(Object p, Object q) {
        if (p instanceof Long pl) {
            if (q instanceof Long ql) {
                return pl - ql;
            }
            return -1;
        }
        if (q instanceof Long) {
            return 1;
        }
        if (p == q) {
            return 0;
        }
        return Long.compare(System.identityHashCode(p), System.identityHashCode(q));
    }

    @TruffleBoundary
    public static long compareString(LamaString a, LamaString b) {
        if (a == b) {
            return 0;
        }
        return Long.signum(a.toString().compareTo(b.toString()));
    }

    @TruffleBoundary
    public static long compareArray(LamaArray a, LamaArray b) {
        if (a == b) {
            return 0;
        }
        int la = a.getSize();
        int lb = b.getSize();
        if (la != lb) {
            return la - lb;
        }
        for (int i = 0; i < la; i++) {
            long c = compareValue(a.readElement(i), b.readElement(i));
            if (c != 0) {
                return c;
            }
        }
        return 0;
    }

    @TruffleBoundary
    public static long compareSExpr(LamaSExpr a, LamaSExpr b) {
        if (a == b) {
            return 0;
        }
        long tagHa = LamaHashLib.tagHash(a.tag);
        long tagHb = LamaHashLib.tagHash(b.tag);
        if (tagHa != tagHb) {
            return tagHa - tagHb;
        }
        int la = a.elements.length;
        int lb = b.elements.length;
        if (la != lb) {
            return la - lb;
        }
        for (int i = 0; i < la; i++) {
            long c = compareValue(a.elements[i], b.elements[i]);
            if (c != 0) {
                return c;
            }
        }
        return 0;
    }

    /**
     * Compare closures in the same spirit as the reference runtime
     * ({@code runtime.c}, {@code Lcompare} CLOSURE_TAG branch): compare
     * the callable identity first, then compare captured slot values
     * element-wise. Slot 0 of {@link LamaFunction#lexicalScope} is the
     * parent-scope chain — we compare it by identity so that unrelated
     * outer-scope mutations don't spoil equality. That keeps Ostap's
     * memoisation table (which uses closures and matcher values as
     * keys) functional while still letting two closures that share a
     * callable and the same directly-captured values compare equal.
     */
    @TruffleBoundary
    public static long compareFunction(LamaFunction a, LamaFunction b) {
        if (a == b) {
            return 0;
        }
        long c = Long.compare(System.identityHashCode(a.callTarget), System.identityHashCode(b.callTarget));
        if (c != 0) {
            return c;
        }
        int la = a.lexicalScope == null ? 0 : a.lexicalScope.length;
        int lb = b.lexicalScope == null ? 0 : b.lexicalScope.length;
        if (la != lb) {
            return la - lb;
        }
        for (int i = 0; i < la; i++) {
            Object sa = a.lexicalScope[i];
            Object sb = b.lexicalScope[i];
            long cc;
            if (i == 0 && ((sa != null && sa.getClass().isArray()) || (sb != null && sb.getClass().isArray()))) {
                // Parent scope pointer — identity, not value, to keep hash
                // tables stable when outer-scope mutations happen.
                cc = Long.compare(System.identityHashCode(sa), System.identityHashCode(sb));
            } else {
                cc = compareValue(sa, sb);
            }
            if (cc != 0) {
                return cc;
            }
        }
        return 0;
    }

    @TruffleBoundary
    public static long compareValue(Object p, Object q) {
        if (p == q) {
            return 0;
        }
        if (p instanceof Long pl) {
            if (q instanceof Long ql) {
                return pl - ql;
            }
            return -1;
        }
        if (q instanceof Long) {
            return 1;
        }
        int ta = typeRank(p);
        int tb = typeRank(q);
        if (ta != tb) {
            return ta - tb;
        }
        if (p instanceof LamaString a && q instanceof LamaString b) {
            return compareString(a, b);
        }
        if (p instanceof LamaArray a && q instanceof LamaArray b) {
            return compareArray(a, b);
        }
        if (p instanceof LamaSExpr a && q instanceof LamaSExpr b) {
            return compareSExpr(a, b);
        }
        if (p instanceof LamaFunction a && q instanceof LamaFunction b) {
            return compareFunction(a, b);
        }
        // Treat unknown boxed values (e.g. raw Object[] scope arrays, file
        // handles, regex handles) like the reference does for foreign pointer
        // comparison: difference of their identity.
        return flatCompare(p, q);
    }

    /**
     * Type ranking that mirrors the numeric ordering of the reference tags:
     * STRING(1) < ARRAY(3) < SEXP(5) < CLOSURE(7).
     */
    private static int typeRank(Object o) {
        if (o instanceof LamaString) {
            return 1;
        }
        if (o instanceof LamaArray) {
            return 3;
        }
        if (o instanceof LamaSExpr) {
            return 5;
        }
        if (o instanceof LamaFunction) {
            return 7;
        }
        return 9;
    }
}
