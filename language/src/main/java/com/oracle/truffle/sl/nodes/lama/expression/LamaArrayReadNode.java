package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "[]")
@NodeChild(value = "arrayNode")
@NodeChild(value = "indexNode")
public abstract class LamaArrayReadNode extends LamaExpressionNode {

    @Specialization(guards = "array.isLongStorage()")
    protected long readLong(LamaArray array, long index) {
        return ((long[]) array.storage)[Math.toIntExact(index)];
    }

    @Specialization(guards = "array.isObjectStorage()")
    protected Object readObject(LamaArray array, long index) {
        return ((Object[]) array.storage)[Math.toIntExact(index)];
    }

    @Specialization
    protected long readFromString(LamaString string, long index) {
        return string.readByte(Math.toIntExact(index));
    }
}
