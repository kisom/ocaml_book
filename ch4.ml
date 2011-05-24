(* introduction to objective caml chapter 4 *)

(* exercise 4.1 *)
(* which of the following is legal? *)
(* 1*) match 1 with 
           1 -> 2
         | 2 -> 3 ;;
       (* valid: -: int -> 2 *)
(* 2*) match 2 with 
	   1 + 1 -> 2
	 | _     -> 3 ;;
       (* invalid *)
(* 3*) let _ as s = "abc" in s ^ "def" ;;
       (* valid: - : string = "abcdef" *)
(* 4*) (fun (1 | 2) as i -> i + 1) 2 ;;
       (* invalid - if fun is replaced with function it will, however, 
          create an anonymous function to match 2 *)

(* exercise 4.3 *)
let rec verify = fun pt ct ->
  if (String.length pt) <> (String.length ct) then false
  else
    if valid_pt (String.sub pt 0 1) (String.sub ct 0 1) then 
      if (String.length pt) = 1 then true
      else 
        verify (String.sub pt 1 (String.length pt)) 
               (String.sub ct 1 (String.length ct))
    else false
and valid_pt = fun pt0 ct0 ->
  match pt0.[0] with
    | 'A' -> if ct0.[0] = 'C' then true else false
    | 'B' -> if ct0.[0] = 'A' then true else false
    | 'C' -> if ct0.[0] = 'D' then true else false
    | 'D' -> if ct0.[0] = 'B' then true else false
    | _   -> raise (Invalid_argument "invalid plaintext character!")
;;

