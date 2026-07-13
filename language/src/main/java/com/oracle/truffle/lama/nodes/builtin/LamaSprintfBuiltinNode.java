package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaFormat;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "sprintf")
public final class LamaSprintfBuiltinNode extends LamaBuiltinNode {

    @Override
    public Object execute(VirtualFrame frame, Object... args) {
        if (args.length < 1 || !(args[0] instanceof LamaString fmt)) {
            throw LamaException.typeError(this, args.length > 0 ? args[0] : null);
        }
        return LamaString.from(LamaFormat.format(fmt.toString(), args, 1));
    }
}
