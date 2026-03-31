package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import com.oracle.truffle.api.profiles.CountingConditionProfile;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeInfo(shortName = "!!")
public final class LamaLogicalOrNode extends LamaExpressionNode {

    @Child private LamaExpressionNode leftNode;
    @Child private LamaExpressionNode rightNode;
    private final CountingConditionProfile conditionProfile = CountingConditionProfile.create();

    public LamaLogicalOrNode(LamaExpressionNode leftNode, LamaExpressionNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        long leftValue;
        try {
            leftValue = leftNode.executeLong(frame);
        } catch (UnexpectedResultException e) {
            throw SLException.typeError(this, "!!", e.getResult());
        }
        if (conditionProfile.profile(leftValue != 0L)) {
            return leftValue;
        }
        return rightNode.executeGeneric(frame);
    }
}
