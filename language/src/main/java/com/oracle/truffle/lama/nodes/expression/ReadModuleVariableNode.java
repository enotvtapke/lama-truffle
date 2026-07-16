package com.oracle.truffle.lama.nodes.expression;

import com.oracle.truffle.api.Assumption;
import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.lama.LamaLanguage;
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

    /**
     * Single-context fast path: with only one context the declaring table
     * object is stable, so cache the concrete {@link DynamicObject} directly.
     * In compiled code it constant-folds and the read is a plain shape lookup
     * with no per-read module resolution. Guarded by the single-context
     * assumption, so it is dropped (in favour of {@link #readMultiContext}) as
     * soon as a second context is created.
     */
    @Specialization(assumptions = "singleContextAssumption()")
    public Object readSingleContext(
            @Bind LamaContext context,
            @Bind Node node,
            @Cached("resolveTable(context, currentModule, variableName, node)") DynamicObject table,
            @CachedLibrary("table") DynamicObjectLibrary dynamicObjects
    ) {
        return dynamicObjects.getOrDefault(table, variableName, null);
    }

    /**
     * Multi-context path (e.g. a shared engine): the concrete table is
     * per-context, but WHICH table a variable resolves to (locals/exports of
     * which module) is fixed by the source, so cache that {@link VarTableRef}
     * and materialize the current context's table with a single lookup instead
     * of re-scanning locals/exports/imports/builtins on every read.
     */
    @Specialization(replaces = "readSingleContext")
    public Object readMultiContext(
            @Bind LamaContext context,
            @Bind Node node,
            @Cached("resolveRef(context, currentModule, variableName, node)") VarTableRef ref,
            @CachedLibrary(limit = "3") DynamicObjectLibrary dynamicObjects
    ) {
        return dynamicObjects.getOrDefault(context.varTableFor(ref), variableName, null);
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
