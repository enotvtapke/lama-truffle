package com.oracle.truffle.sl.test;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.PolyglotException;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.SourceSection;
import org.graalvm.polyglot.io.IOAccess;
import org.junit.Test;

import java.io.ByteArrayOutputStream;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public class LamaErrorTest {

    @Test
    public void divisionByZero() {
        assertRuntimeErrorAt("var x = 10; x / 0", 1, 13, "Division by zero");
    }

    @Test
    public void moduloByZero() {
        assertRuntimeErrorAt("var x = 10; x % 0", 1, 13, "Division by zero");
    }

    @Test
    public void undefinedVariable() {
        assertRuntimeErrorAt("write(missingThing)", 1, 7, "Undefined variable 'missingThing'");
    }

    @Test
    public void arrayIndexOutOfBounds() {
        assertRuntimeErrorAt("var a = [1, 2, 3]; a[10]", 1, 20, "Array index 10 out of bounds for length 3");
    }

    @Test
    public void valueNotCallable() {
        assertRuntimeErrorAt("var x = 5; x(3)", 1, 12, "Value is not callable");
    }

    @Test
    public void sourcelessNodeResolvesToEnclosingCall() {
        assertResolvesToEnclosing("var x = 5;\nx(3)", 2, 1, "x(3)", "Value is not callable");
    }

    @Test
    public void sourcelessNodeResolvesToOuterCallWhenNested() {
        assertResolvesToEnclosing("fun f() { 5 }\nf()(3)", 2, 1, "f()(3)", "Value is not callable");
    }

    @Test
    public void sourcelessNodeResolvesToCallColumnWhenIndented() {
        assertResolvesToEnclosing("var x = 5;\n   x(7)", 2, 4, "x(7)", "Value is not callable");
    }

    @Test
    public void duplicateGlobalVariable() {
        assertRuntimeErrorAt("var x = 1; var x = 2; x", 1, 16, "Variable 'x' is already declared in module");
    }

    @Test
    public void printfInvalidArgument() {
        evalAndAssertErrorWithMessage("printf (\"%d\", \"abc\")", "printf: cannot parse numeric argument 'abc'");
    }

    @Test
    public void duplicateLocalVariable() {
        assertSyntaxError("fun f() { var x = 1; var x = 2; x } f()", "Variable 'x' is already declared");
    }

    @Test
    public void unsupportedAssignmentTarget() {
        assertSyntaxError("var x = 5; (x + 1) := 3", "Unsupported assignment target");
    }

    @Test
    public void infixAtWithExplicitAssociativityRejected() {
        assertSyntaxError("infixl <+> at + (a, b) { a + b * 10 } write(1 <+> 2)",
                "Associativity for infix \"<+>\" cannot be specified with 'at' (it is inherited from \"+\")");
    }

    @Test
    public void malformedSyntax() {
        assertSyntaxError("var x = ", "Error(s) parsing script");
    }

    @Test
    public void parseErrorExposesSourceLocation() {
        PolyglotException e = evalExpectError("var x = 5; (x + 1) := 3");
        SourceSection loc = e.getSourceLocation();
        assertNotNull("parse error should expose a structured source location", loc);
        assertEquals(1, loc.getStartLine());
    }

    private static PolyglotException evalExpectError(String code) {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try (Context context = Context.newBuilder("lama")
                .out(out)
                .err(out)
                .allowIO(IOAccess.ALL)
                .build()) {
            Source source = Source.newBuilder("lama", code, "test.lama").buildLiteral();
            context.eval(source);
        } catch (PolyglotException e) {
            return e;
        }
        throw new AssertionError("Expected an error but evaluation succeeded for: " + code);
    }

    private static void assertRuntimeErrorAt(String code, int line, int column, String expectedMessage) {
        PolyglotException e = evalAndAssertErrorWithMessage(code, expectedMessage);
        SourceSection loc = e.getSourceLocation();
        assertNotNull("runtime error should expose a structured source location: " + e, loc);
        assertEquals("start line", line, loc.getStartLine());
        assertEquals("start column", column, loc.getStartColumn());
    }

    private static void assertResolvesToEnclosing(String code, int line, int column, String characters, String expectedMessage) {
        PolyglotException e = evalAndAssertErrorWithMessage(code, expectedMessage);
        SourceSection loc = e.getSourceLocation();
        assertNotNull("error should resolve to an enclosing source location: " + e, loc);
        assertEquals("start line", line, loc.getStartLine());
        assertEquals("start column", column, loc.getStartColumn());
        assertEquals("resolved span", characters, loc.getCharacters().toString());
    }

    private static void assertSyntaxError(String code, String expectedMessage) {
        PolyglotException e = evalAndAssertErrorWithMessage(code, expectedMessage);
        assertFalse("a syntax error must not be an internal host crash: " + e, e.isInternalError());
    }

    private static PolyglotException evalAndAssertErrorWithMessage(String code, String expectedMessage) {
        PolyglotException e = evalExpectError(code);
        assertFalse("expected a guest error, not an internal host crash, but got: " + e, e.isInternalError());
        assertMessageContains(e, expectedMessage);
        return e;
    }

    private static void assertMessageContains(PolyglotException e, String fragment) {
        assertTrue("message \"" + e.getMessage() + "\" should contain \"" + fragment + "\"", e.getMessage().contains(fragment));
    }
}
