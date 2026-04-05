package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeChild("cellNode")
@NodeChild("valueNode")
public abstract class LamaWriteCellNode extends LamaExpressionNode {

    @Specialization
    protected Object doWrite(Object[] cell, Object value) {
        cell[0] = value;
        return value;
    }
}
