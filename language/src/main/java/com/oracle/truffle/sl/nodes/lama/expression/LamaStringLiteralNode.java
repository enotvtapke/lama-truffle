package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.nodes.SLExpressionNode;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeInfo(shortName = "const")
public final class LamaStringLiteralNode extends LamaExpressionNode {

    private final TruffleString value;

    public LamaStringLiteralNode(TruffleString value) {
        this.value = value;
    }

    @Override
    public TruffleString executeGeneric(VirtualFrame frame) {
        return value;
    }
}
