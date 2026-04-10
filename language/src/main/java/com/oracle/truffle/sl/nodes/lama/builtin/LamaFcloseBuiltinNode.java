package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaFileHandle;

import java.io.IOException;

@NodeInfo(shortName = "fclose")
public abstract class LamaFcloseBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long close(LamaFileHandle h) {
        try {
            h.close();
        } catch (IOException e) {
            throw SLException.create("fclose: " + e.getMessage(), this);
        }
        return 0L;
    }
}
