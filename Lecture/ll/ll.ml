type 'a node = { mutable data: 'a;
                  mutable next: ('a node) option }

type 'a ll = { mutable head: ('a node) option;
                mutable size: int}

let empty_list = {head = None ; size=0 }

let add : 'a ll -> 'a -> unit =
  fun ll v ->
  ll.head <- Some { data=v; next = ll.head};
  ll.size <- ll.size+1

let map ll f =
  let rec map' (n: ('a node) option) =
    match n with
    | None -> ()
    | Some m ->
      begin
          m.data <- f (m.data);
          map' (m.next)
      end
  in map' ll.head

(* Binary Trees *)
type 'a tnode = { mutable data: 'a;
                  mutable left: ('a tnode) option;
                  mutable right: ('a tnode) option;
                }

type 'a bt = { mutable root: ('a tnode) option;
                mutable size: int}
                