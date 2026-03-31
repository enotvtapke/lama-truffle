package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.nodes.lama.LamaBinaryExpressionNode;

@NodeInfo(shortName = "<")
public abstract class LamaLessNode extends LamaBinaryExpressionNode {

    @Specialization
    public static long doLong(long left, long right) {
        return left < right ? 1L : 0L;
    }

    @Fallback
    public static Object typeError(Object left, Object right, @Bind Node node) {
        throw SLException.typeError(node, "<", left, right);
    }
}
