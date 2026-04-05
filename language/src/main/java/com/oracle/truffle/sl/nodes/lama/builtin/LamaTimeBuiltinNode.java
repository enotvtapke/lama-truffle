package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

@NodeInfo(shortName = "time")
public final class LamaTimeBuiltinNode extends LamaBuiltinNode {

    @Override
    public Object execute(VirtualFrame frame, Object... args) {
        return LamaContext.get(this).elapsedMicrosSinceStart();
    }
}
