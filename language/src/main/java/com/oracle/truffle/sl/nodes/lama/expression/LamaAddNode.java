package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.nodes.lama.LamaBinaryExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.nio.ByteBuffer;


@NodeInfo(shortName = "+")
//@OperationProxy.Proxyable(allowUncached = true)
public abstract class LamaAddNode extends LamaBinaryExpressionNode {

    @Specialization
    public static long doLong(long left, long right) {
        return left + right;
    }

    @Specialization
    public static LamaString doString(LamaString left, LamaString right) {
        return new LamaString(ByteBuffer.allocate(left.length() + right.length())
                .put(left.getBytes()).put(right.getBytes()).array());
    }

    @Fallback
    public static Object typeError(Object left, Object right, @Bind Node node) {
        throw SLException.typeError(node, "+", left, right);
    }
}
