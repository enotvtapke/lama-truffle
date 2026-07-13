package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.nodes.LamaBinaryExpressionNode;

@NodeInfo(shortName = "-")
public abstract class LamaSubNode extends LamaBinaryExpressionNode {

    @Specialization
    public static long doLong(long left, long right) {
        return left - right;
    }

    @Fallback
    public static Object typeError(Object left, Object right, @Bind Node node) {
        throw LamaException.typeError(node, "-", left, right);
    }
}
