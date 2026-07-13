package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "infix_++")
public abstract class LamaStringConcatNode extends LamaBuiltinNode {

    @Specialization
    public static LamaString doString(LamaString left, LamaString right) {
        return LamaString.concat(left, right);
    }

    @Fallback
    public static Object typeError(Object left, Object right, @Bind Node node) {
        throw LamaException.typeError(node, "infix_++", left, right);
    }
}
