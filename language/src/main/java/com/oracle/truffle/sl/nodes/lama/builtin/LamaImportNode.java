package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.dsl.Bind;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

@NodeInfo(shortName = "import")
public abstract class LamaImportNode extends LamaExpressionNode {
    public final String moduleName;

    public LamaImportNode(String moduleName) {
        this.moduleName = moduleName;
    }

    @Specialization
    public Object doImportAll(@Bind LamaContext context) {
        context.evalModule(moduleName);
        return null;
    }
}