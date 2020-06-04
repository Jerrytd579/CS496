(********************************************************************************
* Author: Andrew Chuah, Jerry Cheng
* Date: 5/27/2020
* Pledge: I pledge my honor that I have abided by the Stevens Honor System.
* Description: logo.ml
********************************************************************************)

(* 
Encoding   Instruction
  0          Pen down
  1          Pen up
  2          Move north
  3          Move east
  4          Move south
  5          Move west
*)

type program = int list

let square : program = [0; 2; 2; 3; 3; 4; 4; 5; 5; 1]
let letter_e : program = [0; 2; 2; 3; 3; 5; 5; 4; 3; 5; 4; 3; 3; 5; 5; 1]

(* Colored: given a starting coordinate and a program returns the list
of coordinates that the program has colored using its pen, excluding duplicates *)
let pennorth (x,y) = (x, y+1)
let peneast (x,y) = (x+1, y)
let pensouth (x,y) = (x, y-1)
let penwest (x,y) = (x-1, y)

(* Matches the program direction with the coordinate *)
let rec draw = fun (x,y) command ->
  match command with
  | [] -> []
  | h::t -> (match h with
    | 0 -> (x,y) :: draw (x,y) t
    | 1 -> nodraw (x,y) t
    | 2 -> (pennorth (x,y)) :: draw ((pennorth (x,y))) t
    | 3 -> (peneast (x,y)) :: draw ((peneast (x,y))) t
    | 4 -> (pensouth (x,y)) :: draw ((pensouth (x,y))) t
    | 5 -> (penwest (x,y)) :: draw ((penwest (x,y))) t
    | _ -> failwith "Invalid program"
    )

and nodraw = fun (x,y) command ->
  match command with
  | [] -> []
  | h::t -> (match h with
    | 0 -> (x,y) :: draw (x,y) t
    | 1 -> nodraw (x,y) t
    | 2 -> nodraw ((pennorth (x,y))) t
    | 3 -> nodraw ((peneast (x,y))) t
    | 4 -> nodraw ((pensouth (x,y))) t
    | 5 -> nodraw ((penwest (x,y))) t
    | _ -> failwith "Invalid program"
  )

(* Helper function for colored *)
let rec colored_helper = fun(x, y) program ->
  match program with
  | [] -> []
  | h::t -> (match h with
    | 0 -> (x,y) :: draw (x,y) t
    | 1-> nodraw (x,y) t
    | 2-> nodraw ((pennorth (x,y))) t
    | 3-> nodraw ((peneast(x,y))) t
    | 4-> nodraw ((pensouth(x,y))) t
    | 5-> nodraw ((penwest(x,y))) t
    | _ -> failwith "Invalid program"
  )   

(* This creates a list of points, removes any dupes, and calls helper function *)
let colored : int*int -> program -> (int*int) list = fun point program ->
  List.sort_uniq compare (colored_helper point program)

(******************************************************************************)

(* Equivalent: checks whether two programs are equivalent. We say that two programs are equivalent
  if they color the same set of cooridnates. *)

let equivalent: program -> program -> bool = fun program_a program_b ->
  let atest = colored (0,0) program_a in
  let btest = colored (0,0) program_b in

  if atest = btest
  then true
  else false

(******************************************************************************)

(* Mirror_image: returns a program that draws the mirror image of the input program *)

let rec mirror_image: program -> program = fun program ->
  match program with
  | [] -> []
  | h::t -> (match h with
    | 0 -> 0 :: mirror_image t
    | 1 -> 1 :: mirror_image t
    | 2 -> 4 :: mirror_image t
    | 3 -> 5 :: mirror_image t
    | 4 -> 2 :: mirror_image t
    | 5 -> 3 :: mirror_image t
    | _ -> failwith "Invalid program"
  )

(********************************************************************************)

(* Rotate_90: given a program returns a new one which draws the same pictures except that they
are rotated 90 degrees*)

let rec rotate_90: program -> program = fun program ->
  match program with
  | [] -> []
  | h::t -> (match h with
    | 0 -> 0 :: rotate_90 t
    | 1 -> 1 :: rotate_90 t
    | 2 -> 3 :: rotate_90 t
    | 3 -> 4 :: rotate_90 t
    | 4 -> 5 :: rotate_90 t
    | 5 -> 2 :: rotate_90 t
    | _ -> failwith "Invalid program"
) 

(********************************************************************************)

(* Repeat: repeat n x returns a list with n copies of x.*)

let rec repeat : int -> 'a -> 'a list = fun n x ->
  match n with
  | 0 -> []
  | n -> x :: repeat (n-1) x

(********************************************************************************)  

(* Pantograph: returns a program that draws the same things as p, only enlarged n-fold *)
(* Explicit Pattern Matching *)
let rec pantograph : int -> program -> program = fun n program ->
  match program with
  | [] -> []
  | h::t -> 
    if h = 0 || h = 1 
    then h :: pantograph n t
    else repeat n h @ pantograph n t

(* Map Implementation *)
let rec repeat' : int -> 'a -> 'a list = fun n x ->
  match n with
  | 0 -> []
  | n -> (match x with
    | 0 -> [0]
    | 1 -> [1]
    | 2 -> x :: repeat (n-1) x
    | 3 -> x :: repeat (n-1) x
    | 4 -> x :: repeat (n-1) x
    | 5 -> x :: repeat (n-1) x
    | _ -> failwith "Invalid program."
  )

let pantograph_m : int -> program -> program = fun n program ->
  List.concat(List.map(repeat' n) program)

(* Fold Implementation *)
let pantograph_f : int -> program -> program = fun n program ->
  List.fold_right(fun i j -> (repeat' n i) @ j) program []

(********************************************************************************)

(* Compress: compresses a program by replacing adjacent copies of the same instruction with
  a tuple (m,n) where m is the instruction and n is the number of consecutive times it should be executed.*)

let rec compress' i l =
  match l with
  | [] -> []
  | [x] -> [(x, i)]
  | h1::h2::t ->
    if h1 = h2
    then compress'(i+1) (h2::t)
    else (h1, i)::compress' 1 (h2::t)

let compress l = compress' 1 l

(********************************************************************************)

(* Uncompress: decompresses a compressed program *)
(* Explicit Recursion: *)
let rec uncompress : (int*int) list -> program = fun compressed ->
  match compressed with
	| [] -> []
	| (f, s)::t -> repeat s f @ uncompress t

(* Map Implementation *)
let repeat'' t =
  match t with
  | (f, s) -> repeat s f

let uncompress_m : (int*int) list -> program = fun compressed ->
  List.concat(List.map repeat'' compressed)

(* Fold Implementation *)
let uncompress_f : (int*int) list -> program = fun compressed ->
  List.fold_right(fun compressed i -> (repeat'' compressed) @ i) compressed []