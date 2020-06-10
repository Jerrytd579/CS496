
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
    | NOT
    | NEWREF
    | MINUS
    | LPAREN
    | LETREC
    | LET
    | LBRACE
    | ISZERO
    | ISGEQ
    | INT of (
# 22 "parser.mly"
       (int)
# 31 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "parser.mly"
       (string)
# 38 "parser.ml"
  )
    | FST
    | EQUALS
    | EOF
    | END
    | ELSE
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
  | MenhirState106
  | MenhirState103
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState98
  | MenhirState96
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState90
  | MenhirState88
  | MenhirState86
  | MenhirState84
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState48
  | MenhirState43
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState29
  | MenhirState26
  | MenhirState20
  | MenhirState19
  | MenhirState18
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState7
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 8 "parser.mly"
  
open Ast

# 131 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x )
# 153 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 231 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 170 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | _ ->
        _menhir_fail ()

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState51 | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState48 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv238)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 229 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 447 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv242)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 146 "parser.mly"
                                  ( Mul(e1,e2) )
# 464 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISGEQ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | NOT | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 144 "parser.mly"
                                 ( Add(e1,e2) )
# 485 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv250)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 147 "parser.mly"
                                    ( Div(e1,e2) )
# 502 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISGEQ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | NOT | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 145 "parser.mly"
                                  ( Sub(e1,e2) )
# 523 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv258)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState59 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 143 "parser.mly"
                                   ( Debug(e) )
# 557 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv264)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState61 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 159 "parser.mly"
                                      ( DeRef(e) )
# 593 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv270)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState63 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 149 "parser.mly"
                                  ( Fst(e) )
# 629 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)) : 'freshtv274)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv276)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv279 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv277 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState65 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv278)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv280)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv283 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv281 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState67 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv282)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv284)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv287 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISGEQ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv285 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 161 "parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 798 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv288)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState70 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv290)
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv292)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv297 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv295 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState72 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv293 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 157 "parser.mly"
                                                         ( IsGeq(e1,e2) )
# 901 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv298)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState74 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 156 "parser.mly"
                                       ( IsZero(e) )
# 937 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv304)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv307 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 951 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv305 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 963 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState76 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv306)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv308)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv311 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1027 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISGEQ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv309 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1045 "parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1050 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 152 "parser.mly"
                                                    ( Let(x,e1,e2) )
# 1058 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv312)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv315 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1070 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1074 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv313 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1086 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1090 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState79 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv314)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv316)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv319 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1154 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1158 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISGEQ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv317 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1176 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1180 "parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1185 "parser.ml"
            ))), (y : (
# 23 "parser.mly"
       (string)
# 1189 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 153 "parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 1199 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv320)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState82 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 166 "parser.mly"
                                      ( Sub(Int 0, e) )
# 1233 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)) : 'freshtv324)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv326)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState84 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv327 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 164 "parser.mly"
                               (e)
# 1300 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv332)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState86 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 155 "parser.mly"
                                           ( App(e1,e2) )
# 1341 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv338)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 158 "parser.mly"
                                       ( NewRef(e) )
# 1377 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv344)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState90 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 151 "parser.mly"
                                  ( Not(e) )
# 1413 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)) : 'freshtv348)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv350)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState92 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv352)
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv354)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv359 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv357 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState94 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv355 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 148 "parser.mly"
                                                    ( Pair(e1,e2) )
# 1518 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv360)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv365 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1532 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv363 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1548 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState96 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv361 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1556 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1562 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 154 "parser.mly"
                                                             ( Proc(x,e) )
# 1572 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv366)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv369 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1586 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISGEQ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv367 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1604 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1609 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 162 "parser.mly"
                                    ( Set(x,e) )
# 1616 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv370)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState99 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv372)
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv374)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv379 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState101 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 160 "parser.mly"
                                                          ( SetRef(e1,e2) )
# 1719 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv380)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 150 "parser.mly"
                                  ( Snd(e) )
# 1755 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv386)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState106 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 80 "parser.mly"
       (Ast.expr)
# 1784 "parser.ml"
            ) = 
# 112 "parser.mly"
                 ( e )
# 1788 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 80 "parser.mly"
       (Ast.expr)
# 1796 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 80 "parser.mly"
       (Ast.expr)
# 1804 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 80 "parser.mly"
       (Ast.expr)
# 1812 "parser.ml"
            )) : (
# 80 "parser.mly"
       (Ast.expr)
# 1816 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv388)) : 'freshtv390)) : 'freshtv392)) : 'freshtv394)) : 'freshtv396)
        | MINUS ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | PLUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | TIMES ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv235) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es =
      let xs = xs0 in
      
# 220 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1847 "parser.ml"
      
    in
    
# 170 "parser.mly"
                                            ( es )
# 1853 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv231) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 163 "parser.mly"
                             ( BeginEnd(es) )
# 1877 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)) : 'freshtv234)) : 'freshtv236)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv107 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv109 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1921 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv115 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1930 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv117 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv119 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv133 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1979 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1983 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv135 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1992 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1996 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv137 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2005 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2009 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv139 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2018 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv141 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2027 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv143 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2036 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv147 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv149 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv153 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv155 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv157 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2180 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv201 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2189 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2193 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv213 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2227 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2236 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv222)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NOT ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv100)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NOT ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv96)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 2391 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2402 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | NOT ->
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv89 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2456 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv79 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "parser.mly"
       (string)
# 2486 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv75 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2497 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv71 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2507 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BEGIN ->
                        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | DEBUG ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | DEREF ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | FST ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | ID _v ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                    | IF ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | INT _v ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                    | ISGEQ ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | ISZERO ->
                        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | LET ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | LETREC ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | LPAREN ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | NEWREF ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | NOT ->
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
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv72)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv73 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2561 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv77 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2572 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv81 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)) : 'freshtv84)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | NOT ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv68)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NOT ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv64)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | NOT ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv60)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState19 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv58)
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 2888 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv49 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2899 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2909 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "parser.mly"
       (string)
# 2914 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv41 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2925 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 2929 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUALS ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv37 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2939 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 2943 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BEGIN ->
                            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | DEBUG ->
                            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | DEREF ->
                            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | FST ->
                            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | ID _v ->
                            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
                        | IF ->
                            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | INT _v ->
                            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
                        | ISGEQ ->
                            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | ISZERO ->
                            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | LET ->
                            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | LETREC ->
                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | LPAREN ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | NEWREF ->
                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | NOT ->
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | PAIR ->
                            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | PROC ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | SET ->
                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | SETREF ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | SND ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv38)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv39 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2997 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 3001 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv43 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3012 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 3016 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv47 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3027 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv51 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3038 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "parser.mly"
       (string)
# 3062 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3073 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | DEBUG ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | DEREF ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | FST ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | ID _v ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | IF ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | INT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | ISGEQ ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv30)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 3127 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (int)
# 3266 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "parser.mly"
       (int)
# 3276 "parser.ml"
    )) : (
# 22 "parser.mly"
       (int)
# 3280 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 141 "parser.mly"
              ( Int i )
# 3285 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 3341 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "parser.mly"
       (string)
# 3351 "parser.ml"
    )) : (
# 23 "parser.mly"
       (string)
# 3355 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 142 "parser.mly"
             ( Var x )
# 3360 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DEBUG ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DEREF ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FST ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | IF ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | INT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | ISGEQ ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NOT ->
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState43 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3601 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

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
# 80 "parser.mly"
       (Ast.expr)
# 3624 "parser.ml"
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
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEBUG ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISGEQ ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
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
  

# 3689 "parser.ml"
