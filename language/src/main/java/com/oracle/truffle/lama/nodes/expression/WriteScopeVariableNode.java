package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;

@NodeChild("valueNode")
public abstract class WriteScopeVariableNode extends LamaExpressionNode {
    protected final int slotIndex;
    protected final int lexicalDepth;

    protected WriteScopeVariableNode(int slotIndex, int lexicalDepth) {
        this.slotIndex = slotIndex;
        this.lexicalDepth = lexicalDepth;
    }

    @Specialization(guards = {"lexicalDepth == 0", "isLongOrIllegal(frame)"})
    protected long writeLong(VirtualFrame frame, long value) {
        frame.getFrameDescriptor().setSlotKind(slotIndex, FrameSlotKind.Long);
        frame.setLong(slotIndex, value);
        return value;
    }

    @Specialization(guards = "lexicalDepth == 0", replaces = "writeLong")
    protected Object writeLocal(VirtualFrame frame, Object value) {
        frame.getFrameDescriptor().setSlotKind(slotIndex, FrameSlotKind.Object);
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

    /**
     * Guards {@link #writeLong}: the slot must currently hold {@code long} values, or never have
     * been written ({@code Illegal}).
     */
    protected boolean isLongOrIllegal(VirtualFrame frame) {
        FrameSlotKind kind = frame.getFrameDescriptor().getSlotKind(slotIndex);
        return kind == FrameSlotKind.Long || kind == FrameSlotKind.Illegal;
    }
}
