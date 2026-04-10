package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;

@NodeInfo(shortName = "tl")
public abstract class LamaTlBuiltinNode extends LamaBuiltinNode {

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
