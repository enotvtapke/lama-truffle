package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaString;

import java.util.Locale;

@NodeInfo(shortName = "lowercase")
public abstract class LamaLowercaseBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long lowercase(long n) {
        return Character.toLowerCase((int) n);
    }

    @Specialization
    @TruffleBoundary
    public LamaString lowercase(LamaString s) {
        return LamaString.from(s.toString().toLowerCase(Locale.ROOT));
    }
}
