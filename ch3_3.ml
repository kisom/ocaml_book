(* introduction to objective caml chapter 3 *)


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
