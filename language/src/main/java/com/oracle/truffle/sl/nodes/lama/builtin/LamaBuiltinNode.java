package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.GenerateInline;
import com.oracle.truffle.api.dsl.GenerateNodeFactory;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.sl.nodes.lama.LamaNode;

@GenerateNodeFactory
@GenerateInline(value = false, inherit = true)
public abstract class LamaBuiltinNode extends LamaNode {

    public abstract Object execute(VirtualFrame frame, Object... arguments);
}
