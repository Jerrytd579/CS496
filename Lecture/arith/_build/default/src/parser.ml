
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
    | INT of (
# 22 "parser.mly"
       (int)
# 30 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "parser.mly"
       (string)
# 37 "parser.ml"
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
    | ABS
  
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
  | MenhirState104
  | MenhirState101
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState94
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState88
  | MenhirState86
  | MenhirState84
  | MenhirState82
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState58
  | MenhirState53
  | MenhirState52
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState41
  | MenhirState40
  | MenhirState38
  | MenhirState36
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

# 129 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x )
# 151 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 231 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 168 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
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

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOT ->
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PAIR ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PROC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SETREF ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SND ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState44 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 148 "parser.mly"
                                  ( Abs(e) )
# 401 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)) : 'freshtv236)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv238)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 146 "parser.mly"
                                  ( Mul(e1,e2) )
# 420 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ABS | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | NOT | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 144 "parser.mly"
                                 ( Add(e1,e2) )
# 441 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv246)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 147 "parser.mly"
                                    ( Div(e1,e2) )
# 458 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | ABS | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | NOT | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 145 "parser.mly"
                                  ( Sub(e1,e2) )
# 479 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv254)
    | MenhirState59 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState58 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv256)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 229 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 557 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv260)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState61 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 143 "parser.mly"
                                   ( Debug(e) )
# 591 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv266)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState63 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 159 "parser.mly"
                                      ( DeRef(e) )
# 627 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)) : 'freshtv270)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv272)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState65 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 150 "parser.mly"
                                  ( Fst(e) )
# 663 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv278)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv279 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState67 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv280)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv282)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv285 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv283 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState69 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv284)
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv286)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv289 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | ABS | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv287 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 161 "parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 832 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv290)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState72 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv291 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 157 "parser.mly"
                                       ( IsZero(e) )
# 866 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv296)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv299 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 880 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv297 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 892 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState74 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv298)
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv300)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv303 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 956 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | ABS | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv301 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 974 "parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 979 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 153 "parser.mly"
                                                    ( Let(x,e1,e2) )
# 987 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv304)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv307 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 999 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1003 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv305 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1015 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1019 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState77 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv306)
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv308)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv311 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1083 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1087 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | ABS | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv309 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1105 "parser.ml"
            ))) * (
# 23 "parser.mly"
       (string)
# 1109 "parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1114 "parser.ml"
            ))), (y : (
# 23 "parser.mly"
       (string)
# 1118 "parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 154 "parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 1128 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv312)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState80 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 166 "parser.mly"
                                      ( Sub(Int 0, e) )
# 1162 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv318)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState82 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 164 "parser.mly"
                               (e)
# 1229 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)) : 'freshtv322)
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv324)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState84 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 156 "parser.mly"
                                           ( App(e1,e2) )
# 1270 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv330)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState86 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 158 "parser.mly"
                                       ( NewRef(e) )
# 1306 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv336)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 152 "parser.mly"
                                  ( Not(e) )
# 1342 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv342)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState90 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv344)
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv346)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv351 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv349 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState92 in
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
# 1447 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv352)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv357 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1461 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv355 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1477 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState94 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv353 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1485 "parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1491 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 155 "parser.mly"
                                                             ( Proc(x,e) )
# 1501 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)) : 'freshtv356)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv358)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv361 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1515 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ABS | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | NOT | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv359 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1533 "parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1538 "parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 162 "parser.mly"
                                    ( Set(x,e) )
# 1545 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv362)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState97 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | ISZERO ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LET ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LETREC ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | NEWREF ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | PAIR ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | PROC ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SETREF ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SND ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv364)
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv366)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState99 in
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
# 160 "parser.mly"
                                                          ( SetRef(e1,e2) )
# 1648 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv372)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState101 in
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
# 1684 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv378)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState104 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 80 "parser.mly"
       (Ast.expr)
# 1713 "parser.ml"
            ) = 
# 112 "parser.mly"
                 ( e )
# 1717 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 80 "parser.mly"
       (Ast.expr)
# 1725 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 80 "parser.mly"
       (Ast.expr)
# 1733 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 80 "parser.mly"
       (Ast.expr)
# 1741 "parser.ml"
            )) : (
# 80 "parser.mly"
       (Ast.expr)
# 1745 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv380)) : 'freshtv382)) : 'freshtv384)) : 'freshtv386)) : 'freshtv388)
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | TIMES ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv390)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv229) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es =
      let xs = xs0 in
      
# 220 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1776 "parser.ml"
      
    in
    
# 170 "parser.mly"
                                            ( es )
# 1782 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv227) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 163 "parser.mly"
                             ( BeginEnd(es) )
# 1806 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)) : 'freshtv222)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv107 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv109 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1850 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv115 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 1859 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv117 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv119 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv133 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1908 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1912 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv135 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1921 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1925 "parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv137 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1934 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 1938 "parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv139 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1947 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv141 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1956 "parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv143 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 1965 "parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv147 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv149 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv151 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState50 ->
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
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2099 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv197 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2108 "parser.ml"
        ))) * (
# 23 "parser.mly"
       (string)
# 2112 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv209 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2146 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2155 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv218)

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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
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
# 2310 "parser.ml"
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
# 2321 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
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
# 2375 "parser.ml"
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
# 2405 "parser.ml"
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
# 2416 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv71 * _menhir_state)) * (
# 23 "parser.mly"
       (string)
# 2426 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ABS ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | BEGIN ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | DEBUG ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | DEREF ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | FST ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | ID _v ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
                    | IF ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState12
                    | INT _v ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
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
# 2480 "parser.ml"
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
# 2491 "parser.ml"
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
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
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
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
# 2807 "parser.ml"
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
# 2818 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2828 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "parser.mly"
       (string)
# 2833 "parser.ml"
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
# 2844 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 2848 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUALS ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv37 * _menhir_state) * (
# 23 "parser.mly"
       (string)
# 2858 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 2862 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | ABS ->
                            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | BEGIN ->
                            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | DEBUG ->
                            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | DEREF ->
                            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | FST ->
                            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | ID _v ->
                            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
                        | IF ->
                            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                        | INT _v ->
                            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
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
# 2916 "parser.ml"
                        ))) * (
# 23 "parser.mly"
       (string)
# 2920 "parser.ml"
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
# 2931 "parser.ml"
                    ))) * (
# 23 "parser.mly"
       (string)
# 2935 "parser.ml"
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
# 2946 "parser.ml"
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
# 2957 "parser.ml"
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
# 2981 "parser.ml"
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
# 2992 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ABS ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | BEGIN ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | DEBUG ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | DEREF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | FST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | INT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
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
# 3046 "parser.ml"
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
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

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (int)
# 3123 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "parser.mly"
       (int)
# 3133 "parser.ml"
    )) : (
# 22 "parser.mly"
       (int)
# 3137 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 141 "parser.mly"
              ( Int i )
# 3142 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 3198 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "parser.mly"
       (string)
# 3208 "parser.ml"
    )) : (
# 23 "parser.mly"
       (string)
# 3212 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 142 "parser.mly"
             ( Var x )
# 3217 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | ISZERO ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LET ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LETREC ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NEWREF ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PAIR ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PROC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | SET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | SETREF ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | SND ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
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
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
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
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | ISZERO ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LET ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LETREC ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NEWREF ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
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
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState41 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "/home/jerry/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3458 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ABS ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | BEGIN ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEBUG ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEREF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | INT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

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
# 3543 "parser.ml"
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
    | ABS ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | BEGIN ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEBUG ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
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
  

# 3608 "parser.ml"
