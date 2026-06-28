package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.lama.LamaBinaryExpressionNode;

@NodeInfo(shortName = "==")
public abstract class LamaEqualNode extends LamaBinaryExpressionNode {

    @Specialization
    public static long doLong(long left, long right) {
        return left == right ? 1L : 0L;
    }

    @Specialization
    public static long doGeneric(Object left, Object right) {
        if (left instanceof Long l && right instanceof Long r) {
            return l.longValue() == r.longValue() ? 1L : 0L;
        }
        return left == right ? 1L : 0L;
    }
}
