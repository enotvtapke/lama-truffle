package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.runtime.LamaArray;
import com.oracle.truffle.lama.runtime.LamaException;
import com.oracle.truffle.lama.runtime.LamaSExpr;
import com.oracle.truffle.lama.runtime.LamaString;

@NodeInfo(shortName = "[]")
@NodeChild(value = "arrayNode")
@NodeChild(value = "indexNode")
public abstract class LamaArrayReadNode extends LamaExpressionNode {

    @Specialization(guards = "array.isLongStorage()")
    protected long readLong(LamaArray array, long index) {
        long[] storage = (long[]) array.storage;
        LamaException.checkIndex(index, storage.length, this);
        return storage[Math.toIntExact(index)];
    }

    @Specialization(guards = "array.isObjectStorage()")
    protected Object readObject(LamaArray array, long index) {
        Object[] storage = (Object[]) array.storage;
        LamaException.checkIndex(index, storage.length, this);
        return storage[Math.toIntExact(index)];
    }

    @Specialization
    protected long readFromString(LamaString string, long index) {
        LamaException.checkIndex(index, string.length(), this);
        return string.readByte(Math.toIntExact(index));
    }

    @Specialization
    protected Object readFromSExpr(LamaSExpr sExpr, long index) {
        LamaException.checkIndex(index, sExpr.elements.length, this);
        return sExpr.elements[Math.toIntExact(index)];
    }
}
