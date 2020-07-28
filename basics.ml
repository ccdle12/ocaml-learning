(* Docs to learn about ocaml: https://learnxinyminutes.com/docs/ocaml/ *)

(* This is a single line comment. *)
(* 
 * This is a multine line comment.
 *)

(* This file runs through the very basics of the language *)

(* 1. Print a string *)
let hello = "Hello, World!\n" ;;
print_string hello ;;

(* 2. Variable assignment
 *   foo' is a convention in OCaml to indicate a tm variable of foo.
 *)
let foo = 1 ;;
let foo' = foo * 2;;
Printf.printf "foo: %d\n" foo ;;
Printf.printf "foo': %d\n" foo' ;;

(* 3. Type Inference 
 *  Usually automatic, but we can set types.
 *)
let increment (x: int) : int = x + 1 ;;
let some_val = increment 1 ;;
(* we can also call functions using increment(1)*)
Printf.printf "some_val: %d\n" some_val ;;

(* 4. loops and prompts *)
let repeat msg iter = for i = 1 to iter do print_string msg done ;;
repeat "hello\n" 10 ;;
