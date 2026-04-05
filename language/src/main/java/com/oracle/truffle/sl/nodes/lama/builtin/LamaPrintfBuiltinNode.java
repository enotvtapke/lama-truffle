package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaContext;
import com.oracle.truffle.sl.runtime.lama.LamaFormat;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "printf")
public final class LamaPrintfBuiltinNode extends LamaBuiltinNode {

    @Override
    public Object execute(VirtualFrame frame, Object... args) {
        if (args.length < 1 || !(args[0] instanceof LamaString fmt)) {
            throw SLException.typeError(this, args.length > 0 ? args[0] : null);
        }
        LamaContext ctx = LamaContext.get(this);
        ctx.getOutput().print(LamaFormat.format(fmt.toString(), args, 1));
        ctx.getOutput().flush();
        return 0L;
    }
}
