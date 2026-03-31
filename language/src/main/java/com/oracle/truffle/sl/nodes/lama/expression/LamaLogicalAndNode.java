package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import com.oracle.truffle.api.profiles.CountingConditionProfile;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeInfo(shortName = "&&")
public final class LamaLogicalAndNode extends LamaExpressionNode {

    @Child private LamaExpressionNode leftNode;
    @Child private LamaExpressionNode rightNode;
    private final CountingConditionProfile conditionProfile = CountingConditionProfile.create();

    public LamaLogicalAndNode(LamaExpressionNode leftNode, LamaExpressionNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        try {
            long leftValue = leftNode.executeLong(frame);
            if (conditionProfile.profile(leftValue == 0L)) {
                return 0L;
            }
        } catch (UnexpectedResultException e) {
            throw SLException.typeError(this, "&&", e.getResult());
        }
        return rightNode.executeGeneric(frame);
    }
}
