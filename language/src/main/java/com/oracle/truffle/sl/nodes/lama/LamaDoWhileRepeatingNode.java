package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.RepeatingNode;
import com.oracle.truffle.api.nodes.UnexpectedResultException;

public final class LamaDoWhileRepeatingNode extends Node implements RepeatingNode {

    @Child private LamaExpressionNode bodyNode;
    @Child private LamaExpressionNode conditionNode;

    public LamaDoWhileRepeatingNode(LamaExpressionNode bodyNode, LamaExpressionNode conditionNode) {
        this.bodyNode = bodyNode;
        this.conditionNode = conditionNode;
    }

    @Override
    public boolean executeRepeating(VirtualFrame frame) {
        bodyNode.executeGeneric(frame);
        try {
            return conditionNode.executeLong(frame) != 0;
        } catch (UnexpectedResultException ex) {
            throw CompilerDirectives.shouldNotReachHere(ex);
        }
    }
}
