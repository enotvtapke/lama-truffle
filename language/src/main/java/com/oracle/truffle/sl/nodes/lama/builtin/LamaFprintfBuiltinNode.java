package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.SLException;
import com.oracle.truffle.sl.runtime.lama.LamaFileHandle;
import com.oracle.truffle.sl.runtime.lama.LamaFormat;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "fprintf")
public final class LamaFprintfBuiltinNode extends LamaBuiltinNode {

    @Override
    public Object execute(VirtualFrame frame, Object... args) {
        if (args.length < 2 || !(args[0] instanceof LamaFileHandle fh) || !(args[1] instanceof LamaString fmt)) {
            throw SLException.typeError(this, args.length > 0 ? args[0] : null);
        }
        fh.writer().print(LamaFormat.format(fmt.toString(), args, 2));
        fh.writer().flush();
        return 0L;
    }
}
