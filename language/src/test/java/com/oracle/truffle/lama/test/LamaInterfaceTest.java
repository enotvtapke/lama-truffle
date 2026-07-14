package com.oracle.truffle.lama.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.io.IOAccess;
import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;

public class LamaInterfaceTest {

    private static final String PROGRAM = """
            import List;
            import Std;

            public pi, e;

            public fun square (x) { x * x }

            fun helper (a, b) { a + b }

            public infixl <+> before + (a, b) { a + b }
            """;

    private static final String EXPECTED_INTERFACE = """
            I,List;
            I,Std;
            V,pi;
            V,e;
            F,square,1;
            F,infix_<+>,2;
            L,"<+>",B,"+";
            """;

    @Test
    public void generatesInterfaceInsteadOfRunning() throws IOException {
        Path dir = Files.createTempDirectory("lama-iface-");
        Path src = dir.resolve("Unit.lama");
        Files.writeString(src, PROGRAM);

        try (Context context = Context.newBuilder("lama")
                .option("lama.GenerateInterface", "true")
                .allowIO(IOAccess.ALL)
                .build()) {
            context.eval(Source.newBuilder("lama", src.toFile()).build());
        }

        Path iface = dir.resolve("Unit.i");
        assertEquals(EXPECTED_INTERFACE, Files.readString(iface));
    }

    @Test
    public void interfaceGenerationDoesNotExecuteProgram() throws IOException {
        Path dir = Files.createTempDirectory("lama-iface-");
        Path src = dir.resolve("Effect.lama");
        Path marker = dir.resolve("marker.tmp");
        Files.writeString(src, "fwrite (\"" + marker.toString().replace("\\", "\\\\") + "\", \"x\")");

        try (Context context = Context.newBuilder("lama")
                .option("lama.GenerateInterface", "true")
                .allowIO(IOAccess.ALL)
                .build()) {
            context.eval(Source.newBuilder("lama", src.toFile()).build());
        }

        assertFalse("program body must not run in interface mode", Files.exists(marker));
        assertEquals("", Files.readString(dir.resolve("Effect.i")));
    }
}
