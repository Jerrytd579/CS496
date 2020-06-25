
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TIMES
    | THEN
    | SND
    | SETREF
    | SET
    | SEMICOLON
    | RPAREN
    | RBRACE
    | PROC
    | PLUS
    | PAIR
    | NEWREF
    | MINUS
    | LPAREN
    | LETREC
    | LET
    | LBRACE
    | ISZERO
    | INT of (
# 22 "parser.mly"
       (int)
# 29 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "parser.mly"
       (string)
# 36 "parser.ml"
  )
    | FST
    | EQUALS
    | EOF
    | END
    | ELSE
    | DOT
    | DIVIDED
    | DEREF
    | DEBUG
    | COMMA
    | BEGIN
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState108
  | MenhirState105
  | MenhirState103
  | MenhirState102
  | MenhirState101
  | MenhirState100
  | MenhirState98
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState92
  | MenhirState90
  | MenhirState88
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState78
  | MenhirState73
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState52
  | MenhirState49
  | MenhirState48
  | MenhirState47
  | MenhirState42
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState27
  | MenhirState24
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState7
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 8 "parser.mly"
  
open Ast

# 130 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_field_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_field_) : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_field__ = 
# 144 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x )
# 152 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_field_) : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_field)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_field_ = 
# 231 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 169 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x )
# 190 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)) : 'freshtv412)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 231 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 207 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
    | _ ->
        _menhir_fail ()

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 366 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let ((id : (
# 23 "parser.mly"
       (string)
# 374 "parser.ml"
        )) : (
# 23 "parser.mly"
       (string)
# 378 "parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 167 "parser.mly"
                          ( Proj(e1,id) )
# 385 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_field__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_field__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = let fs =
          let xs = xs0 in
          
# 220 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 465 "parser.ml"
          
        in
        
# 166 "parser.mly"
                                                            ( Record(fs) )
# 471 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 485 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state * (
# 23 "parser.mly"
       (string)
# 497 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv392)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * (
# 23 "parser.mly"
       (string)
# 549 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState52 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState47 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv232)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 229 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 629 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv236)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 147 "parser.mly"
                                  ( Mul(e1,e2) )
# 652 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv240)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 145 "parser.mly"
                                 ( Add(e1,e2) )
# 679 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv244)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 148 "parser.mly"
                                    ( Div(e1,e2) )
# 702 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv248)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 146 "parser.mly"
                                  ( Sub(e1,e2) )
# 729 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv252)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState60 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 144 "parser.mly"
                                   ( Debug(e) )
# 765 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)) : 'freshtv256)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv258)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState62 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 158 "parser.mly"
                                      ( DeRef(e) )
# 803 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv264)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState64 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 150 "parser.mly"
                                  ( Fst(e) )
# 841 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv270)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv273 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState66 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv272)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv274)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv277 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv275 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState68 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv276)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv278)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv281 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv279 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 160 "parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 1012 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv282)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState71 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 156 "parser.mly"
                                       ( IsZero(e) )
# 1048 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)) : 'freshtv286)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv288)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * (
# 23 "parser.mly"
       (string)
# 1062 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | RBRACE | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * (
# 23 "parser.mly"
       (string)
# 1082 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : (
# 23 "parser.mly"
       (string)
# 1087 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_field = 
# 171 "parser.mly"
                              ( (id,e) )
# 1093 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_field) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv290)
            | RBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_field)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_SEMICOLON_field_ = 
# 229 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1124 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)) : 'freshtv298)) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv302)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv305 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1143 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv303 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1157 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState80 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv304)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv306)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv309 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1219 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv307 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1239 "parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1244 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 152 "parser.mly"
                                                    ( Let(x,e1,e2) )
# 1252 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv310)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv313 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1264 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1268 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv311 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1282 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1286 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState83 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv312)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv314)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv317 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1348 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1352 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv315 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1372 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1376 "parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1381 "parser.ml"
            ))), (y : (
# 23 "parser.mly"
       (string)
# 1385 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 153 "parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 1395 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv318)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv323 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState86 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 165 "parser.mly"
                                      ( Sub(Int 0, e) )
# 1431 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)) : 'freshtv322)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv324)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv329 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv327 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv325 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 163 "parser.mly"
                               (e)
# 1498 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv330)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState90 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 155 "parser.mly"
                                           ( App(e1,e2) )
# 1541 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv336)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState92 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 157 "parser.mly"
                                       ( NewRef(e) )
# 1579 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv342)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState94 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv344)
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv346)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv351 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv349 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState96 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv347 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 149 "parser.mly"
                                                    ( Pair(e1,e2) )
# 1686 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv352)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv357 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1700 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv355 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1718 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState98 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv353 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1726 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1732 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 154 "parser.mly"
                                                             ( Proc(x,e) )
# 1742 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)) : 'freshtv356)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv358)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv361 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1756 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv359 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1776 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1781 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 161 "parser.mly"
                                    ( Set(x,e) )
# 1788 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv362)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState101 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv364)
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv366)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 159 "parser.mly"
                                                          ( SetRef(e1,e2) )
