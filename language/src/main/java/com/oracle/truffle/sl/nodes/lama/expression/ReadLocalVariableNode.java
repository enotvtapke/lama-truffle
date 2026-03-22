package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

public abstract class ReadLocalVariableNode extends LamaExpressionNode {
    protected final int slotIndex;

    protected ReadLocalVariableNode(int slotIndex) {
        this.slotIndex = slotIndex;
    }

    @Specialization(guards = "frame.isLong(slotIndex)")
    protected long readLong(VirtualFrame frame) {
        return frame.getLong(slotIndex);
    }

    @Specialization(replaces = {"readLong"})
    protected Object readObject(VirtualFrame frame) {
        return frame.getValue(this.slotIndex);
    }
}