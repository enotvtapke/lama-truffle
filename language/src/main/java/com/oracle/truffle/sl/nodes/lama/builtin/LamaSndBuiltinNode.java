package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.util.Arrays;

@NodeInfo(shortName = "snd")
public abstract class LamaSndBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public LamaString sndString(LamaString s) {
        if (s.length() < 2) {
            throw SLException.create("snd: string too short", this);
        }
        byte[] b = s.getBytes();
        return new LamaString(Arrays.copyOfRange(b, 1, b.length));
    }

    @Specialization
    public Object sndArray(LamaArray a) {
        if (a.getSize() < 2) {
            throw SLException.create("snd: array too short", this);
        }
        return a.readElement(1);
    }

    @Specialization
    public Object sndSExpr(LamaSExpr e) {
        if (e.elements.length < 2) {
            throw SLException.create("snd: s-expression too short", this);
        }
        return e.elements[1];
    }

    @Fallback
    public Object sndBad(@SuppressWarnings("unused") Object value) {
        throw SLException.create("snd: unsupported boxed value", this);
    }
}
