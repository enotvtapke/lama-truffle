package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaFormat;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "assert")
public final class LamaAssertBuiltinNode extends LamaBuiltinNode {

    @Override
    public Object execute(VirtualFrame frame, Object... args) {
        if (args.length < 1) {
            throw SLException.create("assert: missing condition", this);
        }
        if (!(args[0] instanceof Long cond)) {
            throw SLException.typeError(this, args[0]);
        }
        if (cond != 0) {
            return 0L;
        }

        if (args.length == 1) {
            throw SLException.create("assertion failed", this);
        }
        if (!(args[1] instanceof LamaString fmt)) {
            throw SLException.typeError(this, args[1]);
        }
        String msg = LamaFormat.format(fmt.toString(), args, 2);
        throw SLException.create("*** FAILURE: " + msg, this);
    }
}
