package com.oracle.truffle.sl.parser.lama;

public sealed interface VariableRef permits VariableRef.LocalVariable, VariableRef.GlobalVariable {
    record LocalVariable(int slotIndex, int lexicalDepth) implements VariableRef {}
    record GlobalVariable(String name) implements VariableRef {}
}
