package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "@")
public final class AsPatternNode extends LamaPatternNode {
    private final int frameSlot;
    @Child private LamaPatternNode childPattern;

    public AsPatternNode(int frameSlot, LamaPatternNode childPattern) {
        this.frameSlot = frameSlot;
        this.childPattern = childPattern;
    }

    @Override
    public boolean executeMatch(Object target) {
        return childPattern.executeMatch(target);
    }

    @Override
    public void executeBind(VirtualFrame frame, Object target) {
        frame.setObject(frameSlot, target);
        childPattern.executeBind(frame, target);
    }
}
