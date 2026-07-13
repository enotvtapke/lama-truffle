package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaArray;

@NodeInfo(shortName = "makeArray")
public abstract class LamaMakeArrayBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public LamaArray make(long n) {
        if (n < 0 || n > Integer.MAX_VALUE) {
            throw LamaException.create("makeArray: invalid size", this);
        }
        return new LamaArray((int) n);
    }
}
