package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "stringInt")
public abstract class LamaStringIntBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long stringInt(LamaString s) {
        try {
            return Long.parseLong(s.toString().trim());
        } catch (NumberFormatException e) {
            throw SLException.create("stringInt: invalid number: " + s, this);
        }
    }
}
