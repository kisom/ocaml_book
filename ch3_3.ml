(* introduction to objective caml chapter 3 *)

(* exercise 3.1
 * which of the following let-expressions is legal? *)
(* 1*) let x = 1 in x ;; (* legal: int = 1 *)
(* 2*) let x = 1 in let y = x in y ;; (* legal: int = 1  *)
(* 3*) let x = 1 and y = x in y ;;  (* illegal: 'and' implies recursive functions *)
(* 4*) let x = 1 and x = 2 in x ;;  (* illegal: x bound multiple times at same scope *)
(* 5*) let x = 1 in let x = x in x ;;
(* 6*) let a' = 1 in a' + 1 ;; (* *)

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
