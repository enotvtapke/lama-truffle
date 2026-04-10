package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

/**
 * Helpers aligned with the reference Lama {@code runtime.c} (tagHash, compare, hash, clone).
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
        long tagHa = a.tag.hashCode();
        long tagHb = b.tag.hashCode();
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

    @TruffleBoundary
    public static long compareFunction(LamaFunction a, LamaFunction b) {
        if (a == b) {
            return 0;
        }
        long c = Long.compare(System.identityHashCode(a.callTarget), System.identityHashCode(b.callTarget));
        if (c != 0) {
            return c;
        }
        return Long.compare(System.identityHashCode(a.lexicalScope), System.identityHashCode(b.lexicalScope));
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
        return flatCompare(p, q);
    }

    private static int typeRank(Object o) {
        if (o instanceof LamaString) {
            return 0;
        }
        if (o instanceof LamaFunction) {
            return 1;
        }
        if (o instanceof LamaArray) {
            return 2;
        }
        if (o instanceof LamaSExpr) {
            return 3;
        }
        return 4;
    }
}
