package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "hash")
public abstract class LamaHashBuiltinNode extends LamaBuiltinNode {
    @Specialization
    public long hash(Object v) {
        return v.hashCode();
    }
}
