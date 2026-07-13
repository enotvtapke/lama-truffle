package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.runtime.lama.LamaFormat;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "assert")
public final class LamaAssertBuiltinNode extends LamaBuiltinNode {

    @Override
    public Object execute(VirtualFrame frame, Object... args) {
        if (args.length < 1) {
            throw LamaException.create("assert: missing condition", this);
        }
        if (!(args[0] instanceof Long cond)) {
            throw LamaException.typeError(this, args[0]);
        }
        if (cond != 0) {
            return 0L;
        }
        throw fail(args);
    }

    @TruffleBoundary
    private RuntimeException fail(Object[] args) {
        if (args.length == 1) {
            return LamaException.create("assertion failed", this);
        }
        if (!(args[1] instanceof LamaString fmt)) {
            return LamaException.typeError(this, args[1]);
        }
        String msg = LamaFormat.format(fmt.toString(), args, 2);
        return LamaException.create("*** FAILURE: " + msg, this);
    }
}
