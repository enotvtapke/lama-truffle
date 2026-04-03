package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@NodeInfo(shortName = "[]=")
@NodeChild(value = "arrayNode")
@NodeChild(value = "indexNode")
@NodeChild(value = "valueNode")
public abstract class LamaArrayWriteNode extends LamaExpressionNode {
    @Specialization(guards = "array.isLongStorage()")
    protected long writeLong(LamaArray array, long index, long value) {
        ((long[]) array.storage)[Math.toIntExact(index)] = value;
        return value;
    }

    @Specialization(guards = "array.isLongStorage()")
    protected Object writeTransition(LamaArray array, long index, Object value) {
        CompilerDirectives.transferToInterpreterAndInvalidate();
        array.transitionToObjectStorage();
        ((Object[]) array.storage)[Math.toIntExact(index)] = value;
        return value;
    }

    @Specialization(guards = "array.isObjectStorage()")
    protected Object writeObject(LamaArray array, long index, Object value) {
        ((Object[]) array.storage)[Math.toIntExact(index)] = value;
        return value;
    }

    @Specialization
    protected long writeToString(LamaString string, long index, long value) {
        string.writeByte(Math.toIntExact(index), (byte) value);
        return value;
    }
}