package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.DirectCallNode;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "scope")
public final class LamaScopeNode extends LamaExpressionNode {
    @Child private DirectCallNode body;

    public LamaScopeNode(CallTarget body) {
        this.body = DirectCallNode.create(body);
    }

    @Override
    public Object executeGeneric(VirtualFrame frame) {
        return body.call(frame.materialize());
    }
}
