package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

/**
 * Structural comparison and hashing of Lama values.
 */
public final class LamaComparisonHashingLib {

    private LamaComparisonHashingLib() {
    }

    @TruffleBoundary
    public static long compare(Object a, Object b) {
        if (a == b) {
            return 0;
        }
        LamaValueTag ka = LamaValueTag.of(a);
        LamaValueTag kb = LamaValueTag.of(b);
        if (ka != kb) {
            return Integer.compare(ka.ordinal(), kb.ordinal());
        }
        return switch (ka) {
            case INT -> (Long) a - (Long) b;
            case STRING -> compareString((LamaString) a, (LamaString) b);
            case ARRAY -> compareArray((LamaArray) a, (LamaArray) b);
            case SEXP -> compareSExpr((LamaSExpr) a, (LamaSExpr) b);
            case CLOSURE -> compareFunction((LamaFunction) a, (LamaFunction) b);
            case FOREIGN -> Integer.compare(System.identityHashCode(a), System.identityHashCode(b));
        };
    }

    private static long compareString(LamaString a, LamaString b) {
        return Long.signum(a.toString().compareTo(b.toString()));
    }

    private static long compareArray(LamaArray a, LamaArray b) {
        int la = a.getSize();
        int lb = b.getSize();
        if (la != lb) {
            return la - lb;
        }
        for (int i = 0; i < la; i++) {
            long c = compare(a.readElement(i), b.readElement(i));
            if (c != 0) {
                return c;
            }
        }
        return 0;
    }

    private static long compareSExpr(LamaSExpr a, LamaSExpr b) {
        int t = a.tag.compareTo(b.tag);
        if (t != 0) {
            return Long.signum(t);
        }
        int la = a.elements.length;
        int lb = b.elements.length;
        if (la != lb) {
            return la - lb;
        }
        for (int i = 0; i < la; i++) {
            long c = compare(a.elements[i], b.elements[i]);
            if (c != 0) {
                return c;
            }
        }
        return 0;
    }

    /**
     * Closures are compared by callable identity first, then element-wise over
     * their captured slots. Slot 0 is the parent-scope chain (a raw array): it
     * is compared by identity so that unrelated outer-scope mutations don't
     * destabilise closures used as hashtable keys. The matching hash branch makes the same choice.
     */
    private static long compareFunction(LamaFunction a, LamaFunction b) {
        long c = Long.compare(System.identityHashCode(a.callTarget), System.identityHashCode(b.callTarget));
        if (c != 0) {
            return c;
        }
        int la = scopeLength(a);
        int lb = scopeLength(b);
        if (la != lb) {
            return la - lb;
        }
        for (int i = 0; i < la; i++) {
            Object sa = a.lexicalScope[i];
            Object sb = b.lexicalScope[i];
            long cc;
            if (isScopeChainSlot(i, sa) || isScopeChainSlot(i, sb)) {
                // TODO When free variable analysis will be implemented this corner case should be removed
                cc = Long.compare(System.identityHashCode(sa), System.identityHashCode(sb));
            } else {
                cc = compare(sa, sb);
            }
            if (cc != 0) {
                return cc;
            }
        }
        return 0;
    }

    /**
     * Shallow comparison: integers by value, everything else by identity. Used
     * by the {@code flatCompare} builtin to key on pointers rather than shape.
     */
    public static long flatCompare(Object a, Object b) {
        if (a instanceof Long la) {
            if (b instanceof Long lb) {
                return la - lb;
            }
            return -1;
        }
        if (b instanceof Long) {
            return 1;
        }
        if (a == b) {
            return 0;
        }
        return Long.compare(System.identityHashCode(a), System.identityHashCode(b));
    }

    /** Recursion bound: a cycle and cost guard for deeply nested structures. */
    private static final int HASH_DEPTH = 3;

    /**
     * Non-negative structural hash.
     */
    @TruffleBoundary
    public static long hash(Object v) {
        return hash(v, 0) & 0x7fffffffL;
    }

    private static int hash(Object v, int depth) {
        LamaValueTag k = LamaValueTag.of(v);
        int h = k.ordinal();
        if (depth > HASH_DEPTH) {
            return h;
        }
        switch (k) {
            case INT -> {
                return mix(h, Long.hashCode((Long) v));
            }
            case STRING -> {
                byte[] bytes = ((LamaString) v).getBytes();
                h = mix(h, bytes.length);
                for (byte b : bytes) {
                    h = mix(h, b);
                }
                return h;
            }
            case ARRAY -> {
                LamaArray a = (LamaArray) v;
                int n = a.getSize();
                h = mix(h, n);
                for (int i = 0; i < n; i++) {
                    h = mix(h, hash(a.readElement(i), depth + 1));
                }
                return h;
            }
            case SEXP -> {
                LamaSExpr s = (LamaSExpr) v;
                h = mix(h, s.tag.hashCode());
                h = mix(h, s.elements.length);
                for (Object e : s.elements) {
                    h = mix(h, hash(e, depth + 1));
                }
                return h;
            }
            case CLOSURE -> {
                LamaFunction f = (LamaFunction) v;
                h = mix(h, System.identityHashCode(f.callTarget));
                int n = scopeLength(f);
                h = mix(h, n);
                for (int i = 0; i < n; i++) {
                    Object slot = f.lexicalScope[i];
                    if (isScopeChainSlot(i, slot)) {
                        h = mix(h, System.identityHashCode(slot));
                    } else {
                        h = mix(h, hash(slot, depth + 1));
                    }
                }
                return h;
            }
            default -> {
                return mix(h, System.identityHashCode(v));
            }
        }
    }

    private static int mix(int acc, int x) {
        return acc * 31 + x;
    }

    private static int scopeLength(LamaFunction f) {
        return f.lexicalScope == null ? 0 : f.lexicalScope.length;
    }

    /** Slot 0 of a closure's captured frame is the parent-scope chain array. */
    private static boolean isScopeChainSlot(int index, Object slot) {
        return index == 0 && slot != null && slot.getClass().isArray();
    }
}
