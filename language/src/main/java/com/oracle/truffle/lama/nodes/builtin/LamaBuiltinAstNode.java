package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;

import java.util.Arrays;

public class LamaBuiltinAstNode extends LamaExpressionNode {
    @Child private LamaBuiltinNode builtin;

    public LamaBuiltinAstNode(LamaBuiltinNode builtinNode) {
        this.builtin = builtinNode;
    }

    @Override
    public final Object executeGeneric(VirtualFrame frame) {
        Object[] args = frame.getArguments();
        Object[] builtinArgs = Arrays.copyOfRange(args, 1, args.length);
        return builtin.execute(frame, builtinArgs);
    }
}
