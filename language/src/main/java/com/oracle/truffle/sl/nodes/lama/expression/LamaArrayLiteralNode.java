package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.profiles.CountingConditionProfile;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaArray;

public final class LamaArrayLiteralNode extends LamaExpressionNode {

    @Children private final LamaExpressionNode[] elementNodes;
    private final CountingConditionProfile allLongsProfile = CountingConditionProfile.create();

    public LamaArrayLiteralNode(LamaExpressionNode[] elementNodes) {
        this.elementNodes = elementNodes;
    }

    @ExplodeLoop
    @Override
    public Object executeGeneric(VirtualFrame frame) {
        int length = elementNodes.length;
        // Optimistically allocate for the fast path
        long[] longValues = new long[length];
        Object[] objectValues = null;
        boolean allLongs = true;

        for (int i = 0; i < length; i++) {
            Object value = elementNodes[i].executeGeneric(frame);

            if (allLongs) {
                if (value instanceof Long) {
                    longValues[i] = (long) value;
                } else {
                    allLongs = false;
                    objectValues = new Object[length];
                    for (int j = 0; j < i; j++) {
                        objectValues[j] = longValues[j];
                    }
                    objectValues[i] = value;
                }
            } else {
                objectValues[i] = value;
            }
        }

        // The profile tells GraalVM if it can completely optimize away the objectValues logic
        if (allLongsProfile.profile(allLongs)) {
            return new LamaArray(longValues);
        } else {
            return new LamaArray(objectValues);
        }
    }
}
