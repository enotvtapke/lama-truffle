package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.runtime.LamaContext;
import com.oracle.truffle.lama.runtime.LamaContext.VarTableRef;

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
            @Bind Node node,
            @Cached(value = "resolveRef(context, currentModule, variableName, node)")
            VarTableRef ref
    ) {
        DynamicObject module = context.varTableFor(ref);
        return dynamicObjects.getOrDefault(module, variableName, null);
    }

    static LamaContext.VarTableRef resolveRef(LamaContext context, String currentModule, String variableName, Node node) {
        return context.resolveTableRef(currentModule, variableName, node);
    }
}
