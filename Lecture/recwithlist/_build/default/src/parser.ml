
module MenhirBasics = struct
  
  exception Error
  
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
    | INT of (
# 22 "parser.mly"
       (int)
# 32 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "parser.mly"
       (string)
# 39 "parser.ml"
  )
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
  | MenhirState115
  | MenhirState112
  | MenhirState110
  | MenhirState108
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState103
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState97
  | MenhirState95
  | MenhirState93
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState87
  | MenhirState86
  | MenhirState85
  | MenhirState83
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState66
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState62
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState53
  | MenhirState48
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState36
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState27
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState16
  | MenhirState14
  | MenhirState9
  | MenhirState6
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 8 "parser.mly"
  
open Ast

# 138 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x )
# 160 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv435 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv433 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 231 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 177 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | _ ->
        _menhir_fail ()

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TAIL ->
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
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | TAIL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | TAIL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | TAIL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState56 | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState53 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv256)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 229 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 484 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv260)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 149 "parser.mly"
                                  ( Mul(e1,e2) )
# 501 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | BEGIN | COMMA | CONS | DEBUG | DEREF | ELSE | END | EOF | FST | HEAD | ID _ | IF | IN | INT _ | ISNIL | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | NIL | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | TAIL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 147 "parser.mly"
                                 ( Add(e1,e2) )
# 522 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv268)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 150 "parser.mly"
                                    ( Div(e1,e2) )
# 539 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | BEGIN | COMMA | CONS | DEBUG | DEREF | ELSE | END | EOF | FST | HEAD | ID _ | IF | IN | INT _ | ISNIL | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | NIL | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | TAIL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 148 "parser.mly"
                                  ( Sub(e1,e2) )
# 560 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv276)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState64 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv278)
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv280)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv285 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv283 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState66 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv281 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 170 "parser.mly"
                                                    ( Cons(e1,e2) )
# 669 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv286)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState68 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 146 "parser.mly"
                                   ( Debug(e) )
# 705 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv292)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv295 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState70 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 160 "parser.mly"
                                      ( DeRef(e) )
# 741 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv298)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState72 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 152 "parser.mly"
                                  ( Fst(e) )
# 777 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv304)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState74 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 167 "parser.mly"
                                   ( Hd(e) )
# 813 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv310)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState76 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv312)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv314)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv317 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv315 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState78 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv316)
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv318)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv321 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | BEGIN | COMMA | CONS | DEBUG | DEREF | ELSE | END | EOF | FST | HEAD | ID _ | IF | IN | INT _ | ISNIL | ISZERO | LET | LETREC | LPAREN | NEWREF | NIL | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | TAIL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv319 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 162 "parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 994 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv322)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState81 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 166 "parser.mly"
                                    ( IsNil(e) )
# 1028 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv328)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState83 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 158 "parser.mly"
                                       ( IsZero(e) )
# 1064 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv334)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv337 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1078 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv335 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1090 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState85 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv336)
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv338)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv341 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1160 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | BEGIN | COMMA | CONS | DEBUG | DEREF | ELSE | END | EOF | FST | HEAD | ID _ | IF | IN | INT _ | ISNIL | ISZERO | LET | LETREC | LPAREN | NEWREF | NIL | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | TAIL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv339 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1178 "parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1183 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 154 "parser.mly"
                                                    ( Let(x,e1,e2) )
# 1191 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv342)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv345 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1203 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1207 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv343 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1219 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1223 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv344)
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv346)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv349 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1293 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1297 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | BEGIN | COMMA | CONS | DEBUG | DEREF | ELSE | END | EOF | FST | HEAD | ID _ | IF | IN | INT _ | ISNIL | ISZERO | LET | LETREC | LPAREN | NEWREF | NIL | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | TAIL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv347 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1315 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1319 "parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1324 "parser.ml"
            ))), (y : (
# 23 "parser.mly"
       (string)
# 1328 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 155 "parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 1338 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv350)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState91 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 173 "parser.mly"
                                      ( Sub(Int 0, e) )
# 1372 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv356)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState93 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 171 "parser.mly"
                               (e)
# 1443 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv362)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv367 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv365 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState95 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 157 "parser.mly"
                                           ( App(e1,e2) )
# 1486 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv368)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState97 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 159 "parser.mly"
                                       ( NewRef(e) )
# 1522 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)) : 'freshtv372)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv374)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState99 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv376)
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv378)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv383 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv381 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState101 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv379 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 151 "parser.mly"
                                                    ( Pair(e1,e2) )
# 1633 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv384)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv389 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1647 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv387 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1663 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv385 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1671 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1677 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 156 "parser.mly"
                                                             ( Proc(x,e) )
# 1687 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv390)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv393 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1701 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | BEGIN | COMMA | CONS | DEBUG | DEREF | ELSE | END | EOF | FST | HEAD | ID _ | IF | IN | INT _ | ISNIL | ISZERO | LET | LETREC | LPAREN | NEWREF | NIL | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | TAIL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv391 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1719 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1724 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 163 "parser.mly"
                                    ( Set(x,e) )
# 1731 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv394)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv397 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState106 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv396)
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv398)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv403 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv401 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState108 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv399 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 161 "parser.mly"
                                                          ( SetRef(e1,e2) )
