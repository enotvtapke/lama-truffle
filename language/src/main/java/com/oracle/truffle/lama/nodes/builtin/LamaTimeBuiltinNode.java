package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaContext;

@NodeInfo(shortName = "time")
public abstract class LamaTimeBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public static long time(@Bind LamaContext ctx) {
        return ctx.elapsedMicrosSinceStart();
    }
}
