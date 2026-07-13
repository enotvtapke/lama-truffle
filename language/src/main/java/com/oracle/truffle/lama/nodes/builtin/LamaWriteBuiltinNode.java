package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaContext;

@NodeInfo(shortName = "write")
public abstract class LamaWriteBuiltinNode extends LamaBuiltinNode {
    @Specialization
    public static long doWrite(long arg, @Bind LamaContext context) {
        context.println(arg);
        return 0;
    }
}
