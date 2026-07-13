package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaContext;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "getEnv")
public abstract class LamaGetEnvBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public Object getEnv(LamaString name, @Bind LamaContext context) {
        String v = context.getEnv().getEnvironment().get(name.toString());
        return v == null ? 0L : LamaString.from(v);
    }
}
