package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

public abstract class DeclareModuleVariableNode extends LamaExpressionNode {
    protected final String variableName;
    protected final String moduleName;
    protected final boolean isPublic;

    protected DeclareModuleVariableNode(String variableName, String moduleName, boolean isPublic) {
        this.variableName = variableName;
        this.moduleName = moduleName;
        this.isPublic = isPublic;
    }

    @Specialization
    public Object declare(@CachedLibrary(limit = "3") DynamicObjectLibrary dynamicObjects, @Bind LamaContext context) {
        var module = context.getModule(moduleName);
        if (dynamicObjects.containsKey(module.locals, variableName) || dynamicObjects.containsKey(module.exports, variableName))
            throw new RuntimeException("Variable '" + variableName + "' is already declared in module " + moduleName);
        if (isPublic) {
            dynamicObjects.put(module.exports, variableName, null);
        } else {
            dynamicObjects.put(module.locals, variableName, null);
        }

        return null;
    }
}
