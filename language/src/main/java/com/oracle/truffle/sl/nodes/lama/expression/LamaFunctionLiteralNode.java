package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;

import static com.oracle.truffle.sl.runtime.lama.Utils.capture;


public class LamaFunctionLiteralNode extends LamaExpressionNode {
    private final CallTarget callTarget;

    public LamaFunctionLiteralNode(CallTarget callTarget) {
        this.callTarget = callTarget;
    }

    public Object executeGeneric(VirtualFrame frame) {
        return new LamaFunction(callTarget, capture(frame));
    }
}