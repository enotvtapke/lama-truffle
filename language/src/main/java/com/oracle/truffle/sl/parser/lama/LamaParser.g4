/*
 * Copyright (c) 2012, 2025, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * The Universal Permissive License (UPL), Version 1.0
 *
 * Subject to the condition set forth below, permission is hereby granted to any
 * person obtaining a copy of this software, associated documentation and/or
 * data (collectively the "Software"), free of charge and under any and all
 * copyright rights in the Software, and any and all patent rights owned or
 * freely licensable by each licensor hereunder covering either (i) the
 * unmodified Software as contributed to or provided by such licensor, or (ii)
 * the Larger Works (as defined below), to deal in both
 *
 * (a) the Software, and
 *
 * (b) any piece of software and/or hardware listed in the lrgrwrks.txt file if
 * one is included with the Software each a "Larger Work" to which the Software
 * is contributed by such licensors),
 *
 * without restriction, including without limitation the rights to copy, create
 * derivative works of, display, perform, and distribute the Software and make,
 * use, sell, offer for sale, import, export, have made, and have sold the
 * Software and the Larger Work(s), and to sublicense the foregoing rights on
 * either these or other terms.
 *
 * This license is subject to the following condition:
 *
 * The above copyright notice and either this complete permission notice or at a
 * minimum a reference to the UPL must be included in all copies or substantial
 * portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/*
 * The parser and lexer need to be generated using "mx create-sl-parser".
 */

grammar LamaParser;

import LamaLexer;

//a : COMMENT EOF;

lama
	: compilationUnit EOF
	;

compilationUnit : (IMPORT UIDENT ';')* scopeExpression;

scopeExpression : definition* expression? ;

definition
    : variableDefinition
    | functionDefinition
    ;

variableDefinition : '(' VAR | PUBLIC ')' variableDefinitionSequence ;

variableDefinitionSequence : variableDefinitionItem ( ',' variableDefinitionItem )*;

variableDefinitionItem : LIDENT ( '=' binaryExpression )?;
functionDefinition : PUBLIC? FUN LIDENT '(' functionArguments ')' functionBody;
functionArguments : ( LIDENT ( ',' LIDENT )* )?;
functionBody : '{' scopeExpression '}';

expression : binaryExpression ( ';' binaryExpression )*;
binaryExpression
    : '-'? postfixExpression                                               # DecimalExpr
    | '(' binaryExpression ')'                                             # ParenExpr
    | binaryExpression op=('*' | '/' | '%') binaryExpression               # MulDivModExpr
    | binaryExpression op=('+' | '-') binaryExpression                     # AddSubExpr
    | binaryExpression op=('==' | '!=' | '<=' | '<' | '>=' | '>') binaryExpression # CompExpr
    | binaryExpression op='&&' binaryExpression                            # AndExpr
    | binaryExpression op='!!' binaryExpression                            # OrExpr
    | <assoc=right> binaryExpression op=':' binaryExpression               # ListConsExpr
    | <assoc=right> binaryExpression op=':=' binaryExpression              # AssignExpr
    ;

postfixExpression
    : primary
    | postfixExpression '(' ( expression ( ',' expression )* )? ')'
    | postfixExpression '[' expression ']'
    ;

primary
    : DECIMAL
    | STRING 
    | CHAR
    | LIDENT
    | TRUE
    | FALSE
    | FUN '(' functionArguments ')' functionBody
    | LAMA_SKIP
    | '(' scopeExpression ')'
    | listExpression
    | arrayExpression
    | sExpression
    | ifExpression
    | whileDoExpression
    | doWhileExpression
    | forExpression
    | caseExpression
    | letExpression
    ;

arrayExpression : '[' (  expression ( ',' expression )* )? ']';
listExpression : '{' ( expression ( ',' expression )* )? '}';
sExpression : UIDENT ( '(' expression ( ( ',' expression )* )? ')' )?;

letExpression : LET pattern '=' expression IN expression;

ifExpression : IF expression THEN scopeExpression elsePart? FI;
elsePart
    : ELIF expression THEN scopeExpression elsePart?
    | ELSE scopeExpression;

whileDoExpression : WHILE expression DO scopeExpression OD;
doWhileExpression : DO scopeExpression WHILE expression OD;
forExpression : FOR scopeExpression ',' expression ',' expression DO scopeExpression OD;

pattern
    : consPattern
    | simplePattern
    ;

consPattern
    : simplePattern ':' pattern
    ;

simplePattern
    : wildcardPattern
    | sExprPattern
    | arrayPattern
    | listPattern
    | LIDENT ('@' pattern)?
    | '-'? DECIMAL
    | STRING
    | CHAR
    | TRUE
    | FALSE
    | '#' BOX
    | '#' VAL
    | '#' STR
    | '#' ARRAY
    | '#' SEXP
    | '#' FUN
    | '(' pattern ')'
    ;

wildcardPattern : '_';
sExprPattern : UIDENT ('(' pattern (',' pattern)* ')')?;
arrayPattern : '[' (pattern (',' pattern)*)? ']';
listPattern : '{' (pattern (',' pattern)*)? '}';

caseExpression : 'case' expression 'of' caseBranches 'esac';
caseBranches : caseBranch ('|' caseBranch)*;
caseBranch : pattern '->' scopeExpression;