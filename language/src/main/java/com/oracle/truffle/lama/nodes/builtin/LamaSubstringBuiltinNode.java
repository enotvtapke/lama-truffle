package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaString;

import java.util.Arrays;

@NodeInfo(shortName = "substring")
public abstract class LamaSubstringBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public LamaString sub(LamaString str, long pos, long len) {
        int p = Math.toIntExact(pos);
        int l = Math.toIntExact(len);
        if (p < 0 || l < 0 || (long) p + l > str.length()) {
            throw LamaException.create(
                    "substring: index out of bounds (position=" + p + ", length=" + l + ", subject length=" + str.length() + ")",
                    this);
        }
        byte[] src = str.getBytes();
        return new LamaString(Arrays.copyOfRange(src, p, p + l));
    }
}
