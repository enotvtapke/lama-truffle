package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "snd")
public abstract class LamaSndBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long sndString(LamaString s) {
        if (s.length() < 2) {
            throw LamaException.create("snd: string too short", this);
        }
        return s.readByte(1);
    }

    @Specialization
    public Object sndArray(LamaArray a) {
        if (a.getSize() < 2) {
            throw LamaException.create("snd: array too short", this);
        }
        return a.readElement(1);
    }

    @Specialization
    public Object sndSExpr(LamaSExpr e) {
        if (e.elements.length < 2) {
            throw LamaException.create("snd: s-expression too short", this);
        }
        return e.elements[1];
    }

    @Fallback
    public Object sndBad(@SuppressWarnings("unused") Object value) {
        throw LamaException.create("snd: unsupported boxed value", this);
    }
}
