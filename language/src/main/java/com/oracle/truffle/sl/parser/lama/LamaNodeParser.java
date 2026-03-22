package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.runtime.lama.LamaModuleObject;

public class LamaNodeParser extends LamaBaseVisitor<Void> {
    private final LamaLanguage language;
    private final Source source;
    private final LamaModuleObject moduleObject;

    public LamaNodeParser(LamaLanguage language, Source source, LamaModuleObject moduleObject) {
        this.language = language;
        this.source = source;
        this.moduleObject = moduleObject;
    }

    public LamaExpressionNode[] parseLama() {
        return null;
    }
}
