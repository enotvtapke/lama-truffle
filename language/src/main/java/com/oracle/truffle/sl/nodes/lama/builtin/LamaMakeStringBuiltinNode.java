package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "makeString")
public abstract class LamaMakeStringBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public LamaString make(long n) {
        if (n < 0 || n > Integer.MAX_VALUE) {
            throw SLException.create("makeString: invalid size", this);
        }
        return new LamaString(new byte[(int) n]);
    }
}
