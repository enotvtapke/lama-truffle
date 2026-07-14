package com.oracle.truffle.lama.parser;

import com.oracle.truffle.lama.parser.InfixTable.Associativity;
import com.oracle.truffle.lama.parser.InterfaceFile.FunctionEntry;
import com.oracle.truffle.lama.parser.InterfaceFile.InfixEntry;
import com.oracle.truffle.lama.parser.InterfaceFile.Position;

import java.util.ArrayList;
import java.util.List;

public final class InterfaceExtractor {

    private InterfaceExtractor() {
    }

    public static InterfaceFile fromProgram(LamaParser.CompilationUnitContext ctx) {
        List<String> imports = new ArrayList<>();
        List<String> variables = new ArrayList<>();
        List<FunctionEntry> functions = new ArrayList<>();
        List<InfixEntry> infixEntries = new ArrayList<>();

        for (var uident : ctx.UIDENT()) {
            imports.add(uident.getText());
        }
        if (ctx.scopeExpression() != null) {
            for (LamaParser.DefinitionContext def : ctx.scopeExpression().definition()) {
                if (def.functionDefinition() != null) {
                    var fd = def.functionDefinition();
                    if (fd.PUBLIC() != null) {
                        functions.add(new FunctionEntry(fd.LIDENT().getText(), fd.functionArguments().pattern().size()));
                    }
                } else if (def.variableDefinition() != null) {
                    var vd = def.variableDefinition();
                    if (vd.PUBLIC() != null) {
                        for (var item : vd.variableDefinitionSequence().variableDefinitionItem()) {
                            variables.add(item.LIDENT().getText());
                        }
                    }
                } else if (def.infixDefinition() != null) {
                    var id = def.infixDefinition();
                    if (id.PUBLIC() != null) {
                        String op = id.infixOp().getText();
                        Associativity assoc = id.INFIXL() != null ? Associativity.LEFT
                                : id.INFIXR() != null ? Associativity.RIGHT : Associativity.NONE;
                        var posCtx = id.infixPosition();
                        Position pos = posCtx.AT() != null ? Position.AT
                                : posCtx.BEFORE() != null ? Position.BEFORE : Position.AFTER;
                        String refOp = posCtx.infixOp().getText();
                        functions.add(new FunctionEntry(InfixTable.infixName(op), 2));
                        infixEntries.add(new InfixEntry(assoc, op, pos, refOp));
                    }
                }
            }
        }

        return new InterfaceFile(imports, variables, functions, infixEntries);
    }
}
