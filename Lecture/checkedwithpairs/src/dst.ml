open ReM

type tenv =
  | EmptyTEnv
  | ExtendTEnv of string*Ast.texpr*tenv
                  

(* return type for the type-checker *)
type 'a tea_result = ('a,tenv) a_result


let run (c:'a tea_result) : 'a result =
  c EmptyTEnv

let extend_tenv : string -> Ast.texpr -> tenv tea_result =
  fun id t ->
  fun tenv ->
  Ok (ExtendTEnv(id,t,tenv))

let rec apply_tenv : string -> Ast.texpr tea_result =
  fun id tenv ->
  match tenv with
  | EmptyTEnv -> Error (id^" not found!")
  | ExtendTEnv(v,ev,tail) ->
    if id=v
    then Ok ev
    else apply_tenv id tail
