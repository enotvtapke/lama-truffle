package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

// TODO Probably now writes to variables from current module won't be seen by other modules. Boxing can be used to resolve
@NodeChild("valueNode")
public abstract class WriteModuleVariableNode extends LamaExpressionNode {
    private final TruffleString variableName;
    protected final DynamicObject localScope;

    protected WriteModuleVariableNode(TruffleString variableName, DynamicObject localScope) {
        this.variableName = variableName;
        this.localScope = localScope;
    }

    @Specialization
    public Object writeObject(Object valueNode, @CachedLibrary("localScope") DynamicObjectLibrary dynamicObjects) {
        dynamicObjects.put(localScope, variableName, valueNode);
        return valueNode;
    }
}
