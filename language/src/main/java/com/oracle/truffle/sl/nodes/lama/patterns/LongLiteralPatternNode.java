package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "longLiteralPattern")
public abstract class LongLiteralPatternNode extends LamaPatternNode {
    private final long expectedValue;

    public LongLiteralPatternNode(long expectedValue) {
        this.expectedValue = expectedValue;
    }

    @Specialization
    protected boolean matchLong(long target) {
        return expectedValue == target;
    }

    @Fallback
    protected boolean noMatch(Object target) {
        return false;
    }

    @Override
    public void executeBind(VirtualFrame frame, Object target) {
    }
}
