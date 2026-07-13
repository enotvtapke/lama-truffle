package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "case")
public final class LamaCaseNode extends LamaExpressionNode {

    @Child private LamaExpressionNode targetExpression;

    @Children private final CaseBranchNode[] branches;

    public LamaCaseNode(LamaExpressionNode targetExpression, CaseBranchNode[] branches) {
        this.targetExpression = targetExpression;
        this.branches = branches;
    }

    @Override
    @ExplodeLoop
    public Object executeGeneric(VirtualFrame frame) {
        Object targetValue = targetExpression.executeGeneric(frame);

        for (CaseBranchNode branch : branches) {
            if (branch.matchProfile.profile(branch.pattern.executeMatch(targetValue))) {
                branch.pattern.executeBind(frame, targetValue);
                return branch.body.executeGeneric(frame);
            }
        }

        CompilerDirectives.transferToInterpreter();
        throw LamaException.create("No case branch matched the value: " + targetValue, this);
    }
}
