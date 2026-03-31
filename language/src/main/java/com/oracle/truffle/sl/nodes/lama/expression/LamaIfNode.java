package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import com.oracle.truffle.api.profiles.CountingConditionProfile;
import com.oracle.truffle.sl.nodes.SLExpressionNode;
import com.oracle.truffle.sl.nodes.SLStatementNode;
import com.oracle.truffle.sl.nodes.controlflow.SLBlockNode;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.nodes.lama.LamaScopeNode;
import com.oracle.truffle.sl.nodes.util.SLToBooleanNodeGen;
import com.oracle.truffle.sl.nodes.util.SLUnboxNodeGen;

@NodeInfo(shortName = "if")
public final class LamaIfNode extends LamaExpressionNode {
    @Child private LamaExpressionNode conditionNode;
    @Child private LamaScopeNode thenPartNode;
    @Child private LamaScopeNode elsePartNode;

    public LamaIfNode(LamaExpressionNode conditionNode, LamaScopeNode thenPartNode, LamaScopeNode elsePartNode) {
        this.conditionNode = conditionNode;
        this.thenPartNode = thenPartNode;
        this.elsePartNode = elsePartNode;
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        if (evaluateCondition(frame) != 0) {
            return thenPartNode.executeGeneric(frame);
        } else {
            if (elsePartNode != null) {
                return elsePartNode.executeGeneric(frame);
            }
            return 0L;
        }
    }

    private long evaluateCondition(VirtualFrame frame) {
        try {
            return conditionNode.executeLong(frame);
        } catch (UnexpectedResultException ex) {
            throw CompilerDirectives.shouldNotReachHere(ex);
        }
    }
}
