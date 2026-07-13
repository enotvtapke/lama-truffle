package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;

public abstract class ReadScopeVariableNode extends LamaExpressionNode {
    protected final int slotIndex;
    protected final int lexicalDepth;

    protected ReadScopeVariableNode(int slotIndex, int lexicalDepth) {
        this.slotIndex = slotIndex;
        this.lexicalDepth = lexicalDepth;
    }

    @Specialization(guards = {"lexicalDepth == 0", "frame.isLong(slotIndex)"})
    protected long readLong(VirtualFrame frame) {
        return frame.getLong(slotIndex);
    }

    @Specialization(guards = "lexicalDepth == 0", replaces = "readLong")
    protected Object readLocal(VirtualFrame frame) {
        if (!frame.isObject(slotIndex)) {
            /*
             * The FrameSlotKind has been set to Object, so from now on all writes to the local
             * variable will be Object writes. However, now we are in a frame that still has an old
             * non-Object value. This is a slow-path operation: we read the non-Object value, and
             * write it immediately as an Object value so that we do not hit this path again
             * multiple times for the same variable of the same frame.
             */
            CompilerDirectives.transferToInterpreter();
            Object result = frame.getValue(slotIndex);
            frame.setObject(slotIndex, result);
            return result;
        }
        return frame.getObject(slotIndex);
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
