package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaHashLib;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "tagHash")
public abstract class LamaTagHashBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long hash(LamaString s) {
        try {
            return LamaHashLib.tagHash(s.toString());
        } catch (IllegalArgumentException e) {
            throw SLException.create("tagHash: " + e.getMessage(), this);
        }
    }
}
