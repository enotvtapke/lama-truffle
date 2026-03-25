package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;

public final class LamaBlockNode extends LamaExpressionNode {

    @Children private final LamaExpressionNode[] bodyNodes;

    public LamaBlockNode(LamaExpressionNode[] bodyNodes) {
        this.bodyNodes = bodyNodes;
    }

    @ExplodeLoop
    @Override
    public Object executeGeneric(VirtualFrame frame) {
        Object result = 0L;
        for (LamaExpressionNode node : bodyNodes) {
            result = node.executeGeneric(frame);
        }
        return result;
    }
}
