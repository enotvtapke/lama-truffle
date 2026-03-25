package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

public abstract class WriteBuiltinNode extends LamaBuiltinNode {
    @Specialization
    public long doWrite(long arg, @Bind LamaContext context) {
        context.getOutput().println(arg);
        return 0;
    }
}
