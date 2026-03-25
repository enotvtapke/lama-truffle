package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

@NodeChild("valueNode")
public abstract class WriteModuleVariableNode extends LamaExpressionNode {
    private final TruffleString variableName;
    protected final DynamicObject scope;

    protected WriteModuleVariableNode(TruffleString variableName, DynamicObject scope) {
        this.variableName = variableName;
        this.scope = scope;
    }

    @Specialization
    public Object writeObject(Object valueNode, @CachedLibrary("scope") DynamicObjectLibrary dynamicObjects) {
        dynamicObjects.put(scope, variableName, valueNode);
        return valueNode;
    }
}
