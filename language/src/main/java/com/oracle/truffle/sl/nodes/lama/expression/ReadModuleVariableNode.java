package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

public abstract class ReadModuleVariableNode extends LamaExpressionNode {
    private final TruffleString variableName;
    protected final DynamicObject localScope;

    protected ReadModuleVariableNode(TruffleString variableName, DynamicObject localScope) {
        this.variableName = variableName;
        this.localScope = localScope;
    }

    @Specialization
    public Object readObject(@CachedLibrary("localScope") DynamicObjectLibrary dynamicObjects) {
        Object value = dynamicObjects.getOrDefault(localScope, variableName, null);

        if (value == null) {
            CompilerDirectives.transferToInterpreter();
            throw new RuntimeException("Undefined module variable: " + variableName.toJavaStringUncached());
        }

        return value;
    }
}
