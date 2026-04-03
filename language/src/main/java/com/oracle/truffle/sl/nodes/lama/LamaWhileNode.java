package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.LoopNode;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "while")
public final class LamaWhileNode extends LamaExpressionNode {

    @Child private LoopNode loopNode;

    public LamaWhileNode(LamaExpressionNode conditionNode, LamaExpressionNode bodyNode) {
        this.loopNode = Truffle.getRuntime().createLoopNode(new LamaWhileRepeatingNode(conditionNode, bodyNode));
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        loopNode.execute(frame);
        return 0L;
    }

    @Override
    public long executeLong(VirtualFrame frame) {
        loopNode.execute(frame);
        return 0L;
    }

}
