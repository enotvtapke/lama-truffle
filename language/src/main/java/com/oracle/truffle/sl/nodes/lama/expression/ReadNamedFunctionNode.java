package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;

import static com.oracle.truffle.sl.runtime.lama.Utils.capture;

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
    protected Object readLocal(VirtualFrame frame) {
        LamaFunction lamaFunction = (LamaFunction) frame.getValue(slotIndex);
        return new LamaFunction(lamaFunction.callTarget, capture(frame));
    }

    @Specialization(guards = "lexicalDepth > 0")
    @ExplodeLoop
    protected Object readOuter(VirtualFrame frame) {
        Object[] scope = (Object[]) frame.getArguments()[0];
        for (int i = 1; i < lexicalDepth; i++) {
            scope = (Object[]) scope[0];
        }
        LamaFunction lamaFunction = (LamaFunction) scope[slotIndex + 1];
        return new LamaFunction(lamaFunction.callTarget, scope);
    }
}
