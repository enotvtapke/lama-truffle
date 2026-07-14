package com.oracle.truffle.lama.parser;

import com.oracle.truffle.lama.parser.InfixTable.Associativity;

import java.util.ArrayList;
import java.util.List;

/**
 * Structured representation of a Lama unit's interface ({@code .i} file): its imports, public
 * variables, public functions (with arity) and infix-operator declarations.
 */
public record InterfaceFile(List<String> imports, List<String> variables, List<FunctionEntry> functions, List<InfixEntry> infixEntries) {

    public enum Position { AT, BEFORE, AFTER }

    public record InfixEntry(Associativity associativity, String operator, Position position, String referenceOperator) {}

    public record FunctionEntry(String name, int arity) {}

    public String toInterfaceString() {
        StringBuilder sb = new StringBuilder();
        for (String imp : imports) {
            sb.append("I,").append(imp).append(";\n");
        }
        for (String variable : variables) {
            sb.append("V,").append(variable).append(";\n");
        }
        for (FunctionEntry function : functions) {
            sb.append("F,").append(function.name()).append(",").append(function.arity()).append(";\n");
        }
        for (InfixEntry infix : infixEntries) {
            sb.append(associativityLetter(infix.associativity()))
              .append(",\"").append(infix.operator()).append("\",")
              .append(positionLetter(infix.position()))
              .append(",\"").append(infix.referenceOperator()).append("\";\n");
        }
        return sb.toString();
    }

    public static InterfaceFile fromInterfaceString(String content) {
        List<String> imports = new ArrayList<>();
        List<String> variables = new ArrayList<>();
        List<FunctionEntry> functions = new ArrayList<>();
        List<InfixEntry> infixEntries = new ArrayList<>();

        for (String line : content.split("\n")) {
            line = line.trim();
            if (line.isEmpty()) continue;
            if (line.endsWith(";")) {
                line = line.substring(0, line.length() - 1);
            }

            List<String> fields = splitFields(line);
            if (fields.isEmpty()) continue;

            switch (fields.getFirst()) {
                case "I" -> {
                    if (fields.size() >= 2) {
                        imports.add(fields.get(1));
                    }
                }
                case "V" -> {
                    if (fields.size() >= 2) {
                        variables.add(unquote(fields.get(1)));
                    }
                }
                case "F" -> {
                    if (fields.size() >= 3) {
                        functions.add(new FunctionEntry(unquote(fields.get(1)), Integer.parseInt(fields.get(2).trim())));
                    }
                }
                case "N", "L", "R" -> {
                    if (fields.size() >= 4) {
                        Associativity assoc = switch (fields.getFirst()) {
                            case "L" -> Associativity.LEFT;
                            case "R" -> Associativity.RIGHT;
                            default -> Associativity.NONE;
                        };
                        String op = unquote(fields.get(1));
                        Position pos = switch (fields.get(2)) {
                            case "T" -> Position.AT;
                            case "B" -> Position.BEFORE;
                            case "A" -> Position.AFTER;
                            default -> throw new RuntimeException("Unknown infix position in interface file: " + fields.get(2));
                        };
                        String refOp = unquote(fields.get(3));
                        infixEntries.add(new InfixEntry(assoc, op, pos, refOp));
                    }
                }
                default -> throw new RuntimeException(String.format("Wrong .i format. Unexpected key %s in interface file:\n%s", fields.getFirst(), content));
            }
        }

        return new InterfaceFile(imports, variables, functions, infixEntries);
    }

    private static String associativityLetter(Associativity associativity) {
        return switch (associativity) {
            case LEFT -> "L";
            case RIGHT -> "R";
            case NONE -> "N";
        };
    }

    private static String positionLetter(Position position) {
        return switch (position) {
            case AT -> "T";
            case BEFORE -> "B";
            case AFTER -> "A";
        };
    }

    private static List<String> splitFields(String line) {
        List<String> fields = new ArrayList<>();
        StringBuilder current = new StringBuilder();
        boolean inQuotes = false;
        for (int i = 0; i < line.length(); i++) {
            char c = line.charAt(i);
            if (c == '"') {
                inQuotes = !inQuotes;
                current.append(c);
            } else if (c == ',' && !inQuotes) {
                fields.add(current.toString().trim());
                current.setLength(0);
            } else {
                current.append(c);
            }
        }
        if (!current.isEmpty()) {
            fields.add(current.toString().trim());
        }
        return fields;
    }

    private static String unquote(String s) {
        if (s.length() >= 2 && s.charAt(0) == '"' && s.charAt(s.length() - 1) == '"') {
            return s.substring(1, s.length() - 1);
        }
        return s;
    }
}
