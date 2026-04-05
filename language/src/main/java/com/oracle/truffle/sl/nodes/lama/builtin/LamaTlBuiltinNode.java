package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;

import java.util.Arrays;

@NodeInfo(shortName = "tl")
public abstract class LamaTlBuiltinNode extends LamaBuiltinNode {

    @Specialization(guards = "value == 0")
    public Object tlEmpty(@SuppressWarnings("unused") long value) {
        throw SLException.create("tl: empty list", this);
    }

    @Specialization
    @TruffleBoundary
    public LamaArray tlArray(LamaArray a) {
        if (a.getSize() < 1) {
            throw SLException.create("tl: empty array", this);
        }
        int n = a.getSize() - 1;
        if (n == 0) {
            return new LamaArray(0);
        }
        Object[] src = (Object[]) a.storage;
        return new LamaArray(Arrays.copyOfRange(src, 1, src.length));
    }

    @Specialization
    public Object tlCons(LamaSExpr e) {
        if (!"cons".equals(e.tag) || e.elements.length != 2) {
            throw SLException.create("tl: expected list (cons cell)", this);
        }
        return e.elements[1];
    }

    @Fallback
    public Object tlBad(@SuppressWarnings("unused") Object value) {
        throw SLException.create("tl: expected non-empty list", this);
    }
}
