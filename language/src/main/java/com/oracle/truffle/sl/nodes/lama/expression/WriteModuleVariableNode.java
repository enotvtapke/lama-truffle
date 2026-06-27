package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

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
            @Cached(value = "resolveTableCached(context, currentModule, variableName, node)")
            DynamicObject cachedTable
    ) {
        // Cache the per-context declaring table only while single-context;
        // otherwise resolve per execution (see ReadModuleVariableNode).
        DynamicObject module = cachedTable != null
                ? cachedTable
                : context.findModuleDeclaringVariable(currentModule, variableName, node);
        dynamicObjects.put(module, variableName, valueNode);
        return valueNode;
    }

    static DynamicObject resolveTableCached(LamaContext context, String currentModule, String variableName, Node node) {
        if (LamaLanguage.get(node).isSingleContext()) {
            return context.findModuleDeclaringVariable(currentModule, variableName, node);
        }
        return null;
    }
}
