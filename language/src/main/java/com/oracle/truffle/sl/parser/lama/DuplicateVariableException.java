package com.oracle.truffle.sl.parser.lama;

/**
 * Signals that a variable is declared twice in the same scope. Thrown by {@link LexicalScope},
 * which has no access to the {@link com.oracle.truffle.api.source.Source} or offending token, and
 * caught at the call sites that do so it can be rethrown as a located {@link LamaParseError}.
 */
class DuplicateVariableException extends RuntimeException {
    final String name;

    DuplicateVariableException(String name) {
        super("Variable '" + name + "' is already declared");
        this.name = name;
    }
}
