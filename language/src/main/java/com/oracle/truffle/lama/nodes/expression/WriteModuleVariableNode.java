package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.Assumption;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.lama.LamaLanguage;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.runtime.LamaContext;
import com.oracle.truffle.lama.runtime.LamaContext.VarTableRef;

@NodeChild("valueNode")
public abstract class WriteModuleVariableNode extends LamaExpressionNode {
    protected final String variableName;
    protected final String currentModule;

    protected WriteModuleVariableNode(String variableName, String currentModule) {
        this.variableName = variableName;
        this.currentModule = currentModule;
    }

    /** Single-context fast path; see {@link ReadModuleVariableNode#readSingleContext}. */
    @SuppressWarnings("truffle-neverdefault")
    @Specialization(assumptions = "singleContextAssumption()")
    public Object writeSingleContext(
            Object valueNode,
            @Bind LamaContext context,
            @Bind Node node,
            @Cached("resolveTable(context, currentModule, variableName, node)") DynamicObject table,
            @CachedLibrary("table") DynamicObjectLibrary dynamicObjects
    ) {
        dynamicObjects.put(table, variableName, valueNode);
        return valueNode;
    }

    /** Multi-context path; see {@link ReadModuleVariableNode#readMultiContext}. */
    @SuppressWarnings("truffle-neverdefault")
    @Specialization(replaces = "writeSingleContext")
    public Object writeMultiContext(
            Object valueNode,
            @Bind LamaContext context,
            @Bind Node node,
            @Cached("resolveRef(context, currentModule, variableName, node)") VarTableRef ref,
            @CachedLibrary(limit = "3") DynamicObjectLibrary dynamicObjects
    ) {
        dynamicObjects.put(context.varTableFor(ref), variableName, valueNode);
        return valueNode;
    }

    protected Assumption singleContextAssumption() {
        return LamaLanguage.get(this).getSingleContextAssumption();
    }

    static DynamicObject resolveTable(LamaContext context, String currentModule, String variableName, Node node) {
        return context.varTableFor(context.resolveTableRef(currentModule, variableName, node));
    }

    static VarTableRef resolveRef(LamaContext context, String currentModule, String variableName, Node node) {
        return context.resolveTableRef(currentModule, variableName, node);
    }
}
