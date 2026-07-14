SHELL := /bin/bash

FILES=$(wildcard *.lama)
ALL=$(sort $(FILES:.lama=.o))
LAMAC=lamac -g

.PHONY: all clean

all: Parser.o Lexer.o Interface.o SM.o SMOptimizer.o X86.o Manifest.o Infix.o 
	$(LAMAC) -I . -o lama-impl Driver.lama

SMOptimizer.o: Manifest.o SM.o Interface.o

Interface.o: Lexer.o Infix.o

Parser.o: Lexer.o Infix.o Manifest.o Interface.o

Infix.o: Lexer.o Manifest.o 

Builtins.o: World.o

State.o: Lexer.o Manifest.o

Expr.o: State.o Builtins.o Manifest.lama

SM.o: State.o World.o Expr.o Manifest.o Builtins.o Parser.o Interface.o

X86.o: SM.o Manifest.o 

%.o: %.lama
	$(LAMAC) -I . -c $<

clean:
	rm -Rf *.s *.o *.i *~ *.html *.sm lama-impl

