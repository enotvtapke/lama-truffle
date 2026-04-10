package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaCompareLib;

@NodeInfo(shortName = "flatCompare")
public abstract class LamaFlatCompareBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long cmp(Object a, Object b) {
        return LamaCompareLib.flatCompare(a, b);
    }
}
