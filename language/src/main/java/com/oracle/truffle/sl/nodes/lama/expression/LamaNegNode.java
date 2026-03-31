package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.nodes.lama.LamaUnaryExpressionNode;

@NodeInfo(shortName = "-")
public abstract class LamaNegNode extends LamaUnaryExpressionNode {

    @Specialization
    public static long doLong(long operand) {
        return -operand;
    }

    @Fallback
    public static Object typeError(Object operand, @Bind Node node) {
        throw SLException.typeError(node, "-", operand);
    }
}
