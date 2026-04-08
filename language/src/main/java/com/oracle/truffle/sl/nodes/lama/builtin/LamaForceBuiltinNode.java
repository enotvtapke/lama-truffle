package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;

import static com.oracle.truffle.sl.runtime.lama.Utils.packScopeIntoArguments;

@NodeInfo(shortName = "force")
public abstract class LamaForceBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public Object force(LamaFunction f) {
        return f.callTarget.call(packScopeIntoArguments(new Object[0], f.lexicalScope));
    }
}
