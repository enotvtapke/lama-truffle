package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.sl.LamaLanguage;
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
            @Bind Node node,
            @Cached(value = "resolveTableCached(context, currentModule, variableName, node)")
            DynamicObject cachedTable
    ) {
        // The declaring table is per-context, so it can be cached in this
        // (potentially shared, ContextPolicy.SHARED) node ONLY while there is a
        // single context; otherwise resolve it per execution. See
        // SLFunctionLiteralNode for the same idiom.
        DynamicObject module = cachedTable != null
                ? cachedTable
                : context.findModuleDeclaringVariable(currentModule, variableName, node);
        return dynamicObjects.getOrDefault(module, variableName, null);
    }

    static DynamicObject resolveTableCached(LamaContext context, String currentModule, String variableName, Node node) {
        if (LamaLanguage.get(node).isSingleContext()) {
            return context.findModuleDeclaringVariable(currentModule, variableName, node);
        }
        return null;
    }
}
