package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.MaterializedFrame;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeChild("valueNode")
public abstract class WriteClosureVariableNode extends LamaExpressionNode {
    private final int slotIndex;
    private final int lexicalDepth;

    protected WriteClosureVariableNode(int slotIndex, int lexicalDepth) {
        this.slotIndex = slotIndex;
        this.lexicalDepth = lexicalDepth;
    }

    @Specialization
    protected Object readObject(VirtualFrame frame, Object valueNode) {
        getTargetFrame(frame).setObject(slotIndex, valueNode);
        return valueNode;
    }

    @ExplodeLoop
    protected MaterializedFrame getTargetFrame(VirtualFrame frame) {
        MaterializedFrame target = (MaterializedFrame) frame.getArguments()[0];

        for (int i = 0; i < lexicalDepth; i++) {
            target = (MaterializedFrame) target.getArguments()[0];
        }
        return target;
    }
}
