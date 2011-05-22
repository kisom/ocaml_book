(* basic sum *)
(* test run of compiling an OCaml program *)

let x   = 1
let y   = 2

let sum = fun i j -> i + j ;;

let z   = sum x y ;;

Printf.printf "sum %d %d = %d\n" x y z
