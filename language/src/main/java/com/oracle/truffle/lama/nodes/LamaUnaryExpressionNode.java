package com.oracle.truffle.lama.nodes;

import com.oracle.truffle.api.dsl.NodeChild;

@NodeChild("operandNode")
public abstract class LamaUnaryExpressionNode extends LamaExpressionNode {}
