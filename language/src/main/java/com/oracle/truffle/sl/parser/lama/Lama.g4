grammar Lama;

lama
	: compilationUnit EOF
	;

compilationUnit : (IMPORT UIDENT ';')* scopeExpression;

scopeExpression : definition* expression? ;

definition
    : variableDefinition ';'
    | functionDefinition
    ;

variableDefinition : ( VAR | PUBLIC ) variableDefinitionSequence ;

variableDefinitionSequence : variableDefinitionItem ( ',' variableDefinitionItem )*;

variableDefinitionItem : LIDENT ( '=' basicExpression )?;
functionDefinition : PUBLIC? FUN LIDENT '(' functionArguments ')' functionBody;
functionArguments : ( pattern ( ',' pattern )* )?;
functionBody : '{' scopeExpression '}';

expression : basicExpression ( ';' basicExpression )*;
basicExpression
    : '-'? postfixExpression                                             # DecimalExpr
    | '(' basicExpression ')'                                            # ParenExpr
    | basicExpression '.' postfixExpression                              # DotExpr
    | ETA basicExpression                                                # EtaExpr
    | LAZY basicExpression                                               # LazyExpr
    | basicExpression op=('*' | '/' | '%') basicExpression               # MulDivModExpr
    | basicExpression op=('+' | '-') basicExpression                     # AddSubExpr
    | basicExpression op=('==' | '!=' | '<=' | '<' | '>=' | '>') basicExpression # CompExpr
    | basicExpression op='&&' basicExpression                            # AndExpr
    | basicExpression op='!!' basicExpression                            # OrExpr
    | <assoc=right> basicExpression op=':' basicExpression               # ListConsExpr
    | <assoc=right> basicExpression op=':=' basicExpression              # AssignExpr
    ;

postfixExpression
    : primary
    | postfixExpression '(' ( expression ( ',' expression )* )? ')'
    | postfixExpression '[' expression ']'
    ;

primary
    : DECIMAL
    | '_'
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
sExpression : UIDENT ( '(' expression ( ',' expression )* ')' )?;

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

// Lexer

AFTER: 'after' ;
ARRAY: 'array' ;
AT: 'at' ;
BEFORE: 'before' ;
BOX: 'box' ;
CASE: 'case' ;
DO: 'do' ;
ELIF: 'elif' ;
ELSE: 'else' ;
ESAC: 'esac' ;
ETA: 'eta' ;
FALSE: 'false' ;
FI: 'fi' ;
FOR: 'for' ;
FUN: 'fun' ;
IF: 'if' ;
IMPORT: 'import' ;
INFIX: 'infix' ;
INFIXL: 'infixl' ;
INFIXR: 'infixr' ;
LAZY: 'lazy' ;
OD: 'od' ;
OF: 'of' ;
PUBLIC: 'public' ;
SEXP: 'sexp' ;
LAMA_SKIP: 'skip' ;
STR: 'str' ;
SYNTAX: 'syntax' ;
THEN: 'then' ;
TRUE: 'true' ;
VAL: 'val' ;
VAR: 'var' ;
WHILE: 'while' ;
LET: 'let' ;
IN: 'in' ;

OP_OR: '||';
OP_AND: '&&';
OP_COMPARE: '<' | '<=' | '>' | '>=' | '==' | '!=';
OP_ADD: '+' | '-';
OP_MUL: '*' | '/';

COMMENT : '(*' .*? '*)' -> skip;
LINE_COMMENT : '--' (~[\r\n])* -> skip;
WS : [ \n\r\t]+ -> skip;

UIDENT: [A-Z][a-zA-Z_0-9]* ;
LIDENT: [a-z][a-zA-Z_0-9]* ;
DECIMAL: [0-9]+ ;
STRING: '"'(~["]|'""')*'"';
CHAR: '\''(~[']|'\'\''|'\\n'|'\\t')'\'' ;
