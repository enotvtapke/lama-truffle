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
import java.io.OutputStream;
import java.nio.file.StandardOpenOption;

@NodeInfo(shortName = "fwrite")
public abstract class LamaFwriteBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long write(LamaString fname, LamaString contents, @Bind LamaContext context) {
        TruffleFile file = context.getEnv().getPublicTruffleFile(fname.toString());
        try (OutputStream os = file.newOutputStream(StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE)) {
            os.write(contents.getBytes());
        } catch (IOException e) {
            throw SLException.create("fwrite: " + e.getMessage(), this);
        }
        return 0L;
    }
}
