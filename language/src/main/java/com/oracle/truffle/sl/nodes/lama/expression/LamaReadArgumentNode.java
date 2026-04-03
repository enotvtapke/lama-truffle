package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

public class LamaReadArgumentNode extends LamaExpressionNode {

    private final int index;

    public LamaReadArgumentNode(int index) {
        this.index = index;
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        Object[] args = frame.getArguments();
        if (index < args.length) {
            return args[index];
        } else {
            CompilerDirectives.transferToInterpreterAndInvalidate();
            throw new RuntimeException("Wrong number of arguments. Cannot read argument with index " + index +
                    ". Function has only " + args.length + ".");
        }
    }
}
