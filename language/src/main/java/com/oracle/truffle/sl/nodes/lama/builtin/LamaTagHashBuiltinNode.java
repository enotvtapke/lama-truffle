package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "tagHash")
public abstract class LamaTagHashBuiltinNode extends LamaBuiltinNode {
    private static final String TAG_HASH_CHARS = "_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'";
    private static final int MAX_SEXP_TAGLEN = 10;

    @Specialization
    @TruffleBoundary
    public long hash(LamaString s) {
        try {
            return tagHash(s.toString());
        } catch (IllegalArgumentException e) {
            throw SLException.create("tagHash: " + e.getMessage(), this);
        }
    }

    /**
     * Packs an S-expression tag into an integer. Only the first
     * {@link #MAX_SEXP_TAGLEN} characters contribute; characters outside the
     * 6-bit alphabet throw.
     */
    private static long tagHash(String tag) {
        long h = 0;
        int limit = 0;
        for (int i = 0; i < tag.length() && limit < MAX_SEXP_TAGLEN; i++, limit++) {
            char c = tag.charAt(i);
            int pos = TAG_HASH_CHARS.indexOf(c);
            if (pos < 0)
                throw new IllegalArgumentException(
                        "S-expr tag contains invalid character '%c'. Supported characters: %s.".formatted(c, TAG_HASH_CHARS)
                );
            h = (h << 6) | pos;
        }
        return h;
    }
}
