type env = EmptyEnv | ExtendEnv of string*exp_val*env

let e = ExtendEnv("i", NumVal 2, ExtendEnv("z".BoolVal true, EmptyEnv))

let rec size : env -> int =
  fun en ->
  match en with
  | EmptyEnv -> 0
  | ExtendEnv(_,_,tail) -> 1 + size t

let rec mem : string -> env -> bool =
  fun s en ->
  match en with
  | EmptyEnv -> false
  | ExtendEnv(k,_,tail) -> s=k || mem s tail