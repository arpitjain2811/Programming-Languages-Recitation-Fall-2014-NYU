class Calculator 
{
	val brand: String = "HP"
	def add(m: Int, n: Int): Int = m + n
}

val calc = new Calculator
calc.add(1, 2)
calc.brand
/*****************************************************/

class Calculator(brand: String) {
  /**
   * A constructor.
   */
  val color: String = if (brand == "TI") {
    "blue"
  } else if (brand == "HP") {
    "black"
  } else {
    "white"
  }
  // An instance method.
  def add(m: Int, n: Int): Int = m + n
}

val calc = new Calculator("HP")
calc.color

/*****************************************************/

object MultipleConstructors {
   
  def main(args: Array[String]) {
 
    // (1) use the primary constructor
    val al = new Person("Alvin", "Alexander", 20)
    println(al)
 
    // (2) use a secondary constructor
    val fred = new Person("Fred", "Flinstone")
    println(fred)
 
    // (3) use a secondary constructor
    val barney = new Person("Barney")
    println(barney)
 
  }
 
}
 
class Person(val firstName: String, val lastName: String, val age: Int) {
   
  /**
   * A secondary constructor.
   */
  def this(firstName: String) {
    this(firstName, "", 0);
    
    println("\nNo last name or age given.")
  }
   
  /**
   * Another secondary constructor.
   */
  def this(firstName: String, lastName: String) {
    this(firstName, lastName, 0);
    println("\nNo age given.")
  }
   
  override def toString: String = {
    return "%s %s, age %d".format(firstName, lastName, age)
  }
 
}

/**************************************************************************************

