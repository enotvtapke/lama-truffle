package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.*;
import com.oracle.truffle.sl.runtime.lama.LamaCompareLib;

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

    @Specialization
    @TruffleBoundary
    public long doString(LamaString a, LamaString b) {
        return LamaCompareLib.compareString(a, b);
    }

    @Specialization
    @TruffleBoundary
    public long doArray(LamaArray a, LamaArray b) {
        return LamaCompareLib.compareArray(a, b);
    }

    @Specialization
    @TruffleBoundary
    public long doSExpr(LamaSExpr a, LamaSExpr b) {
        return LamaCompareLib.compareSExpr(a, b);
    }

    @Specialization
    @TruffleBoundary
    public long doFunction(LamaFunction a, LamaFunction b) {
        return LamaCompareLib.compareFunction(a, b);
    }

    @Fallback
    @TruffleBoundary
    public long doGeneric(Object a, Object b) {
        return LamaCompareLib.compareValue(a, b);
    }

    protected static boolean notLong(Object o) {
        return !(o instanceof Long);
    }
}
