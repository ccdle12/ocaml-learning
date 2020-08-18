(* requires: x <= 3 *)
(* returns: fibonnaci number of x *)
let rec fib x = 
  if x <= 3 then 1
  else fib (x-1) + fib (x-2) ;;


let result = fib 10 ;;

assert (result == 34) ;;
print_int result ;;
