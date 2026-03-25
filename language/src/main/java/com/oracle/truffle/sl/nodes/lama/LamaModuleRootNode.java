package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.nodes.lama.builtin.LamaImportNode;
import com.oracle.truffle.sl.runtime.lama.LamaContext;

import static com.oracle.truffle.sl.runtime.lama.Utils.stripFileExtension;

public final class LamaModuleRootNode extends RootNode {

    @Child private LamaExpressionNode body;
    @Children private final LamaImportNode[] imports;
    @CompilationFinal private final SourceSection sourceSection;

    public LamaModuleRootNode(LamaLanguage language, LamaExpressionNode body, LamaImportNode[] imports, SourceSection sourceSection) {
        super(language, new FrameDescriptor());
        this.body = body;
        this.imports = imports;
        this.sourceSection = sourceSection;
    }

    @Override
    public SourceSection getSourceSection() {
        return sourceSection;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        LamaContext context = LamaContext.get(this);
        String moduleName = stripFileExtension(getName());
        var module = context.registerModule(moduleName);
        for (var lamaImport : imports) {
            module.imports.add(lamaImport.moduleName);
            lamaImport.executeGeneric(frame);
        }
        var result = body.executeGeneric(frame);
        context.markEvaluated(moduleName);
        return result;
    }

    @Override
    public String getName() {
        return sourceSection.getSource().getName();
    }
}
