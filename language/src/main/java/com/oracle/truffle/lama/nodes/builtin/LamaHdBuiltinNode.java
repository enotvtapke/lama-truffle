package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaArray;
import com.oracle.truffle.lama.runtime.LamaSExpr;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "hd")
public abstract class LamaHdBuiltinNode extends LamaBuiltinNode {

    @Specialization(guards = "value == 0")
    public Object hdEmpty(@SuppressWarnings("unused") long value) {
        throw LamaException.create("hd: empty list", this);
    }

    @Specialization
    public long hdString(LamaString s) {
        if (s.length() < 1) {
            throw LamaException.create("hd: empty string", this);
        }
        return s.readByte(0);
    }

    @Specialization
    public Object hdArray(LamaArray a) {
        if (a.getSize() < 1) {
            throw LamaException.create("hd: empty array", this);
        }
        return a.readElement(0);
    }

    @Specialization
    public Object hdSExpr(LamaSExpr e) {
        if (e.elements.length < 1) {
            throw LamaException.create("hd: s-expression has no elements", this);
        }
        return e.elements[0];
    }

    @Fallback
    public Object hdBad(@SuppressWarnings("unused") Object value) {
        throw LamaException.create("hd: expected non-empty list", this);
    }
}
