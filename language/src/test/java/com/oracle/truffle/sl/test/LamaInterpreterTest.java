package com.oracle.truffle.sl.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.io.IOAccess;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;

@RunWith(Parameterized.class)
public class LamaInterpreterTest {

    private static final Path TESTS_DIR = Paths.get("tests", "lama");
    private static final List<String> IGNORED_TESTS = List.of("test054", "test111", "test110", "test803");

    private final Path lamaFile;
    private final Path inputFile;
    private final Path expectedFile;
    private final String testName;

    public LamaInterpreterTest(String testName, Path lamaFile, Path inputFile, Path expectedFile) {
        this.lamaFile = lamaFile;
        this.inputFile = inputFile;
        this.expectedFile = expectedFile;
        this.testName = testName;
    }

    @Parameterized.Parameters(name = "{0}")
    public static Collection<Object[]> data() throws IOException {
        List<Object[]> params = new ArrayList<>();
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(TESTS_DIR, "*.lama")) {
            for (Path lamaFile : stream) {
                String baseName = lamaFile.getFileName().toString().replace(".lama", "");
                if (IGNORED_TESTS.contains(baseName)) continue;
                Path inputFile = lamaFile.resolveSibling(baseName + ".input");
                Path expectedFile = lamaFile.resolveSibling(baseName + ".t");
                if (Files.exists(expectedFile)) {
                    params.add(new Object[]{baseName, lamaFile, inputFile, expectedFile});
                }
            }
        }
        params.sort(Comparator.comparing(a -> ((String) a[0])));
        return params;
    }

    @Test
    public void testInterpreter() throws IOException {
        String input = Files.exists(inputFile) ? Files.readString(inputFile, StandardCharsets.UTF_8) : "";
        String expectedOutput = Files.readString(expectedFile, StandardCharsets.UTF_8);
        System.out.println("Test " + testName + ":");
        System.out.println(Files.readString(lamaFile));
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try (Context context = Context.newBuilder("lama")
                .in(new ByteArrayInputStream(input.getBytes(StandardCharsets.UTF_8)))
                .out(out)
                .allowIO(IOAccess.ALL)
                .build()) {
            Source source = Source.newBuilder("lama", lamaFile.toFile()).build();
            try {
                context.eval(source);
            } catch (PolyglotException e) {
                if (!e.isInternalError()) {
                    new PrintWriter(out, true).println(e.getMessage());
                } else {
                    throw e;
                }
            }
        }

        String actualOutput = out.toString(StandardCharsets.UTF_8);
        Assert.assertEquals(expectedOutput, actualOutput);
    }
}
