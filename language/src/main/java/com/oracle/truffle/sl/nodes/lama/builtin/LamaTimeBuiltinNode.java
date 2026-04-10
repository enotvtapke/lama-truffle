package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

@NodeInfo(shortName = "time")
public abstract class LamaTimeBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long time(@Bind LamaContext ctx) {
        return ctx.elapsedMicrosSinceStart();
    }
}
