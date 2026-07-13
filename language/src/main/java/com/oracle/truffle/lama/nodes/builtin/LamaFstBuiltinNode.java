package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaArray;
import com.oracle.truffle.lama.runtime.LamaSExpr;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "fst")
public abstract class LamaFstBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long fstString(LamaString s) {
        if (s.length() == 0) {
            throw LamaException.create("fst: empty string", this);
        }
        return s.readByte(0);
    }

    @Specialization
    public Object fstArray(LamaArray a) {
        if (a.getSize() < 1) {
            throw LamaException.create("fst: empty array", this);
        }
        return a.readElement(0);
    }

    @Specialization
    public Object fstSExpr(LamaSExpr e) {
        if (e.elements.length < 1) {
            throw LamaException.create("fst: s-expression has no elements", this);
        }
        return e.elements[0];
    }

    @Fallback
    public Object fstBad(@SuppressWarnings("unused") Object value) {
        throw LamaException.create("fst: unsupported boxed value", this);
    }
}
