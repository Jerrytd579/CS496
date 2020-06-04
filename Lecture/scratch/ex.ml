(* Recursion on numbers *)

let rec fact (n:int):int =
match n with
| 0 -> 1
| m when m>0 -> m * fact (m-1)
| _ -> failwith "Argument to fact is negative"

let rec sum (n:int):int =
match n with
| 0 -> 0
| m -> m+sum (m-1)

(* Recursion on lists *)

let rec length (l:'a list):int =
match l with
| [] -> 0
| h::t -> 1 + length t

let rec suml (l:int list):int =
match l with
| [] -> 0
| h::t -> h + suml t

let rec bump (l:int list):int list =
match l with
| [] -> []
| h::t -> (h+1)::bump t

(* Exercise
Write a function stutter such that it
duplicates each element of a list.
Eg.
stutter [1;2] = [1;1;2;2]
stutter ["a";"b";"c"] = ["a";"a";"b";"b";"c";"c"]
What is its type?
*)

let rec stutter (l:'a list):'a list =
match l with
| [] -> []
| h::t -> h::h::stutter t

let rec stutter' = function
| [] -> []
| h::t -> h::h::stutter' t

(* rad [1;2;2;3;3;3;2] = [1;2;3;2] *)
let rec rad (l:'a list):'a list =
match l with
| [] -> []
| [h] -> [h]
| h1::h2::t when h1=h2 ->
rad (h2::t)
| h1::h2::t -> h1 :: rad (h2::t)


(* Exercise: 
    compress : 'a list -> (int*'a) list
    compress [1;9;9;3;7;7;7;7;5;5;5]
    =>
    [(1,1);(2,9);(1,3);(4,7);(3,5)]
    *)

(*
MY ATTEMPT
let count = 0
let rec compress(l: 'a list):'a list =
match l with
| [] -> []
| [h] -> [(1, h)]
| h1::h2::t when h1=h2 ->
count+1
rad (h2::t)
| h1::h2::t when h1!=h2 ->
[(count, h1)]
count = 0*)

let rec compress' i l =
    match l with
    | [] -> []
    | [x] -> [(x, i)]
    | h1::h2::t ->
        if h1=h2
            then compress'(i+1) (h2::t)
        else (h1,i)::compress' 1 (h2::t)

let compress l = compress' 1 l


(* 
succl: int list -> int list
to_upperl : char list -> char list
is_zero : int list -> bool list
*)

let succ i = i+1
let upper c = Char.uppercase_ascii c
let zero i = i = 0

let rec succl (l:int list): int list =
    match l with
    | [] -> []
    | h::t -> (h+1)::succl t

let rec to_upperl (l: char list): char list =
    match l with
    | [] -> []
    | h::t -> Char.uppercase_ascii h::to_upperl t

let rec is_zero (l:int list): bool list=
    match l with
    | [] -> []
    | h::t -> (h=0)::is_zero t


let rec map ('a -> 'b) -> 'a list -> 'b list = fun f l ->
    match l with
    | [] -> []
    | h::t -> (f h) :: map f t

let succ' = map succ
let to_upperl' = map upper
let is_zero' = map zero

(* greater_than_zero : int list -> int list
    upper : char list -> char list
    non_empty: 'a list list -> 'a list list
*)

let is_pos i = i>0
let is_upper c = c=Char.uppercase_ascii c
let is_nonempty l = l<>[]

let rec gtz (l:int list): int list =
    match l with
    | [] -> []
    | h::t ->
        if is_pos h
            then h::gtz
        else gtz t

let rec upper l =
    match l with
    | [] -> []
    | h::t ->
        if is_upper h
            then h::upper t
        else upper t

let rec non_empty l =
    match l with
    | [] -> []
    | h::t ->
        if is_nonempty h
            then h::non_empty t
        else non_empty t

let rec filter p l =
    match l with
    | [] -> []
    | h::t ->
    if p h
        then h:: filter p t
    else filter p t

