package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.runtime.LamaFunction;

import static com.oracle.truffle.lama.runtime.Utils.capture;


public class LamaFunctionLiteralNode extends LamaExpressionNode {
    private final CallTarget callTarget;

    public LamaFunctionLiteralNode(CallTarget callTarget) {
        this.callTarget = callTarget;
    }

    public Object executeGeneric(VirtualFrame frame) {
        return new LamaFunction(callTarget, capture(frame));
    }
}