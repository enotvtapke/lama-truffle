package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaComparisonHashingLib;

@NodeInfo(shortName = "flatCompare")
public abstract class LamaFlatCompareBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public static long compare(Object a, Object b) {
        return LamaComparisonHashingLib.flatCompare(a, b);
    }
}
