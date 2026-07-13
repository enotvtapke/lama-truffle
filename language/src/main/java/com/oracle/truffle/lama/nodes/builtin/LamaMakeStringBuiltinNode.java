package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "makeString")
public abstract class LamaMakeStringBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public LamaString make(long n) {
        if (n < 0 || n > Integer.MAX_VALUE) {
            throw LamaException.create("makeString: invalid size", this);
        }
        return new LamaString(new byte[(int) n]);
    }
}
