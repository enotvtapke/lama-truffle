package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.LoopNode;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "dowhile")
public final class LamaDoWhileNode extends LamaExpressionNode {

    @Child private LoopNode loopNode;

    public LamaDoWhileNode(LamaExpressionNode bodyNode, LamaExpressionNode conditionNode) {
        this.loopNode = Truffle.getRuntime().createLoopNode(new LamaDoWhileRepeatingNode(bodyNode, conditionNode));
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
