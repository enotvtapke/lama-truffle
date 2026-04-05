package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeChild("valueNode")
public abstract class WriteScopeVariableNode extends LamaExpressionNode {
    private final int slotIndex;
    protected final int lexicalDepth;

    protected WriteScopeVariableNode(int slotIndex, int lexicalDepth) {
        this.slotIndex = slotIndex;
        this.lexicalDepth = lexicalDepth;
    }

    @Specialization(guards = "lexicalDepth == 0")
    protected Object writeLocal(VirtualFrame frame, Object value) {
        frame.setObject(slotIndex, value);
        return value;
    }

    @Specialization(guards = "lexicalDepth > 0")
    @ExplodeLoop
    protected Object writeOuter(VirtualFrame frame, Object value) {
        Object[] scope = (Object[]) frame.getArguments()[0];
        for (int i = 1; i < lexicalDepth; i++) {
            scope = (Object[]) scope[0];
        }
        scope[slotIndex + 1] = value;
        return value;
    }
}