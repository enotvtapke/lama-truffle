package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.MaterializedFrame;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

public abstract class ReadScopeVariableNode extends LamaExpressionNode {
    private final int slotIndex;
    private final int lexicalDepth;

    protected ReadScopeVariableNode(int slotIndex, int lexicalDepth) {
        this.slotIndex = slotIndex;
        this.lexicalDepth = lexicalDepth;
    }

    @Specialization
    protected Object readObject(VirtualFrame frame) {
        return getTargetFrame(frame).getValue(slotIndex);
    }

    @ExplodeLoop
    protected VirtualFrame getTargetFrame(VirtualFrame frame) {
        VirtualFrame target = frame;

        for (int i = 0; i < lexicalDepth; i++) {
            target = (MaterializedFrame) target.getArguments()[0];
        }
        return target;
    }
}
