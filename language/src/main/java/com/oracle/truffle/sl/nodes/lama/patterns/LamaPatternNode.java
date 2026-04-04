package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;

public abstract class LamaPatternNode extends Node {
    public abstract boolean executeMatch(Object targetValue);
    public abstract void executeBind(VirtualFrame frame, Object targetValue);
}