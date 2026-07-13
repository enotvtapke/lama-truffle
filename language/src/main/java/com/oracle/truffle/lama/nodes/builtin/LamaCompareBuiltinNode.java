package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaComparisonHashingLib;

@NodeInfo(shortName = "compare")
public abstract class LamaCompareBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long doLong(long a, long b) {
        return a - b;
    }

    @Specialization(guards = "notLong(b)")
    public long doLongVsBoxed(long a, Object b) {
        return -1L;
    }

    @Specialization(guards = "notLong(a)")
    public long doBoxedVsLong(Object a, long b) {
        return 1L;
    }

    @Fallback
    @TruffleBoundary
    public long doGeneric(Object a, Object b) {
        return LamaComparisonHashingLib.compare(a, b);
    }

    protected static boolean notLong(Object o) {
        return !(o instanceof Long);
    }
}
