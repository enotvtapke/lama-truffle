package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.TruffleFile;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaContext;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "fexists")
public abstract class LamaFexistsBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long exists(LamaString fname, @Bind LamaContext context) {
        TruffleFile file = context.getEnv().getPublicTruffleFile(fname.toString());
        return file.exists() ? 1L : 0L;
    }
}
