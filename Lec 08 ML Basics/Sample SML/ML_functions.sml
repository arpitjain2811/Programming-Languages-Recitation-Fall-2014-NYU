fun abs x = if x >= 0.0 then x else ~x;

fun double (n:int):int = n + n;

fun square (n:int):int = n * n;
fun halve (n:int):int = n div 2;
fun is_even (n:int):bool = (n mod 2 = 0);

val x:real = 2.0
fun h(y:real) = x+y;

fun length xs = if null xs
then 0
else 1 + length (tl xs);	


(* Parameter Matching *)
fun length [] = 0
| length (x::xs) = 1 + length xs	

fun append1 ([ ], ys) = ys
| append1 (x::xs, ys) = x :: append1 (xs, ys);



(* Functional*)
fn x => if x >= 0.0 then x else ~x;

(* Passing Fucntions *)
fun exists pred [ ] = false
| exists pred (x::xs) = pred x orelse exists pred xs;

exists (fn i => i = 1) [2, 3, 4];
(* Partial Application *)
val hasOne = exists (fn i => i = 1);
hasOne [3,2,1];


fun map f nil = nil
  | map f (h::t) = (f h) :: (map f t);


map (fn i => i+1) [2, 3, 4];

fun reduce (unit, opn, nil) = unit
  | reduce (unit, opn, h::t) = opn (h, reduce (unit, opn, t));

fun add_up l = reduce (0, op +, l);
fun mul_up l = reduce (1, op *, l);


(* Let *)

fun heronsformula (a, b, c) =
let val s = (a + b + c) / 2.0
	in
		Math.sqrt(s*(s-a)*(s-b)*(s-c))
	end;
heronsformula (15.0,13.0,4.0);

(* Mutually Recursive Functions *)
fun f 0 = 1
 |   f  x  =  x * g (x-1)
and  g 0 = 1
 |      g y = y * f (y-1);

(* Let *)
fun f a b =   
	let val x = a + b
		in x * x
     end;

