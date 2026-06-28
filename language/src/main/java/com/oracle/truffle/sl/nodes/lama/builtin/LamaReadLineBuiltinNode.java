package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaContext;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.io.IOException;

@NodeInfo(shortName = "readLine")
public abstract class LamaReadLineBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public Object doReadLine(@Bind LamaContext context) {
        try {
            String line = context.getInput().readLine();
            if (line == null) return 0L;
            return LamaString.from(line);
        } catch (IOException e) {
            throw SLException.create("readLine: " + e.getMessage(), this);
        }
    }
}
