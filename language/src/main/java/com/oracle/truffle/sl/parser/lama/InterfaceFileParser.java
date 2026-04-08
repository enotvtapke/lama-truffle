package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.sl.parser.lama.InfixTable.Associativity;

import java.util.ArrayList;
import java.util.List;

public final class InterfaceFileParser {

    public enum Position { AT, BEFORE, AFTER }

    public record InfixEntry(Associativity associativity, String operator, Position position, String referenceOperator) {}

    public record InterfaceFile(List<String> imports, List<InfixEntry> infixEntries) {}

    public static InterfaceFile parse(String content) {
        List<String> imports = new ArrayList<>();
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
                default -> {
                    // F (function), V (variable), and other entries are not needed at parse time
                }
            }
        }

        return new InterfaceFile(imports, infixEntries);
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
