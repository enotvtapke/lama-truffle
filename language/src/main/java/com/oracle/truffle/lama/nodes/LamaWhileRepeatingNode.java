package com.oracle.truffle.lama.nodes;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.RepeatingNode;
import com.oracle.truffle.api.nodes.UnexpectedResultException;

public final class LamaWhileRepeatingNode extends Node implements RepeatingNode {

    @Child private LamaExpressionNode conditionNode;

    @Child private LamaExpressionNode bodyNode;

    public LamaWhileRepeatingNode(LamaExpressionNode conditionNode, LamaExpressionNode bodyNode) {
        this.conditionNode = conditionNode;
        this.bodyNode = bodyNode;
    }

    @Override
    public boolean executeRepeating(VirtualFrame frame) {
        try {
            if (conditionNode.executeLong(frame) == 0) {
                return false;
            }
            bodyNode.executeGeneric(frame);
            return true;
        } catch (UnexpectedResultException ex) {
            throw CompilerDirectives.shouldNotReachHere(ex);
        }
    }
}