# 1840 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv404)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv409 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv407 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState110 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 153 "parser.mly"
                                  ( Snd(e) )
# 1876 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv410)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv415 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState112 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 168 "parser.mly"
                                   ( Tl(e) )
# 1912 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)) : 'freshtv414)
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv416)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState115 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 83 "parser.mly"
       (Ast.expr)
# 1941 "parser.ml"
            ) = 
# 115 "parser.mly"
                 ( e )
# 1945 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv421) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 83 "parser.mly"
       (Ast.expr)
# 1953 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 83 "parser.mly"
       (Ast.expr)
# 1961 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 83 "parser.mly"
       (Ast.expr)
# 1969 "parser.ml"
            )) : (
# 83 "parser.mly"
       (Ast.expr)
# 1973 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv418)) : 'freshtv420)) : 'freshtv422)) : 'freshtv424)) : 'freshtv426)
        | MINUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | PLUS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | TIMES ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv428)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv253) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es =
      let xs = xs0 in
      
# 220 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2004 "parser.ml"
      
    in
    
# 177 "parser.mly"
                                            ( es )
# 2010 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv249) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv247 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 164 "parser.mly"
                             ( BeginEnd(es) )
# 2034 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)) : 'freshtv244)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)) : 'freshtv250)) : 'freshtv252)) : 'freshtv254)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv119 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv125 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2083 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv127 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2092 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv129 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv131 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv143 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2136 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2140 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv145 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2149 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2153 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv147 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2162 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2166 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv149 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2175 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv151 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2184 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv153 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2193 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv159 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv161 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv163 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv177 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv179 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv181 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2357 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv219 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2366 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2370 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv229 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2399 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2408 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv240)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv110)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv106)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv102)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 2648 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv93 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2659 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2719 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "parser.mly"
       (string)
# 2749 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv81 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2760 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv77 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2770 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BEGIN ->
                        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | CONS ->
                        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | DEBUG ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | DEREF ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | FST ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | HEAD ->
                        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | ID _v ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
                    | IF ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | INT _v ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
                    | ISNIL ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | ISZERO ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | LET ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | LETREC ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | LPAREN ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | NEWREF ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | NIL ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | PAIR ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | PROC ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | SET ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | SETREF ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | SND ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | TAIL ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv78)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv79 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2830 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv83 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2841 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv74)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 165 "parser.mly"
                ( Nil )
# 2938 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv72)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv68)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState20 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv66)
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | TAIL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 3133 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3144 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv53 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3154 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "parser.mly"
       (string)
# 3159 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv49 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3170 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 3174 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUALS ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv45 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3184 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 3188 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BEGIN ->
                            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | CONS ->
                            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | DEBUG ->
                            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | DEREF ->
                            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | FST ->
                            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | HEAD ->
                            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | ID _v ->
                            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                        | IF ->
                            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | INT _v ->
                            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                        | ISNIL ->
                            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | ISZERO ->
                            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | LET ->
                            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | LETREC ->
                            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | LPAREN ->
                            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | NEWREF ->
                            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | NIL ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | PAIR ->
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | PROC ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | SET ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | SETREF ->
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | SND ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | TAIL ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv46)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv47 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3248 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 3252 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv51 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3263 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 3267 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv55 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3278 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3289 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 3313 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv37 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3324 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | CONS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | DEBUG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | DEREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | FST ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | HEAD ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | IF ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | INT _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | ISNIL ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | ISZERO ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LET ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LETREC ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | NEWREF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | NIL ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | PAIR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | PROC ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | SET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | SETREF ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | SND ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | TAIL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv38)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3384 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (int)
# 3535 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "parser.mly"
       (int)
# 3545 "parser.ml"
    )) : (
# 22 "parser.mly"
       (int)
# 3549 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 144 "parser.mly"
              ( Int i )
# 3554 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | TAIL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 3616 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "parser.mly"
       (string)
# 3626 "parser.ml"
    )) : (
# 23 "parser.mly"
       (string)
# 3630 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 145 "parser.mly"
             ( Var x )
# 3635 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | CONS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DEBUG ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DEREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FST ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | HEAD ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | IF ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | INT _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | ISNIL ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ISZERO ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LET ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LETREC ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | NEWREF ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | NIL ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PAIR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PROC ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SETREF ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SND ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TAIL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TAIL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState48 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 4036 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

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
# 83 "parser.mly"
       (Ast.expr)
# 4059 "parser.ml"
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
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CONS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEBUG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | HEAD ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISNIL ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ISZERO ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LETREC ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWREF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NIL ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PAIR ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PROC ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SETREF ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SND ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TAIL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 233 "/home/jerry/.opam/system/lib/menhir/standard.mly"
  

# 4130 "parser.ml"
