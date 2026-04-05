package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

public abstract class ReadScopeVariableNode extends LamaExpressionNode {
    private final int slotIndex;
    protected final int lexicalDepth;

    protected ReadScopeVariableNode(int slotIndex, int lexicalDepth) {
        this.slotIndex = slotIndex;
        this.lexicalDepth = lexicalDepth;
    }

    @Specialization(guards = "lexicalDepth == 0")
    protected Object readLocal(VirtualFrame frame) {
        return frame.getValue(slotIndex);
    }

    @Specialization(guards = "lexicalDepth > 0")
    @ExplodeLoop
    protected Object readOuter(VirtualFrame frame) {
        Object[] scope = (Object[]) frame.getArguments()[0];
        for (int i = 1; i < lexicalDepth; i++) {
            scope = (Object[]) scope[0];
        }
        return scope[slotIndex + 1];
    }
}