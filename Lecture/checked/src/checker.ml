open Ast
open ReM
open Dst

 
let rec chk_expr : expr -> texpr tea_result =
  fun e ->
  match e with
  | Int(_n) -> return IntType
  | Var(id) -> apply_tenv id
  | Add(e1,e2) |  Sub(e1,e2) | Mul(e1,e2) | Div(e1,e2) ->
    chk_expr e1 >>= fun t1 ->
    chk_expr e2 >>= fun t2 ->
    if t1=IntType && t2=IntType
    then return IntType
    else error "Arguments of bin op must be ints"
  | Let(v,def,body) ->
    chk_expr def >>= 
    extend_tenv v >>+
    chk_expr body
  | ITE(e1,e2,e3) ->
    chk_expr e1 >>= fun te1 ->
    if te1=BoolType
    then (chk_expr e2 >>= fun te2 ->
          chk_expr e3 >>= fun te3 ->
          if te2=te3
          then return te2
          else error "ITE: branches have to have same type")
      else error "Condition of ITE must be a boolean"
  | IsZero(e) ->
    chk_expr e >>= fun te2 ->
    if te2=IntType
    then return BoolType
    else error "Zero: argument must have type int"
  | Proc(id,_t,e)  ->
    extend_tenv id t >>+
    chk_expr e >>= fun te ->
    retrun (FuncType(t,te))
  | App(e1,e2)  -> 
    chk_expr e1 >>= fun te1 ->
    chk_expr e2 >>= fun te2 ->
    (match te1 with
      | FuncType(d,c) -> if d=te2
                            then return c
                            else error "App: Type of argument incorrect"
      | _ -> error "App: LHS must be a function"
    )
 (*   
 | Pair(e1,e2) ->
    eval_expr e1 >>= fun ev1 ->
    eval_expr e2 >>= fun ev2 ->
    return @@ PairVal(ev1,ev2)
  | Fst(e) ->
    eval_expr e >>=
    pair_of_pairVal >>= fun p ->
    return @@ fst p 
  | Snd(e) ->
    eval_expr e >>=
    pair_of_pairVal >>= fun p ->
    return @@ snd p
  | Letrec(id,par,_tpar,_tres,e,target) ->
    extend_env_rec id par e >>+
    eval_expr target 
  | NewRef(e) ->
    eval_expr e >>= fun ev ->
    return (RefVal (Store.new_ref g_store ev))
  | DeRef(e) ->
    eval_expr e >>=
    int_of_refVal >>= 
    Store.deref g_store
  | SetRef(e1,e2) ->
    eval_expr e1 >>=
    int_of_refVal >>= fun l ->
    eval_expr e2 >>= fun ev ->
    Store.set_ref g_store l ev >>= fun _ ->
    return UnitVal    
  | BeginEnd([]) ->
    return UnitVal
  | BeginEnd(es) ->
    sequence (List.map eval_expr es) >>= fun l ->
    return (List.hd (List.rev l))
  | Record(fs) ->
    sequence (List.map (fun (_id,e) -> eval_expr e) fs) >>= fun evs ->
    return (RecordVal (addIds fs evs))
  | Proj(e,id) ->
    eval_expr e >>=
    fields_of_recordVal >>= fun fs ->
    (match List.assoc_opt id fs with
    | None -> error "not found"
    | Some ev -> return ev)
  | Unit -> return UnitVal *)
  | Debug(_e) ->
    return UnitType
  | _ -> error ("Not implemented: "^string_of_expr e)


             
(* Parse a string into an ast *)

let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast

let lexer s =
  let lexbuf = Lexing.from_string s
  in Lexer.read lexbuf 


(* Type-check an expression *)
let chk (s:string) : texpr result =
  let c = s |> parse |> chk_expr
  in run c





