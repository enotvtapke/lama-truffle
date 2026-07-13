package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.TruffleFile;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaContext;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.io.IOException;

@NodeInfo(shortName = "fdelete")
public abstract class LamaFdeleteBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long delete(LamaString fname, @Bind LamaContext context) {
        TruffleFile file = context.getEnv().getPublicTruffleFile(fname.toString());
        try {
            file.delete();
        } catch (IOException e) {
            throw SLException.create("fdelete: " + e.getMessage(), this);
        }
        return 0L;
    }
}
