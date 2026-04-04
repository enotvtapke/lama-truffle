package com.oracle.truffle.sl.nodes.lama.patterns;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;

@NodeInfo(shortName = "wildcardPattern")
public final class WildcardPatternNode extends LamaPatternNode {

    @Override
    public boolean executeMatch(Object target) {
        return true;
    }

    @Override
    public void executeBind(VirtualFrame frame, Object target) {
    }
}
