object GenericsTest extends Application {

  abstract class Sum[t] {
    def add(x: t, y: t): t;
  }

  object intSum extends Sum[Int] {
    def add(x: Int, y: Int): Int = x + y;
  }

  class ListSum[a] extends Sum[List[a]] {
    def add(x : List[a], y : List[a]) : List[a] = x ::: y;
  }

  val s = new ListSum().add(List("a", "b"), List("c", "d"));
  val t = new ListSum().add(List(1, 2), List(3, 4));
  Console.println(s);
  Console.println(t);
}




*****************************************************************************************************

class Stack[T] {
  var elems: List[T] = Nil
  def push(x: T) { elems = x :: elems }
  def top: T = elems.head
  def pop() { elems = elems.tail }
}

object GenericsTest {
  val stack = new Stack[Int]
  stack.push(1)
  stack.push('a')
  println(stack.top)
  stack.pop()
  println(stack.top)
}

********************************************************************************************************

abstract class Term
case class Var(name: String) extends Term
case class Fun(arg: String, body: Term) extends Term
case class App(f: Term, v: Term) extends Term

object TermTest extends Application {
  def printTerm(term: Term) {
    term match {
      case Var(n) =>
        print(n)
      case Fun(x, b) =>
        print("^" + x + ".")
        printTerm(b)
      case App(f, v) =>
        Console.print("(")
        printTerm(f)
        print(" ")
        printTerm(v)
        print(")")
    }
  }
  def isIdentityFun(term: Term): Boolean = term match {
    case Fun(x, Var(y)) if x == y => true
    case _ => false
  }
  val id = Fun("x", Var("x"))
  val t = Fun("x", Fun("y", App(Var("x"), Var("y"))))
  printTerm(t)
  println
  println(isIdentityFun(id))
  println(isIdentityFun(t))
}

********************************************************************************************************

//if we have a generic type ConfigurationOption[T], and two classes, Child which extends Parent,
//the class ConfigurationOption[Child] is not a subclass of ConfigurationOption[Parent].
// Scala provides a way to make this happen, however:

class ConfigurationOption[+T](val key:Symbol, val value:T) {
  override def toString = key.toString +"=" + value.toString
}
 
class StringValue(val value:String) {
  override def toString = "{" + value + "}"
}
 
class AdvancedStringValue(pre:String, post: String, value:String) extends StringValue(value) {
  override def toString = pre + value + post
}
 
object GenericDemo { 
 
  val foo = new ConfigurationOption[StringValue]('foo,new StringValue("foo"))
  val bar = new ConfigurationOption[AdvancedStringValue]('bar,
    new AdvancedStringValue("-->","<--","foo"))
 
  def printMe(c:ConfigurationOption[StringValue]) = println(c)
 
  printMe(foo)
  printMe(bar)
}

