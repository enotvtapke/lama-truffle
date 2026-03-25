package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

@NodeChild("valueNode")
public abstract class WriteModuleVariableNode extends LamaExpressionNode {
    private final String variableName;
    private final String currentModule;

    protected WriteModuleVariableNode(String variableName, String currentModule) {
        this.variableName = variableName;
        this.currentModule = currentModule;
    }

    @Specialization
    public Object writeObject(
            Object valueNode,
            @CachedLibrary(limit = "3") DynamicObjectLibrary dynamicObjects,
            @Bind LamaContext context,
            @Cached("context.findModuleDeclaringVariable(currentModule, variableName)") DynamicObject module
    ) {
        dynamicObjects.put(module, variableName, valueNode);
        return valueNode;
    }
}
