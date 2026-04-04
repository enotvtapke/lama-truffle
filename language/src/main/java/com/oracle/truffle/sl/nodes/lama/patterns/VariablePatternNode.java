package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "varPattern")
public final class VariablePatternNode extends LamaPatternNode {
    private final int frameSlot; // Index in the VirtualFrame

    public VariablePatternNode(int frameSlot) {
        this.frameSlot = frameSlot;
    }

    @Override
    public boolean executeMatch(Object target) {
        return true; // Variables always match
    }

    @Override
    public void executeBind(VirtualFrame frame, Object target) {
        frame.setObject(frameSlot, target);
    }
}
