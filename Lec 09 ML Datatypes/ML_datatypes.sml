(* Tuples *)
Control.Print.printDepth := 100;
Control.Print.printLength := 100;

val tup= ("Coding","Is","Fun");

#2 tup;
#1 tup;
#3 tup;

(* Records *)

val v = { x = 2.3, y = 4.1 };
#x v;

(* Type *)
type t=string;
val test:t = "hello";

type vec = { x : real, y : real };
val test_vector:vec={x=4.0,y=7.9};


fun diff {x,y} = x-y; (* Default type inferred is int *)
type vec = { x : int, y : int };
val int_vector:vec={x=4,y=7};
diff int_vector;

(* Force the results *)

fun diff {x,y} = x-y : real;

fun mix1 (x, y, z) = x * y + z : real;
fun mix2 (x: real, y, z) = x * y + z;	

(* Wildcard *)

(*  '_' maps to anything  *)

(* Datatypes *)

datatype suit = Spades | Hearts | Diamonds | Clubs;

fun outranks (Spades, Spades) = false
  | outranks (Spades, _) = true
  | outranks (Hearts, Spades) = false
  | outranks (Hearts, Hearts) = false
  | outranks (Hearts, _) = true
  | outranks (Diamonds, Clubs) = true
  | outranks (Diamonds, _) = false
  | outranks (Clubs, _) = false;


datatype tree = Leaf of int
				| Node of tree * tree;

(* tree is the new type. Leaf and Node are the constructors *)

fun sum (Leaf t) = t
| sum (Node (t1, t2)) = sum t1 + sum t2;			

val names = Node (Leaf 6, Leaf 8);

datatype expr = Numeral of int | Plus of expr * expr | Times of expr * expr;

val names= Numeral 6;

val kk = Plus(Times(Numeral 7,Numeral 8),Numeral 6);


(* Parameterized datatypes*)

datatype 'a gentree = Leaf of 'a
| Node of 'a gentree * 'a gentree;

val names = Node (Leaf "this", Leaf "that");

val names = Node (Leaf 4, Leaf 2);

val names = Node (Leaf 3.4, Leaf 4.6);

val names = Node (Leaf true, Leaf false);



(* character literals *)
val f= #"a";

(* Match partial patterns *)

fun check (x,_,z) = x+z;

check (1,2,3);

(* Built in type option *)	

datatype 'a option = NONE | SOME of 'a;


fun lookup _ [] = NONE | lookup checkKey ((k,v)::kvs) =
if checkKey k
then SOME v
else lookup checkKey kvs;

lookup (fn x => x=3) [(1,6),(2,8),(3,9)];
lookup (fn x => x=4) [(1,6),(2,8),(3,9)];

(* Some in-built library functions *)

(* Already discussed map*)

foldl (fn (a,b) => "(" ^ a ^ "+" ^ b ^ ")") "0" ["1", "2", "3"];

foldr (fn (a,b) => "(" ^ a ^ "+" ^ b ^ ")") "0" ["1", "2", "3"];


