package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.nodes.lama.LamaBinaryExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaString;


@NodeInfo(shortName = "+")
public abstract class LamaAddNode extends LamaBinaryExpressionNode {

    @Specialization
    public static long doLong(long left, long right) {
        return left + right;
    }

    @Specialization
    public static LamaString doString(LamaString left, LamaString right) {
        return LamaString.concat(left, right);
    }

    @Fallback
    public static Object typeError(Object left, Object right, @Bind Node node) {
        throw SLException.typeError(node, "+", left, right);
    }
}
