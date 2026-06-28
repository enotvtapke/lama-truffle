package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaComparisonHashingLib;

@NodeInfo(shortName = "hash")
public abstract class LamaHashBuiltinNode extends LamaBuiltinNode {
    @Specialization
    @TruffleBoundary
    public long hash(Object v) {
        return LamaComparisonHashingLib.hash(v);
    }
}
