package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.TruffleFile;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaContext;
import com.oracle.truffle.sl.runtime.lama.LamaFileHandle;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.StandardOpenOption;

@NodeInfo(shortName = "fopen")
public abstract class LamaFopenBuiltinNode extends LamaBuiltinNode {
    @Specialization
    @TruffleBoundary
    public LamaFileHandle open(LamaString path, LamaString mode, @Bind LamaContext ctx) {
        TruffleFile tf = ctx.getEnv().getPublicTruffleFile(path.toString());
        String m = mode.toString().trim();
        try {
            if (m.startsWith("r")) {
                var in = tf.newInputStream(StandardOpenOption.READ);
                return new LamaFileHandle(new BufferedReader(new InputStreamReader(in, StandardCharsets.US_ASCII)), null);
            }
            if (m.startsWith("w")) {
                var out = tf.newOutputStream(StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE);
                return new LamaFileHandle(null, new PrintWriter(new OutputStreamWriter(out, StandardCharsets.US_ASCII), true));
            }
            if (m.startsWith("a")) {
                var out = tf.newOutputStream(StandardOpenOption.CREATE, StandardOpenOption.APPEND);
                return new LamaFileHandle(null, new PrintWriter(new OutputStreamWriter(out, StandardCharsets.US_ASCII), true));
            }
        } catch (java.io.IOException e) {
            throw SLException.create("fopen (\"" + path + "\", \"" + mode + "\"): " + e.getMessage(), this);
        }
        throw SLException.create("fopen: unsupported mode \"" + mode + "\"", this);
    }
}
