package com.oracle.truffle.sl.test;

import com.oracle.truffle.sl.parser.lama.LamaLexer;
import com.oracle.truffle.sl.parser.lama.LamaParser;
import org.antlr.v4.runtime.*;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;

@RunWith(Parameterized.class)
public class LamaParserTest {

    private final Path testFile;

    public LamaParserTest(String name, Path testFile) {
        this.testFile = testFile;
    }

    @Parameterized.Parameters(name = "{0}")
    public static Collection<Object[]> data() throws IOException {
        Path testsDir = Paths.get("tests", "lama");
        List<Object[]> params = new ArrayList<>();
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(testsDir, "*.lama")) {
            for (Path file : stream) {
                params.add(new Object[]{file.getFileName().toString(), file});
            }
        }
        params.sort(Comparator.comparing(a -> ((String) a[0])));
        return params;
    }

    @Test
    public void testParseWithoutErrors() throws IOException {
        CharStream input = CharStreams.fromPath(testFile);
        LamaLexer lexer = new LamaLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        LamaParser parser = new LamaParser(tokens);

        List<String> errors = new ArrayList<>();
        BaseErrorListener errorListener = new BaseErrorListener() {
            @Override
            public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol,
                                    int line, int charPositionInLine, String msg, RecognitionException e) {
                errors.add(line + ":" + charPositionInLine + " " + msg);
            }
        };

        lexer.removeErrorListeners();
        lexer.addErrorListener(errorListener);
        parser.removeErrorListeners();
        parser.addErrorListener(errorListener);

        parser.lama();

        Assert.assertTrue(
                "Parse errors in " + testFile.getFileName() + ":\n" + String.join("\n", errors),
                errors.isEmpty());
    }
}
