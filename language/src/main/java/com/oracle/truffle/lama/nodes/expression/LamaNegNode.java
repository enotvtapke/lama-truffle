package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.nodes.LamaUnaryExpressionNode;

@NodeInfo(shortName = "-")
public abstract class LamaNegNode extends LamaUnaryExpressionNode {

    @Specialization
    public static long doLong(long operand) {
        return -operand;
    }

    @Fallback
    public static Object typeError(Object operand, @Bind Node node) {
        throw LamaException.typeError(node, "-", operand);
    }
}
