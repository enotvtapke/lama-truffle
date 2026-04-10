package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "getEnv")
public abstract class LamaGetEnvBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public Object getEnv(LamaString name) {
        String v = System.getenv(name.toString());
        return v == null ? 0L : LamaString.from(v);
    }
}
