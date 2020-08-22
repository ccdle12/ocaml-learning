(* This is a single line comment. *)
(* 
 * This is a multine line comment.
 *)

(* This file runs through the very basics of the language *)


#use "import_me.ml";;

let printf = Printf.printf

(* 1. Print a string *)
let hello = "Hello, World!\n" ;;
printf "%s\n" hello ;;

(* 2. Variable assignment
 *   foo' is a convention in OCaml to indicate a temp variable of foo.
 *)
let foo = 1 ;;
let foo' = foo * 2;;
printf "%d\n" foo ;;

(* 3. Type Inference 
 *  Usually automatic, but we can set types.
 *)
let increment (x: int) : int = x + 1 ;;
let some_val = increment 1 ;;
printf "%d\n" some_val ;;

(* Pass functions into functions *)
let double_increment = increment (increment 5) ;;
printf "%d\n" double_increment ;;

(* 4. loops *)
let repeat msg iter = for i = 1 to iter do printf "%s\n" msg done ;;
repeat "hello" 10 ;;

(* 5. import functions from other files *)
let import_increment = inc 3 ;;
printf "%d\n" import_increment ;;

(* 6. Expressions *)
let x = 1 ;;
let y = 1 ;;
assert (x == y) ;;

(* 7. Ifs and operators *)
let result_1 = if 3 < 5 then "foo" else "bar" ;;
printf "%s\n" result_1 ;;

(* 8. Anonymous functions *)
let anon_inc = fun x -> x+1 ;;

(* 9. Pipeline functions (woah) *)
let square x = x*x ;;
assert (square(2) == 4) ;;

let result_2 = 5 |> anon_inc |> square |> anon_inc |> anon_inc |> square ;;
printf "%d\n" result_2 ;;

(* 10. Partial Application *)
(* addx function takes an integer x but returns a function of x + y *)
let addx x = fun y -> x + y ;;

(* add5 is a function returned from addx5, nothing actuall gets "executed", it
 * simply is a function that is: add5 (y) -> 5 + y *)
let add5 = addx 5 ;;

(* add5 actually executes the funciton adding 5 to y, in this case 2 *)
let result_3 = add5 2 ;;
assert (result_3 == 7) ;;

(* 11. Labeled and Optional Arguments *)
let labeled_func ~firstname ~lastname = printf "Hello %s %s\n" firstname lastname ;;
labeled_func ~firstname:"Darth" ~lastname:"Vader" ;;

let optional_func ?x:(x=10) ~y = x + y ;;
let result_4 = optional_func ~x:1 ~y:1 ;;
printf "result_4: %d\n" result_4 ;;

let result_5 = optional_func 1 ;;
printf "result_5: %d\n" result_5 ;;

(* Operators as Functions *)
let result_6 = (+) 3 4 ;;
printf "result_6: %d\n" result_6 ;;

(* Infix operator *)
let (^^) x y = max x y ;;
let result_7 = 2 ^^ 3 ;;
printf "result_7: %d\n" result_7 ;;
