package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.SExpr;

public class LamaCreateSExprNode extends LamaExpressionNode {
    private final String tag;
    @Children private final LamaExpressionNode[] elementNodes;

    public LamaCreateSExprNode(String tag, LamaExpressionNode[] elementNodes) {
        this.tag = tag;
        this.elementNodes = elementNodes;
    }

    @ExplodeLoop
    @Override
    public SExpr executeGeneric(VirtualFrame frame) {
        Object[] elements = new Object[elementNodes.length];
        for (int i = 0; i < elementNodes.length; i++) {
            elements[i] = elementNodes[i].executeGeneric(frame);
        }
        return new SExpr(tag, elements);
    }
}
