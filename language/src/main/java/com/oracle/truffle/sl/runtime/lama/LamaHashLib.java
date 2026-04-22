package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;

/**
 * Hash functions aligned with the reference Lama {@code runtime.c}.
 *
 * <p>Two flavours are provided:
 * <ul>
 *   <li>{@link #tagHash(String)} — packs an S-expression tag into a small
 *       integer using the 6-bit-per-character alphabet from the C runtime.
 *       Used both by {@code tagHash} and by {@code compare} for S-expressions.</li>
 *   <li>{@link #hash(Object)} — the recursive value hash used by the
 *       {@code hash} builtin. Mirrors {@code inner_hash / Lhash}.</li>
 * </ul>
 *
 * <p>Reference tag hash: every character is mapped to its index in the
 * 64-char alphabet below and shifted into a 6-bit slot. The number of
 * encoded characters is capped at {@code MAX_SEXP_TAGLEN = 10} for the
 * 64-bit target.</p>
 */
public final class LamaHashLib {

    private LamaHashLib() {
    }

    // Exactly the alphabet used by the reference runtime.
    private static final String TAG_HASH_CHARS =
            "_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'";

    public static final int MAX_SEXP_TAGLEN = 10;

    private static final int HASH_DEPTH = 3;
    // WORD_SIZE in reference is 64, so the shift amount is 32.
    private static final int HASH_SHIFT = 32;

    /**
     * Packs an S-expression tag into an integer. Only the first
     * {@link #MAX_SEXP_TAGLEN} characters contribute; characters outside
     * the reference alphabet cause a runtime failure in the C runtime —
     * here we throw {@link IllegalArgumentException} for the same reason.
     */
    @TruffleBoundary
    public static long tagHash(String tag) {
        long h = 0;
        int limit = 0;
        for (int i = 0; i < tag.length() && limit < MAX_SEXP_TAGLEN; i++, limit++) {
            char c = tag.charAt(i);
            int pos = TAG_HASH_CHARS.indexOf(c);
            if (pos < 0) {
                throw new IllegalArgumentException("character not found: " + c);
            }
            h = (h << 6) | pos;
        }
        return h;
    }

    /**
     * The top-level entry point that mirrors {@code Lhash}: the result is
     * truncated to the low 22 bits, just like the reference.
     */
    @TruffleBoundary
    public static long hash(Object value) {
        long acc = innerHash(0, 0L, value);
        return 0x3fffffL & acc;
    }

    private static long innerHash(int depth, long acc, Object p) {
        if (depth > HASH_DEPTH) {
            return acc;
        }

        if (p instanceof Long l) {
            return hashAppend(acc, l);
        }
        if (p instanceof LamaString s) {
            acc = hashAppend(acc, 1 /* STRING_TAG */);
            byte[] b = s.getBytes();
            acc = hashAppend(acc, b.length);
            for (byte value : b) {
                // match C's signed -> wider conversion of char to aint
                acc = hashAppend(acc, (long) value);
            }
            return acc;
        }
        if (p instanceof LamaArray a) {
            acc = hashAppend(acc, 3 /* ARRAY_TAG */);
            int len = a.getSize();
            acc = hashAppend(acc, len);
            for (int i = 0; i < len; i++) {
                acc = innerHash(depth + 1, acc, a.readElement(i));
            }
            return acc;
        }
        if (p instanceof LamaSExpr s) {
            acc = hashAppend(acc, 5 /* SEXP_TAG */);
            int len = s.elements.length;
            acc = hashAppend(acc, len);
            acc = hashAppend(acc, tagHash(s.tag));
            for (int i = 0; i < len; i++) {
                acc = innerHash(depth + 1, acc, s.elements[i]);
            }
            return acc;
        }
        if (p instanceof LamaFunction f) {
            acc = hashAppend(acc, 7 /* CLOSURE_TAG */);
            int len = f.lexicalScope == null ? 0 : f.lexicalScope.length;
            acc = hashAppend(acc, len);
            // Reference stores the function pointer in slot 0; we do not
            // have a stable pointer, but we can use callTarget identity so
            // that equal function pointers produce equal contributions.
            acc = hashAppend(acc, System.identityHashCode(f.callTarget));
            for (int i = 0; i < len; i++) {
                acc = innerHash(depth + 1, acc, f.lexicalScope[i]);
            }
            return acc;
        }
        // Foreign objects (Object[] scope chain, file handles, regex handles, …)
        // — match the "raw pointer" fallback of the reference.
        return hashAppend(acc, System.identityHashCode(p));
    }

    private static long hashAppend(long acc, long x) {
        // Reference macro: ((acc + (auint)x) << W/2) | ((acc + (auint)x) >> W/2)
        // Using unsigned 64-bit arithmetic (Java >>> for the right shift).
        long sum = acc + x;
        return (sum << HASH_SHIFT) | (sum >>> HASH_SHIFT);
    }
}
