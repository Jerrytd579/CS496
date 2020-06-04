let ex = [(1, 2); (2, 3); (3, 1); (3, 4)]

(* outgoing ex 3 => [1,4] *)
let rec outgoing_nodes g n =
  match g with
  | [] -> []
  | (h1, h2)::t ->
    if(h1 = n) 
      then (h2) :: outgoing_nodes t n
    else outgoing_nodes t n


(* The list of nodes of the graph without duplicates, order irrelevant
  eg. nodes ex => [1,2,3,4]*)
  let rec nodes' g =
    match g with
    | [] -> []
    | (h1, h2)::t ->
      h1::h2 :: nodes' t


  let rec nodes g =
    List.sort_uniq compare (nodes' g)   
                     
(* Remove a node from the graph
  Eg. remove ex 2 => [(3,1); (3,4)]
*)
let rec remove g n =
  match g with
  | [] -> []
  | (h1, h2)::t ->
    if(h1 = n || h2 = n)
      then remove t n
    else (h1, h2) :: remove t n


(* Reachable nodes from a source node
  Eg. reachable ex 3 => [1,4,2,3] *)
let rec diff l1 l2 =
  match l1 with
  | [] -> []
  | h::t when List.mem h l2 -> diff t l2
  | h::t -> h::diff t l2

let rec reach' g visited curr =
  match curr with
  | [] -> visited
  | h::t ->
    let next = outgoing_nodes g h
    in reach' g (h::visited) ((diff next visited)@t)


let rec reachable g n =
  reach' g [] [n]
  

    


                                 

