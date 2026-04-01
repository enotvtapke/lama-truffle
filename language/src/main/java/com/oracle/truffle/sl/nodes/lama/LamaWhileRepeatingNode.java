package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.RepeatingNode;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import com.oracle.truffle.api.profiles.BranchProfile;
import com.oracle.truffle.sl.nodes.controlflow.SLBreakException;
import com.oracle.truffle.sl.nodes.controlflow.SLContinueException;

public final class LamaWhileRepeatingNode extends Node implements RepeatingNode {

    @Child private LamaExpressionNode conditionNode;

    @Child private LamaScopeNode bodyNode;

    /**
     * Profiling information, collected by the interpreter, capturing whether a {@code continue}
     * statement was used in this loop. This allows the compiler to generate better code for loops
     * without a {@code continue}.
     */
    private final BranchProfile continueTaken = BranchProfile.create();
    private final BranchProfile breakTaken = BranchProfile.create();

    public LamaWhileRepeatingNode(LamaExpressionNode conditionNode, LamaScopeNode bodyNode) {
        this.conditionNode = conditionNode;
        this.bodyNode = bodyNode;
    }

    @Override
    public boolean executeRepeating(VirtualFrame frame) {
        if (!evaluateCondition(frame)) {
            return false;
        }

        try {
            bodyNode.executeGeneric(frame);
            return true;

        } catch (SLContinueException ex) {
            continueTaken.enter();
            return true;

        } catch (SLBreakException ex) {
            breakTaken.enter();
            return false;
        }
    }

    private boolean evaluateCondition(VirtualFrame frame) {
        try {
            return conditionNode.executeLong(frame) != 0;
        } catch (UnexpectedResultException ex) {
            throw CompilerDirectives.shouldNotReachHere(ex);
        }
    }
}
