package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaArray;

@NodeInfo(shortName = "makeArray")
public abstract class LamaMakeArrayBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public LamaArray make(long n) {
        if (n < 0 || n > Integer.MAX_VALUE) {
            throw SLException.create("makeArray: invalid size", this);
        }
        return new LamaArray((int) n);
    }
}
