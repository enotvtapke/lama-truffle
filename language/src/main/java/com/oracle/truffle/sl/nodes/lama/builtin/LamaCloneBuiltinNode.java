package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.runtime.lama.LamaException;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;
import com.oracle.truffle.sl.runtime.lama.LamaString;

import java.util.Arrays;

@NodeInfo(shortName = "clone")
public abstract class LamaCloneBuiltinNode extends LamaBuiltinNode {

    @Specialization
    public long doLong(long value) {
        return value;
    }

    @Specialization
    @TruffleBoundary
    public LamaString doString(LamaString value) {
        return new LamaString(Arrays.copyOf(value.getBytes(), value.length()));
    }

    @Specialization(guards = "array.isLongStorage()")
    @TruffleBoundary
    public LamaArray doArrayLong(LamaArray array) {
        return new LamaArray(Arrays.copyOf((long[]) array.storage, array.getSize()));
    }

    @Specialization(guards = "array.isObjectStorage()")
    @TruffleBoundary
    public LamaArray doArrayObject(LamaArray array) {
        return new LamaArray(Arrays.copyOf((Object[]) array.storage, array.getSize()));
    }

    @Specialization
    @TruffleBoundary
    public LamaSExpr doSExpr(LamaSExpr value) {
        return new LamaSExpr(value.tag, Arrays.copyOf(value.elements, value.elements.length));
    }

    @Specialization
    @TruffleBoundary
    public LamaFunction doFunction(LamaFunction value) {
        // Reference: `clone` does a memcpy of the closure cell, so each
        // clone owns its copy of the captured-value slots.
        Object[] scope = value.lexicalScope;
        Object[] copy = scope == null ? null : Arrays.copyOf(scope, scope.length);
        return new LamaFunction(value.callTarget, copy);
    }

    @Fallback
    @TruffleBoundary
    public Object doUnsupported(@SuppressWarnings("unused") Object value) {
        throw LamaException.create("clone: unsupported value", this);
    }
}
