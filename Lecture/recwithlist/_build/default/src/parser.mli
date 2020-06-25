
(* The type of tokens. *)

type token = 
  | TIMES
  | THEN
  | TAIL
  | SND
  | SETREF
  | SET
  | SEMICOLON
  | RPAREN
  | RBRACE
  | PROC
  | PLUS
  | PAIR
  | NIL
  | NEWREF
  | MINUS
  | LPAREN
  | LETREC
  | LET
  | LBRACE
  | ISZERO
  | ISNIL
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | HEAD
  | FST
  | EQUALS
  | EOF
  | END
  | ELSE
  | DIVIDED
  | DEREF
  | DEBUG
  | CONS
  | COMMA
  | BEGIN

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
