package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

public abstract class ReadModuleVariableNode extends LamaExpressionNode {
    protected final String variableName;
    protected final String currentModule;

    protected ReadModuleVariableNode(String variableName, String currentModule) {
        this.variableName = variableName;
        this.currentModule = currentModule;
    }

    @Specialization
    public Object readObject(
            @CachedLibrary(limit = "3") DynamicObjectLibrary dynamicObjects,
            @Bind LamaContext context,
            @Cached(value = "context.findModuleDeclaringVariable(currentModule, variableName)", neverDefault = true)
            DynamicObject module
    ) {
        return dynamicObjects.getOrDefault(module, variableName, null);
    }
}
