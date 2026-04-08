package com.oracle.truffle.sl.parser.lama;

import java.util.*;

public final class InfixTable {
    static final List<String> BUILTIN_INFIX_OPERATORS = createDefault().levels.stream().flatMap(l -> l.operators.stream()).toList();

    public enum Associativity { LEFT, RIGHT, NONE }

    public record OperatorInfo(int precedence, Associativity associativity) {}

    record Level(Associativity associativity, List<String> operators) {}

    private final List<Level> levels;

    private InfixTable(List<Level> levels) {
        this.levels = levels;
    }

    @SafeVarargs
    private static <T> List<T> arrayList(T... a) {
        return new ArrayList<>(Arrays.asList(a));
    }

    public static InfixTable createDefault() {
        List<Level> levels = new ArrayList<>();
        levels.add(new Level(Associativity.RIGHT, arrayList(":=")));
        levels.add(new Level(Associativity.RIGHT, arrayList(":")));
        levels.add(new Level(Associativity.LEFT, arrayList("!!")));
        levels.add(new Level(Associativity.LEFT, arrayList("&&")));
        levels.add(new Level(Associativity.NONE, arrayList("==", "!=", "<=", "<", ">=", ">")));
        levels.add(new Level(Associativity.LEFT, arrayList("+", "-")));
        levels.add(new Level(Associativity.LEFT, arrayList("*", "/", "%")));
        return new InfixTable(levels);
    }

    public OperatorInfo lookup(String op) {
        for (int i = 0; i < levels.size(); i++) {
            Level level = levels.get(i);
            for (var entry : level.operators()) {
                if (entry.equals(op)) {
                    return new OperatorInfo(i, level.associativity());
                }
            }
        }
        return null;
    }

    public void addAt(String newOp, String refOp) {
        int refIdx = findLevel(refOp);
        levels.get(refIdx).operators.add(newOp);
    }

    public void addBefore(String newOp, String refOp, Associativity assoc) {
        int refIdx = findLevel(refOp);
        levels.add(refIdx, new Level(assoc, arrayList(newOp)));
    }

    public void addAfter(String newOp, String refOp, Associativity assoc) {
        int refIdx = findLevel(refOp);
        levels.add(refIdx + 1, new Level(assoc, arrayList(newOp)));
    }

    /**
     * Mangles an operator symbol into a variable name, matching the Lama compiler convention:
     * "i__Infix_" followed by ASCII codes of each character.
     */
    public static String infixName(String op) {
        return "infix_" + op;
    }

    private int findLevel(String op) {
        for (int i = 0; i < levels.size(); i++) {
            for (var entry : levels.get(i).operators()) {
                if (entry.equals(op)) {
                    return i;
                }
            }
        }
        throw notFoundException(op);
    }

    private static IllegalArgumentException notFoundException(String op) {
        return new IllegalArgumentException("Operator '" + op + "' not found in infix table");
    }
}
