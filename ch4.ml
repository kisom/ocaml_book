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
       (* invalid - if fun is replaced with function it will, however, create an anonymous
	  function to match 2 *)

