package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.util.Locale;

@NodeInfo(shortName = "uppercase")
public abstract class LamaUppercaseBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long uppercase(long n) {
        return Character.toUpperCase((int) n);
    }

    @Specialization
    @TruffleBoundary
    public LamaString uppercase(LamaString s) {
        return LamaString.from(s.toString().toUpperCase(Locale.ROOT));
    }
}
