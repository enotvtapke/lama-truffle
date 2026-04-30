package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.nodes.lama.LamaBinaryExpressionNode;

@NodeInfo(shortName = "!=")
public abstract class LamaNotEqualNode extends LamaBinaryExpressionNode {

    @Specialization
    public static long doLong(long left, long right) {
        return left != right ? 1L : 0L;
    }

    @Specialization
    public static long doGeneric(Object left, Object right) {
        return left != right ? 1L : 0L;
    }
}