# 1893 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv372)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState105 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 151 "parser.mly"
                                  ( Snd(e) )
# 1931 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv378)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | DOT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState108 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 81 "parser.mly"
       (Ast.expr)
# 1962 "parser.ml"
            ) = 
# 113 "parser.mly"
                 ( e )
# 1966 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 81 "parser.mly"
       (Ast.expr)
# 1974 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 81 "parser.mly"
       (Ast.expr)
# 1982 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 81 "parser.mly"
       (Ast.expr)
# 1990 "parser.ml"
            )) : (
# 81 "parser.mly"
       (Ast.expr)
# 1994 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv380)) : 'freshtv382)) : 'freshtv384)) : 'freshtv386)) : 'freshtv388)
        | MINUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | PLUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | TIMES ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv390)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv229) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv227) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es =
      let xs = xs0 in
      
# 220 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2025 "parser.ml"
      
    in
    
# 176 "parser.mly"
                                            ( es )
# 2031 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv225) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 162 "parser.mly"
                             ( BeginEnd(es) )
# 2055 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)) : 'freshtv220)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)) : 'freshtv228)) : 'freshtv230)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv101 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv103 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv107 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2099 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv109 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2108 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv111 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv125 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2152 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2156 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv127 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2165 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2169 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv129 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2178 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2182 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv131 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2191 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv133 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2200 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv135 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2209 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * (
# 23 "parser.mly"
       (string)
# 2223 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv143 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv145 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * (
# 23 "parser.mly"
       (string)
# 2357 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2371 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv197 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2380 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2384 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv207 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2413 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv209 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2422 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv216)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 2573 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv81 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2584 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv82)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv83 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2636 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv73 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "parser.mly"
       (string)
# 2666 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv69 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2677 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv65 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2687 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BEGIN ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | DEBUG ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | DEREF ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | FST ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | ID _v ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                    | IF ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | INT _v ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                    | ISZERO ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | LBRACE ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | LET ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | LETREC ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | LPAREN ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | NEWREF ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | PAIR ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | PROC ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | SET ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | SETREF ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | SND ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv66)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv67 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2739 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv71 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2750 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)) : 'freshtv78)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv62)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv58)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState17 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv56)
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 2996 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv47 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3007 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv43 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3017 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "parser.mly"
       (string)
# 3022 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv39 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3033 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 3037 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUALS ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3047 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 3051 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BEGIN ->
                            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | DEBUG ->
                            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | DEREF ->
                            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | FST ->
                            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | ID _v ->
                            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
                        | IF ->
                            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | INT _v ->
                            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
                        | ISZERO ->
                            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | LBRACE ->
                            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | LET ->
                            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | LETREC ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | LPAREN ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | NEWREF ->
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | PAIR ->
                            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | PROC ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | SET ->
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | SETREF ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | SND ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv36)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv37 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3103 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 3107 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv41 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3118 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 3122 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)) : 'freshtv44)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3133 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv49 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3144 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 3168 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3179 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | DEBUG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | DEREF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | FST ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | ID _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | IF ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | INT _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LBRACE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LET ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LETREC ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | NEWREF ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3231 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState28 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_field__ = 
# 142 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3258 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (int)
# 3329 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "parser.mly"
       (int)
# 3339 "parser.ml"
    )) : (
# 22 "parser.mly"
       (int)
# 3343 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 142 "parser.mly"
              ( Int i )
# 3348 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 3402 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "parser.mly"
       (string)
# 3412 "parser.ml"
    )) : (
# 23 "parser.mly"
       (string)
# 3416 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 143 "parser.mly"
             ( Var x )
# 3421 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DEBUG ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DEREF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FST ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ID _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | IF ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | INT _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LBRACE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LETREC ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LPAREN ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NEWREF ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState42 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3654 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 81 "parser.mly"
       (Ast.expr)
# 3677 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEBUG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBRACE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LETREC ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWREF ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 233 "/home/jerry/.opam/system/lib/menhir/standard.mly"
  

# 3740 "parser.ml"
