package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.nodes.lama.LamaBinaryExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaException;

@NodeInfo(shortName = "/")
public abstract class LamaDivNode extends LamaBinaryExpressionNode {

    @Specialization
    public static long doLong(long left, long right, @Bind Node node) {
        if (right == 0) {
            CompilerDirectives.transferToInterpreter();
            throw LamaException.create("Division by zero", node);
        }
        return left / right;
    }

    @Fallback
    public static Object typeError(Object left, Object right, @Bind Node node) {
        throw LamaException.typeError(node, "/", left, right);
    }
}
