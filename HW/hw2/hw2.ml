(********************************************************************************
* Author: Andrew Chuah, Jerry Cheng
* Date: 6/4/2020
* Pledge: I pledge my honor that I have abided by the Stevens Honor System.
* Description: hw2.ml
********************************************************************************)

(* Defines dTree, an algebraic type in OCaml which encodes binary decision trees
as depicted in Fig. 1*)
type dTree = Leaf of int | Node of char * dTree * dTree

(* Define two expressions, tLeft and tRight, of type dTree that represent each of the two trees*)
let tLeft = Node ('w', Node ('x', Leaf 2, Leaf 5), Leaf 8)
let tRight = Node ('w', Node ('x', Leaf 2, Leaf 5), Node ('y', Leaf 7, Leaf 5))

(* dTree_height: given a dTree, returns its height. *)
let rec dTree_height: dTree -> int = fun t ->
  match t with
  | Leaf(_) -> 0
  | Node(_, lt, rt) -> 1 + max (dTree_height lt) (dTree_height rt)

(* dTree_size: given a dTree, returns its size. The size of a dTree consists of the number of nodes
  and leaves *)
let rec dTree_size: dTree -> int = fun t ->
  match t with
  | Leaf(_) -> 1
  | Node(_, lt, rt) -> 1 + dTree_size lt + dTree_size rt

(* dTree_paths: given a dTree returns a list with all the paths to its leaves. A path is a list of
  digits in the set {0,1} such that if we follow it on the tree, it leads to a leaf. The order
  in which the paths are listed is irrelevant *)
let rec dTree_paths: dTree -> int list list = fun t ->
  match t with
  | Leaf(_) -> [[]]
  | Node(_, lt, rt) ->
    List.map(fun t -> 0::t) (dTree_paths lt)
    @ List.map(fun t -> 1::t) (dTree_paths rt)

(* dTree_is_perfect: determines whether a dTree is perfect. dTree is said to be perfect if all leaves
  has the same depth. *)
let rec dTree_is_perfect: dTree -> bool = fun t ->
  match t with
  | Leaf(_) -> true
  | Node(_, lt, rt) -> (dTree_is_perfect lt) && (dTree_is_perfect rt) && (dTree_height lt = dTree_height rt)

(* dTree_map: returns a new dTree that maps a given function onto the new dTree *)
let rec dTree_map: (char -> char) -> (int -> int) -> dTree -> dTree = fun f g t ->
  match t with
  | Leaf(a) -> Leaf((g a))
  | Node(b, lt, rt) -> Node((f b), (dTree_map f g lt), (dTree_map f g rt))

(* list_to_tree: given a list of characters l, creates a tree in which the symbols of an inner node 
  at level n corresponds to the nth element in l*)
let rec list_to_tree: char list -> dTree = fun l ->
  match l with
  | [] -> Leaf(0)
  | h::t -> Node(h, list_to_tree(t), list_to_tree(t))

(* replace_leaf_at: a function that given a tree t and a graph for function f, replaces all the leaves
  in t by the value indicated in the graph of the function. *)
let rec replace_leaf_at': dTree -> (int list*int) -> dTree = fun t (p,v) ->
  match p with
  | [] -> Leaf(v)
  | head::tail ->
    (match t with
    | Node(a, lt, rt) when head = 0 -> Node(a, replace_leaf_at' lt (tail, v), rt)
    | Node(b, lt, rt) when head = 1 -> Node(b, lt, replace_leaf_at' rt (tail, v))
    | _ -> failwith "Error")


let rec replace_leaf_at : dTree -> (int list * int) list -> dTree = fun t f ->
  List.fold_left replace_leaf_at' t f

(* bf_to_dTree takes a pair encoding of a boolean function and returns its tree encoding *)

let graph = ([([0;0;0],0);([0;0;1],1);([0;1;0],1);([0;1;1],0);([1;0;0],1);([1;0;1],0);([1;1;0],0);([1;1;1],1)])
let newtree =  ['x';'y';'z']

let bf_to_dTree: char list * (int list * int) list -> dTree = fun (a,b) ->
  replace_leaf_at(list_to_tree a) b
