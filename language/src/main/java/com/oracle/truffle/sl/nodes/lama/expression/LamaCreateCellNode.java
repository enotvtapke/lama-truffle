package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

public final class LamaCreateCellNode extends LamaExpressionNode {

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        return new Object[]{0L};
    }
}
