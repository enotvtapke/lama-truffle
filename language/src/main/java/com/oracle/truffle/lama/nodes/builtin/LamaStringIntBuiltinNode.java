package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "stringInt")
public abstract class LamaStringIntBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long stringInt(LamaString s) {
        try {
            return Long.parseLong(s.toString().trim());
        } catch (NumberFormatException e) {
            throw LamaException.create("stringInt: invalid number: " + s, this);
        }
    }
}
