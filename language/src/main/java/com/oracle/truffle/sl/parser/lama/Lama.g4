grammar Lama;

lama
	: compilationUnit EOF
	;

compilationUnit : (IMPORT UIDENT ';')* scopeExpression;

scopeExpression : definition* expression? ;

definition
    : variableDefinition ';'
    | functionDefinition
    | infixDefinition
    ;

variableDefinition : ( VAR | PUBLIC ) variableDefinitionSequence ;

variableDefinitionSequence : variableDefinitionItem ( ',' variableDefinitionItem )*;

variableDefinitionItem : LIDENT ( '=' basicExpression )?;
functionDefinition : PUBLIC? FUN LIDENT '(' functionArguments ')' functionBody;
functionArguments : ( pattern ( ',' pattern )* )?;
functionBody : '{' scopeExpression '}';

infixDefinition
    : PUBLIC? (INFIX | INFIXL | INFIXR)
      infixOp infixPosition '(' functionArguments ')' functionBody
    ;

infixPosition
    : AT infixOp
    | BEFORE infixOp
    | AFTER infixOp
    ;

expression : basicExpression ( ';' basicExpression )*;

basicExpression : infixOperand (infixOp infixOperand)* ;

infixOperand
    : '-' postfix              # NegOperand
    | postfix                  # PlainOperand
    | ETA basicExpression      # EtaOperand
    | LAZY basicExpression     # LazyOperand
    ;

infixOp
    : '+' | '-' | '*' | '/' | '%'
    | '==' | '!=' | '<=' | '<' | '>=' | '>'
    | '&&' | '!!'
    | ':' | ':='
    | INFIX_OP
    ;

postfix
    : primary                                                            # PrimaryPostfix
    | postfix '(' ( expression ( ',' expression )* )? ')'               # InvokePostfix
    | postfix '[' expression ']'                                         # ArrayPostfix
    | postfix '.' postfix                                                # DotPostfix
    ;

primary
    : DECIMAL                                           # DecimalPrimary
    | '_'                                               # WildcardPrimary
    | STRING                                            # StringPrimary
    | CHAR                                              # CharPrimary
    | LIDENT                                            # IdentPrimary
    | TRUE                                              # TruePrimary
    | FALSE                                             # FalsePrimary
    | FUN '(' functionArguments ')' functionBody         # FunPrimary
    | LAMA_SKIP                                         # SkipPrimary
    | '(' scopeExpression ')'                           # ScopePrimary
    | listExpression                                    # ListPrimary
    | arrayExpression                                   # ArrayPrimary
    | sExpression                                       # SExprPrimary
    | ifExpression                                      # IfPrimary
    | whileDoExpression                                 # WhileDoPrimary
    | doWhileExpression                                 # DoWhilePrimary
    | forExpression                                     # ForPrimary
    | caseExpression                                    # CasePrimary
    | letExpression                                     # LetPrimary
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
    : '_'                                               # WildcardPattern
    | UIDENT ('(' pattern (',' pattern)* ')')?          # SExprPattern
    | '[' (pattern (',' pattern)*)? ']'                 # ArrayPattern
    | '{' (pattern (',' pattern)*)? '}'                 # ListPattern
    | LIDENT ('@' pattern)?                             # IdentPattern
    | '-'? DECIMAL                                      # DecimalPattern
    | STRING                                            # StringPattern
    | CHAR                                              # CharPattern
    | TRUE                                              # TruePattern
    | FALSE                                             # FalsePattern
    | '#' BOX                                           # BoxTagPattern
    | '#' VAL                                           # ValTagPattern
    | '#' STR                                           # StrTagPattern
    | '#' ARRAY                                         # ArrayTagPattern
    | '#' SEXP                                          # SExpTagPattern
    | '#' FUN                                           # FunTagPattern
    | '(' pattern ')'                                   # ParenPattern
    ;

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

COMMENT : '(*' .*? '*)' -> skip;
LINE_COMMENT : '--' (~[\r\n])* -> skip;
WS : [ \n\r\t]+ -> skip;

UIDENT: [A-Z][a-zA-Z_0-9]* ;
LIDENT: [a-z][a-zA-Z_0-9]* ;
DECIMAL: [0-9]+ ;
STRING: '"'(~["]|'""')*'"';
CHAR: '\''(~[']|'\'\''|'\\n'|'\\t')'\'' ;

INFIX_OP: [+\-*/%$!&^~?<>=:]+ ;
