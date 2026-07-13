package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaContext;

@NodeInfo(shortName = "random")
public abstract class LamaRandomBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long rnd(long n, @Bind LamaContext ctx) {
        if (n <= 0) {
            throw invalidRange(n);
        }
        return ctx.nextRandomBelow(n);
    }

    @TruffleBoundary
    private RuntimeException invalidRange(long n) {
        return LamaException.create("invalid range in random: " + n, this);
    }
}
