package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaFormat;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "failure")
public final class LamaFailureBuiltinNode extends LamaBuiltinNode {

    @Override
    public Object execute(VirtualFrame frame, Object... args) {
        if (args.length < 1 || !(args[0] instanceof LamaString fmt)) {
            throw SLException.typeError(this, args.length > 0 ? args[0] : null);
        }
        throw fail(fmt, args);
    }

    @TruffleBoundary
    private RuntimeException fail(LamaString fmt, Object[] args) {
        String body = LamaFormat.format(fmt.toString(), args, 1);
        return SLException.create("*** FAILURE: " + body, this);
    }
}
