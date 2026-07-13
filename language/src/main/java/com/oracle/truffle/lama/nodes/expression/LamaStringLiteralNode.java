package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.runtime.LamaString;

import java.nio.charset.StandardCharsets;

@NodeInfo(shortName = "const")
public final class LamaStringLiteralNode extends LamaExpressionNode {

    private final byte[] bytes;

    public LamaStringLiteralNode(String value) {
        this.bytes = value.getBytes(StandardCharsets.US_ASCII);
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        return new LamaString(bytes.clone());
    }
}
