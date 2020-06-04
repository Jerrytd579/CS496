
(* Quiz 2: ADTs *)

type 'a bt = Empty |  Node of 'a*'a bt*'a bt

(* returns the smallest element of a non-empty binary tree *)
let rec mint t =
  match t with
  | Empty -> failwith "mint: tree is empty"
  | Node(i,Empty,Empty) -> i
  | Node(i, lt, Empty) -> min i (mint lt)
  | Node(i, Empty, rt) -> min i (mint rt)
  | Node(i, lt, rt) -> min i (min (mint lt) (mint rt))

(* returns the largest element of a non-empty binary tree *)
let rec maxt t =
  match t with
  | Empty -> failwith "maxt: tree is empty"
  | Node(i,Empty,Empty) -> i
  | Node(i, lt, Empty) -> max i (maxt lt)
  | Node(i, Empty, rt) -> max i (maxt rt)
  | Node(i, lt, rt) -> max i (min (maxt lt) (maxt rt))

(* Determines whether a binary is a binary search tree *)
let rec is_bst t =
  match t with
  | Empty -> true
  | Node(_,Empty,Empty) -> true
  | Node(i, Empty, rt) -> i < mint rt && is_bst rt
  | Node(i, lt, Empty) -> maxt lt < i && is_bst lt
  | Node(i, lt, rt) -> maxt lt < i && i < mint rt && is_bst lt && is_bst rt

(* Adds a value to a BST 
   Should fail (with failwith) if the value is already in the tree *)
let rec add v t =
  match t with
  | Empty -> Node(v, Empty, Empty)
  | Node(i, lt, rt) ->
    if v<i
    then Node(i, add v lt, rt)
    else Node(i, lt, add v rt)

(* Remove a value from a BST
   Should fail (with failwith) if the value is not in tree *)
let rec max_elem t =
  match t with
  | Node(i, lt,Empty) -> i
  | Node(i, lt, rt) -> max_elem rt
  | _ -> failwith "max_elem: tree cannot be empty"

let rec rem v t =
  match t with
  | Empty -> failwith "Value not in tree"
  | Node(i, Empty,Empty) when v=i -> Empty
  | Node(i,lt,Empty) when v=i -> lt
  | Node(i, Empty, rt) when v=i -> rt
  | Node(i,lt,rt) when v=i -> let m = max_elem lt
                              in Node(m, rem m lt, rt)
  | Node(i,lt,rt) ->
    if v<i
    then Node(i, rem v lt, rt)
    else Node(i, lt, rem v rt)








