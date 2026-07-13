package com.oracle.truffle.lama.nodes.builtin;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.runtime.LamaFunction;

import static com.oracle.truffle.lama.runtime.Utils.packScopeIntoArguments;

@NodeInfo(shortName = "force")
public abstract class LamaForceBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public static Object force(LamaFunction f) {
        return f.callTarget.call(packScopeIntoArguments(new Object[0], f.lexicalScope));
    }
}
