(* introduction to objective caml chapter 3 *)

(* exercise 3.1
 * which of the following let-expressions is legal? *)
(* 1*) let x = 1 in x ;; (* legal: int = 1 *)
(* 2*) let x = 1 in let y = x in y ;; (* legal: int = 1  *)
(* 3*) let x = 1 and y = x in y ;;  (* illegal: 'and' implies recursive functions *)
(* 4*) let x = 1 and x = 2 in x ;;  (* illegal: x bound multiple times at same scope *)
(* 5*) let x = 1 in let x = x in x ;;
(* 6*) let a' = 1 in a' + 1 ;; (* legal: int = 2 *)
(* 7*) let 'a = 1 in 'a + 1 ;; (* illegal: variable names must start with lcase or underscore *)
(* 8*) let a'b'c' = 1 in a'b'c' ;; (* legal: int = 1 *)
(* 9*) let x x = x + 1 in x 2 ;; (* legal: int = 3 *)
(*10*) let rec x x = x + x in x 2 ;; (* legal: int = 4 *)
(*11*) let (++) f g x= f (g x) in
       let f x = x + 1 in
       let g x = x + 2 in 
       (f ++ g) 1
	 (* legal: int = 4, the last parenthesis might screw with your mind a bit but it works
	    bottom up. *)
(*12*) let (-) x y = y - x in 1 - 2 - 3 ;; (* legal: int = 2 *)
(*13*) let rec (-) x y = y - x in 1 - 2 - 3 ;; (* illegal: eternal hang, no bounding*)
(*14*) let (+) x y z = x + y + z in 5 + 6 7 ;; (* illegal: 6 is not a function *)
                                               (* let (+) x y z = x + y + z in (5 + 6) 7 would be *)
(*15*) let (++) x = x + 1 in ++ x ;; (* illegal: ++x doesn't work *)


(* exercise 3.2
 * what are the values of the following expressions? *)
(*1*) let x = 1 in let x = x + 1 in x ;;
      (* -: int = 2 *)
(*2*) let x = 1 in
      let f y = x in
      let x = 2 in
      f 0
      (* -: int = 2 *)
(*3*) let f x = x - 1 in
      let f x = f (x - 1) in
      f 0
      (* -: int = 0 *)
(*4*) let y = 2 in
      let f x = x + y in
      let f x = let y = 3 in f y in
      f 5
      (* -: int = 5 *)
(*5*) let rec factorial i =
	if i = 0 then
	  1
	else i * factorial (i - 1)
      in factorial 5
      (* -: int = 120 *)


(* exercise 3.3 *)
let rec sum = fun m n f ->
  if n = m then
    f n
  else
    (f n) + sum m (n - 1) f

    
(* exercise 3.4 *)
let rec (%%) n m =
  if m > 0 then
    if n > m then
      (n - m) %% m
    else
      n %% (m - n)
  else
    n


(* exercise 3.5 *)
let rec search = fun f n ->
  if n <= 0 then -1
  else
    if smaller f (n - 1) n = n then n
    else
      search f (n - 1)

and smaller = fun f i n ->
  if i <= 0 then n 
  else
    if f i < f n && f i > 0 then i else n


(* exercise 3.6 *)
(* implement the dictionary data type in OCaml. *)

let add = fun 

(* exercise 3.8 *)
(* stream functions *)
let (+:) = fun s c -> (fun i -> (s i) + c) ;;
