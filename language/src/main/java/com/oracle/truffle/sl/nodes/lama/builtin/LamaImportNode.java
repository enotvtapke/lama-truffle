package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

@NodeInfo(shortName = "import")
public abstract class LamaImportNode extends LamaExpressionNode {
    private final String modulePath;
    // The local scope of the module that is CURRENTLY executing this import
    protected final DynamicObject currentLocalScope;

    public LamaImportNode(String modulePath, DynamicObject currentLocalScope) {
        this.modulePath = modulePath;
        this.currentLocalScope = currentLocalScope;
    }

    @Specialization
    public Object doImportAll(
            @CachedLibrary(limit = "3") DynamicObjectLibrary exportsLib,
            @CachedLibrary("currentLocalScope") DynamicObjectLibrary localLib
    ) {
        LamaContext context = LamaContext.get(this);
        copyExports(context.resolve(modulePath).exports, this.currentLocalScope, exportsLib, localLib);
        return null;
    }

    @TruffleBoundary
    private void copyExports(
            DynamicObject exportScope,
            DynamicObject localScope,
            DynamicObjectLibrary exportsLib,
            DynamicObjectLibrary localLib) {
        Object[] exportedKeys = exportsLib.getKeyArray(exportScope);
        for (Object key : exportedKeys) {
            Object value = exportsLib.getOrDefault(exportScope, key, null);
            localLib.put(localScope, key, value);
        }
    }
}