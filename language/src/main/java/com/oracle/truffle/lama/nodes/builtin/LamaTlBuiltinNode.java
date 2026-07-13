package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaArray;
import com.oracle.truffle.lama.runtime.LamaSExpr;
import com.oracle.truffle.lama.runtime.LamaString;

/**
 * Reference: {@code Ltl(v) = Belem(v, BOX(1))}. For arrays and strings,
 * {@code Belem} returns the element at index 1 (not the "rest" of the
 * sequence). Only S-expression cons cells produce a list-like tail.
 */
@NodeInfo(shortName = "tl")
public abstract class LamaTlBuiltinNode extends LamaBuiltinNode {

    @Specialization(guards = "value == 0")
    public Object tlEmpty(@SuppressWarnings("unused") long value) {
        throw LamaException.create("tl: empty list", this);
    }

    @Specialization
    public long tlString(LamaString s) {
        if (s.length() < 2) {
            throw LamaException.create("tl: string too short", this);
        }
        return s.readByte(1);
    }

    @Specialization
    public Object tlArray(LamaArray a) {
        if (a.getSize() < 2) {
            throw LamaException.create("tl: array too short", this);
        }
        return a.readElement(1);
    }

    @Specialization
    public Object tlSExpr(LamaSExpr e) {
        if (e.elements.length < 2) {
            throw LamaException.create("tl: expected cons cell or non-empty s-expression", this);
        }
        return e.elements[1];
    }

    @Fallback
    public Object tlBad(@SuppressWarnings("unused") Object value) {
        throw LamaException.create("tl: expected non-empty list", this);
    }
}
