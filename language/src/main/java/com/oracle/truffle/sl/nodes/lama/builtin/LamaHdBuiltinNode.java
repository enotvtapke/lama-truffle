package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;

@NodeInfo(shortName = "hd")
public abstract class LamaHdBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public Object hdCons(LamaSExpr e) {
        if (!"cons".equals(e.tag) || e.elements.length != 2) {
            throw SLException.create("hd: expected list (cons cell)", this);
        }
        return e.elements[0];
    }

    @Fallback
    public Object hdBad(@SuppressWarnings("unused") Object value) {
        throw SLException.create("hd: expected non-empty list", this);
    }
}
