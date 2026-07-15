package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.runtime.LamaContext;

@NodeChild("valueNode")
public abstract class WriteModuleVariableNode extends LamaExpressionNode {
    protected final String variableName;
    protected final String currentModule;

    protected WriteModuleVariableNode(String variableName, String currentModule) {
        this.variableName = variableName;
        this.currentModule = currentModule;
    }

    @SuppressWarnings("truffle-neverdefault")
    @Specialization
    public Object writeObject(
            Object valueNode,
            @CachedLibrary(limit = "3") DynamicObjectLibrary dynamicObjects,
            @Bind LamaContext context,
            @Bind Node node,
            @Cached(value = "resolveRef(context, currentModule, variableName, node)")
            LamaContext.VarTableRef ref
    ) {
        DynamicObject module = context.varTableFor(ref);
        dynamicObjects.put(module, variableName, valueNode);
        return valueNode;
    }

    static LamaContext.VarTableRef resolveRef(LamaContext context, String currentModule, String variableName, Node node) {
        return context.resolveTableRef(currentModule, variableName, node);
    }
}
