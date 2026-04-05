package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaRegexpHandle;
import com.oracle.truffle.sl.runtime.lama.LamaRuntimeLib;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "regexpMatch")
public abstract class LamaRegexpMatchBuiltinNode extends LamaBuiltinNode {

    @Specialization
    @TruffleBoundary
    public long match(LamaRegexpHandle pat, LamaString subj, long pos) {
        String text = subj.toString();
        int i = Math.toIntExact(pos);
        if (i < 0 || i > text.length()) {
            return -1;
        }
        var p = pat.pattern;
        var m = p.matcher(text);
        m.region(i, text.length());
        if (m.lookingAt()) {
            return m.end() - m.start();
        }
        return -1;
    }
}
