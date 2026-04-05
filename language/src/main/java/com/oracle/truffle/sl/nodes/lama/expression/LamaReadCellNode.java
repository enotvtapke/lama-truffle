package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeChild("cellNode")
public abstract class LamaReadCellNode extends LamaExpressionNode {

    @Specialization
    protected Object doRead(Object[] cell) {
        return cell[0];
    }
}
