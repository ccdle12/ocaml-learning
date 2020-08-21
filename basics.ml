(* This is a single line comment. *)
(* 
 * This is a multine line comment.
 *)

(* This file runs through the very basics of the language *)


#use "import_me.ml";;


(* 1. Print a string *)
let hello = "Hello, World!\n" ;;
print_string hello ;;

(* 2. Variable assignment
 *   foo' is a convention in OCaml to indicate a temp variable of foo.
 *)
let foo = 1 ;;
let foo' = foo * 2;;
print_int foo

(* 3. Type Inference 
 *  Usually automatic, but we can set types.
 *)
let increment (x: int) : int = x + 1 ;;
let some_val = increment 1 ;;
print_int some_val

(* Pass functions into functions *)
let double_increment = increment (increment 5) ;;
print_int double_increment

(* 4. loops *)
let repeat msg iter = for i = 1 to iter do print_string msg done ;;
repeat "hello\n" 10 ;;

(* 5. import functions from other files *)
let import_increment = inc 3 ;;
print_int import_increment

(* 6. Expressions *)
let x = 1 ;;
let y = 1 ;;
assert (x == y) ;;

(* 7. Ifs and operators *)
let result_1 = if 3 < 5 then "foo" else "bar" ;;
print_endline result_1

(* 8. Anonymous functions *)
let anon_inc = fun x -> x+1 ;;

(* 9. Pipeline functions (woah) *)
let square x = x*x ;;
assert (square(2) == 4) ;;

let result_2 = 5 |> anon_inc |> square |> anon_inc |> anon_inc |> square ;;
print_int result_2 ;;

(* 10. Partial Application *)
(* addx function takes an integer x but returns a function of x + y *)
let addx x = fun y -> x + y ;;

(* add5 is a function returned from addx5, nothing actuall gets "executed", it
 * simply is a function that is: add5 (y) -> 5 + y *)
let add5 = addx 5 ;;

(* add5 actually executes the funciton adding 5 to y, in this case 2 *)
let result_3 = add5 2 ;;
assert (result_3 == 7) ;;
