package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaString;

import java.util.Arrays;

@NodeInfo(shortName = "matchSubString")
public abstract class LamaMatchSubStringBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long match(LamaString subject, LamaString pattern, long pos) {
        int intPos = Math.toIntExact(pos);
        byte[] subjBytes = subject.getBytes();
        byte[] pattBytes = pattern.getBytes();
        int n = pattBytes.length;
        if (intPos < 0 || (long) intPos + n > subjBytes.length) {
            return 0L;
        }
        return Arrays.equals(subjBytes, intPos, intPos + n, pattBytes, 0, n) ? 1L : 0L;
    }
}
