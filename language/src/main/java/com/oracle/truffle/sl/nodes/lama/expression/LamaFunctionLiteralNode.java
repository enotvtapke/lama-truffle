package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;


public class LamaFunctionLiteralNode extends LamaExpressionNode {
    private final CallTarget callTarget;

    public LamaFunctionLiteralNode(CallTarget callTarget) {
        this.callTarget = callTarget;
    }

    @ExplodeLoop
    public Object executeGeneric(VirtualFrame frame) {
        int numberOfSlots = frame.getFrameDescriptor().getNumberOfSlots();
        Object[] captured = new Object[numberOfSlots + 1];
        captured[0] = frame.getArguments().length > 0 ? frame.getArguments()[0] : null;
        for (int i = 0; i < numberOfSlots; i++) {
            captured[i + 1] = frame.getValue(i);
        }
        return new LamaFunction(callTarget, captured);
    }
}