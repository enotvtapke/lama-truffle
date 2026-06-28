package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.*;

@NodeInfo(shortName = "string")
public abstract class LamaStringBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public LamaString doValue(Object value) {
        return LamaString.from(new LamaStringifier().stringify(value));
    }
}
