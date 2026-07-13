package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaArray;
import com.oracle.truffle.lama.runtime.LamaSExpr;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "length")
public abstract class LamaLengthBuiltinNode extends LamaBuiltinNode {
    @Specialization
    public long length(LamaString arg) {
        return arg.length();
    }

    @Specialization
    public long length(LamaArray arg) {
        return arg.getSize();
    }

    @Specialization
    public long length(LamaSExpr arg) {
        return arg.elements.length;
    }
}
