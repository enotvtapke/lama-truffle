package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

import java.io.IOException;

@NodeInfo(shortName = "read")
public abstract class LamaReadBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long doRead(@Bind LamaContext context) {
        if (context.isReadPrompt()) {
            context.getOutput().print("> ");
            context.getOutput().flush();
        }
        try {
            String line = context.getInput().readLine();
            if (line == null) {
                throw LamaException.create("read: unexpected end of input", this);
            }
            return Long.parseLong(line.trim());
        } catch (IOException e) {
            throw LamaException.create("read: " + e.getMessage(), this);
        }
    }
}
