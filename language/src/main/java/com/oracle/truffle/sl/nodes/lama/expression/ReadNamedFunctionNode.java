package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;

/**
 * Reads a named function variable and creates a fresh closure capturing the
 * current frame values. This implements Lama's "capture at reference time"
 * semantics for named functions: each time the function name is read, a new
 * {@link LamaFunction} is produced with an up-to-date snapshot of the
 * enclosing scope.
 */
public abstract class ReadNamedFunctionNode extends LamaExpressionNode {
    private final int slotIndex;
    protected final int lexicalDepth;

    protected ReadNamedFunctionNode(int slotIndex, int lexicalDepth) {
        this.slotIndex = slotIndex;
        this.lexicalDepth = lexicalDepth;
    }

    @Specialization(guards = "lexicalDepth == 0")
    @ExplodeLoop
    protected Object readLocal(VirtualFrame frame) {
        LamaFunction storedFn = (LamaFunction) frame.getValue(slotIndex);

        int numberOfSlots = frame.getFrameDescriptor().getNumberOfSlots();
        Object[] captured = new Object[numberOfSlots + 1];
        captured[0] = frame.getArguments().length > 0 ? frame.getArguments()[0] : null;
        for (int i = 0; i < numberOfSlots; i++) {
            captured[i + 1] = frame.getValue(i);
        }
        return new LamaFunction(storedFn.callTarget, captured);
    }

    @Specialization(guards = "lexicalDepth > 0")
    @ExplodeLoop
    protected Object readOuter(VirtualFrame frame) {
        Object[] scope = (Object[]) frame.getArguments()[0];
        for (int i = 1; i < lexicalDepth; i++) {
            scope = (Object[]) scope[0];
        }
        LamaFunction storedFn = (LamaFunction) scope[slotIndex + 1];
        return new LamaFunction(storedFn.callTarget, scope);
    }
}
