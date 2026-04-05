package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "matchSubString")
public abstract class LamaMatchSubStringBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long match(LamaString subj, LamaString patt, long pos) {
        int p = Math.toIntExact(pos);
        int n = patt.length();
        if (p < 0 || (long) p + n > subj.length()) {
            return 0L;
        }
        return subj.toString().regionMatches(p, patt.toString(), 0, n) ? 1L : 0L;
    }
}
