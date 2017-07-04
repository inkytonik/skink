package psksvp

// this file is a scratch pad

import au.edu.mq.comp.smtlib.interpreters.SMTLIBInterpreter
import au.edu.mq.comp.smtlib.parser.{SMTLIB2Parser, SMTLIB2PrettyPrinter}
import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax._
import au.edu.mq.comp.smtlib.typedterms.QuantifiedTerm
import logics._
import org.bitbucket.inkytonik.kiama.util.StringSource

import scala.util.{Success, Failure}


object runSkink
{
  def apply(filename:String,
            predicates:Seq[BooleanTerm],
            useO2:Boolean,
            usePredicateAbstraction:Boolean,
            useClang:String = "clang-4.0",
            maxIteration:Int = 20):Unit=
  {
    import au.edu.mq.comp.skink.Main
    PredicatesAbstraction.setToUsePredicates(predicates)
    val args = List("-v",
                    if(usePredicateAbstraction) "--use-predicate-abstraction" else "",
                    if(useO2) "" else "--no-O2",
                     "--use-clang", useClang,
                     "-m", maxIteration.toString,
                    filename)

     Main.main(args.filter(_.length > 0).toArray)

    println("---------------------------------------------------")
  }
}


/**
  * Created by psksvp on 9/5/17.
  */
object test
{
  def main(args: Array[String]): Unit =
  {
    test62()
  }

  def testCheckPost():Unit=
  {
    val i = Ints("i")
    val j = Ints("j")

    val solver = new SMTLIBInterpreter(solverFromName("Z3"))
    println(checkPost(i > 0 & j > 0, i === j + 1, i >= 1 & j > 0)(solver))
    solver.destroy()
  }


//  def testAbstractPost():Unit=
//  {
//    val i = Ints("i")
//    val j = Ints("j")
//    val p = List(i >= 1, j > 0)
//    val k = PredicatesAbstraction.computeAbstractPost(i === 0 & j === 1, i === j + 1, p)
//    println(termAsInfix(k))
//  }


  def runBunch(filePaths:Seq[String], useO2:Boolean, useClang:String):Unit =
  {
    import java.io.{PrintStream, File}
    for(path <- filePaths)
    {
      print(s"running:$path ")
      val outputFile = new File(path + ".txt")
      Console.withOut(new PrintStream(outputFile))
      {
        runSkink(path, Nil, useO2, usePredicateAbstraction = true, useClang)
      }
      import sys.process._
      val result = Seq("/usr/bin/tail", "-n", "2", path + ".txt").!!
      println(s"-----> $result")
    }
  }

  def testBunchEasy():Unit =
  {
    val files = List("/home/psksvp/workspace/svcomp/c/loop-acceleration/diamond_false-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/diamond_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/diamond_true-unreach-call2.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/functions_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/multivar_false-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/multivar_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/nested_false-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/nested_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/overflow_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/phases_false-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/phases_false-unreach-call2.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/phases_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/phases_true-unreach-call2.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_false-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_false-unreach-call2.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_false-unreach-call3.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_false-unreach-call4.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_true-unreach-call2.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_true-unreach-call3.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/simple_true-unreach-call4.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/underapprox_false-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/underapprox_false-unreach-call2.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/underapprox_true-unreach-call1.c",
                     "/home/psksvp/workspace/svcomp/c/loop-acceleration/underapprox_true-unreach-call2.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/down_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/fragtest_simple_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/half_2_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/id_build_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/id_trans_false-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/large_const_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/MADWiFi-encode_ie_ok_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/nest-if3_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/nested6_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/nested9_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/NetBSD_loop_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/sendmail-close-angle_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/SpamAssassin-loop_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loop-invgen/string_concat-noarr_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum01_bug02_false-unreach-call_true-termination.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum01_bug02_sum01_bug02_base.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum01_false-unreach-call_true-termination.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum01_true-unreach-call_true-termination.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum03_false-unreach-call_true-termination.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum03_true-unreach-call_false-termination.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum04_false-unreach-call_true-termination.c",
                     "/home/psksvp/workspace/svcomp/c/loops/sum04_true-unreach-call_true-termination.c",
                     "/home/psksvp/workspace/svcomp/c/loops/trex01_true-unreach-call.c",
                     "/home/psksvp/workspace/svcomp/c/loops/trex02_false-unreach-call_true-termination.c")

    runBunch(files, true, "clang-4.0")
  }


  def testDNF(): Unit =
  {
    import scala.util.{Try, Success}
    import au.edu.mq.comp.smtlib.interpreters.Resources
    object resources extends Resources
    import resources._

    val a = Ints("a")
    val b = Ints("b")
    val c = a > 0 | b < 10 | a === b

    val d = psksvp.SMTLIB.breakOrTerm(c.typeDefs, c.termDef)

    println(termAsInfix(d))

    for(t <- d)
      println(termAsInfix(t) + ", " + t.typeDefs)

//    val p0 = Bools("p0")
//    val p1 = Bools("p1")
//    val dnf = (!p0 & !p1) | (!p0 & p1) | (p0 & !p1) | (p0 & p1)
//    val cnf = (!p0 | !p1) & (!p0 | p1) & (p0 | !p1) & (p0 | p1)
//    val r = using[Boolean](new SMTLIBInterpreter(solverFromName("Z3")))
//      {
//        implicit solver =>
//          println(equivalence(True(), dnf))
//          println(equivalence(False(), cnf))
//
//          Success(true)
//      }
  }

  def testQE(): Unit =
  {
    object qt extends QuantifiedTerm
    import qt._

    val b = Ints("b")
    val c = b.indexed(1) == b.indexed(2)
    println(s"-------> $c")

    val a = Ints("a").indexed(1)
    val cmp = Bools("cmp")
    val five = Ints("five")
    val ex = SMTLIB.Exists(five.symbol, cmp.symbol)
    {
      five === a & cmp === (five < 1000) & True() === cmp
    }


    val solver = new SMTLIBInterpreter(solverFromName("Z3"))
    psksvp.SMTLIB.Z3QE(ex)(solver) match
    {
      case Success(r) => for (t <- r) println(termAsInfix(t))
      case _ => println("not good")
    }
    solver.destroy()
  }


  def test1(): Unit =
  {
    val i = Ints("%i")
    val a = Ints("%a")

    // predicate abs ok
    val code =  """
      |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
      |
      |int main(int argc, char** arg)
      |{
      |  int i;
      |  for(i = 1; i <= 1000; i++);
      |
      |  if(i != 1001) __VERIFIER_error();
      |  return 0;
      |}
    """.stripMargin

    runSkink(toFile(code),
               List(i >= 1, i <= 1000, !(i === 1001)),
               useO2 = false,
               usePredicateAbstraction = true,
               useClang = "clang-3.7")
  }

  def test1Dot1(): Unit =
  {
    val i = Ints("%i")
    val a = Ints("%a")

    // predicate abs ok
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |unsigned int __VERIFIER_nondet_uint();
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  unsigned int n = __VERIFIER_nondet_uint();
                  |  int i;
                  |  for(i = 1; i <= n; i++);
                  |
                  |  if(i != n + 1) __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              Nil, //List(i >= 1, i <= 1000, !(i === 1001)),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }

  def test2(): Unit =
  {
    val i = Ints("%i")
    val a = Ints("%a")

    // predicate abs ok
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int i;
                  |  int a = 0;
                  |  for(i = 1; i <= 1000; i++);
                  |
                  |  if(i != 1001) __VERIFIER_error();
                  |  if(a != 0) __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              List(i >= 1, i <= 1000, !(i === 1001), a === 0),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }

  def test3(): Unit =
  {
    val i = Ints("%i")
    val a = Ints("%a")

    // pred abs works
    // interpol require many iteration
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int a = 0;
                  |  int i = 0;
                  |  while(i < 1000)
                  |  {
                  |    if(i != a) __VERIFIER_error();
                  |    i = i + 1;
                  |    a = i;  //a = a + 1;
                  |  }
                  |  if(i != 1000)  __VERIFIER_error();
                  |  if(a != 1000)  __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
               List(/*i >= 0,*/ i < 1000, i === 1000, /*a >= 0, a < 1000,*/ a === 1000, a === i),
               useO2 = false,
               usePredicateAbstraction = true,
               useClang = "clang-3.7")
  }

  def test4(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")

    // interpolant have problem
    // predicate abs ok
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int x = 0;
                  |  int y = 0;
                  |  while(x < 2000)
                  |  {
                  |      x++;
                  |      y++;
                  |  }
                  |  if(x != 2000) __VERIFIER_error();
                  |  if(y < 0)   __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
               List(x >= 0, y >= 0, x === 2000, x < 2000),
               useO2 = false,
               usePredicateAbstraction = true,
               useClang = "clang-3.7")
  }

  def test5(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")

    //
    // both ok.
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int x = 0;
                  |  int y = 0;
                  |  while(x < 2000)
                  |  {
                  |      x++;
                  |      y++;
                  |  }
                  |  if(x == -1) __VERIFIER_error();
                  |  if(y == -1)   __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
               Nil, //List(x >= 0, y >= 0, x === 2000, x < 2000),
               useO2 = false,
               usePredicateAbstraction = true,
               useClang = "clang-3.7")
  }

  def test51(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")

    //
    // both ok.
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |unsigned int __VERIFIER_nondet_uint();
                  |extern void __VERIFIER_assume(int);
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int n = __VERIFIER_nondet_uint();
                  |  int x = 0;
                  |  int y = 0;
                  |  __VERIFIER_assume(n > 0);
                  |  while(x < n)
                  |  {
                  |      x++;
                  |      y++;
                  |  }
                  |  if(x == -1) __VERIFIER_error();
                  |  if(y == -1)   __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              Nil, //List(x >= 0, y >= 0, x === 2000, x < 2000),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }

  def test6(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")

    // pred abs works
    // interpol require many iteration
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int x = 2000;
                  |  while(x > 0)
                  |  {
                  |      int y = 0;
                  |      while(y < x) y++;
                  |      if(y != x) __VERIFIER_error();
                  |      x--;
                  |  }
                  |  if(x != 0) __VERIFIER_error();
                  |
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              Nil, //List( x === 0, x > 0, y === x, y < x),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }

  def test61(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")

    // pred abs works
    // interpol require many iteration
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |unsigned int __VERIFIER_nondet_uint();
                  |extern void __VERIFIER_assume(int);
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  unsigned int x = __VERIFIER_nondet_uint();
                  |  __VERIFIER_assume(x > 0);
                  |  while(x > 0)
                  |  {
                  |      unsigned int y = 0;
                  |      while(y < x) y++;
                  |      if(y != x) __VERIFIER_error();
                  |      x--;
                  |  }
                  |  if(x != 0) __VERIFIER_error();
                  |
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              Nil, //List( x === 0, x > 0, y === x, y < x),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }

  def test62(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")

    // pred abs works
    // interpol require many iteration
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |extern int __VERIFIER_nondet_int();
                  |extern void __VERIFIER_assume(int);
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int x = __VERIFIER_nondet_int();
                  |  __VERIFIER_assume(x > 0);
                  |  while(x > 0)
                  |  {
                  |      int y = 0;
                  |      while(y < x) y++;
                  |      if(y != x) __VERIFIER_error();
                  |      x--;
                  |  }
                  |  if(x != 0) __VERIFIER_error();
                  |
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              Nil, //List( x === 0, x > 0, y === x, y < x),
              useO2 = true,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }

  def test7(): Unit =
  {
    val x = Ints("%x")
    val a = Ints("%a")

    // pred abs works
    // intepol works with too many iterations
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main()
                  |{
                  |  int x = 1;
                  |  int a = 0;
                  |  while(x <= 1000)
                  |  {
                  |    a = a + 1;
                  |    if(a != x) __VERIFIER_error();
                  |    x = x + 1;
                  |  }
                  |  if(a != 1000) __VERIFIER_error();
                  |  if(x != 1001) __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              List( x >= 0, x <= 1000, a === 1000, a === x, a === x - 1, x === 1001),
              useO2 = true,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }
  def test71(): Unit =
  {
    val x = Ints("%x")
    val a = Ints("%a")
    val n = Ints("%n")

    // pred abs works
    // intepol works with too many iterations
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |unsigned int __VERIFIER_nondet_uint();
                  |
                  |int main()
                  |{
                  |  unsigned int n = __VERIFIER_nondet_uint();
                  |  int x = 1;
                  |  int a = 0;
                  |  while(x <= n)
                  |  {
                  |    a = a + 1;
                  |    if(a != x) __VERIFIER_error();
                  |    x = x + 1;
                  |  }
                  |  if(a != n) __VERIFIER_error();
                  |  if(x != n + 1) __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              List( x >= 0, x <= n, a === n, a === x, a === x - 1, x === n + 1),
              useO2 = true,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }

  def test8(): Unit =
  {
    val x = Ints("%x")
    val a = Ints("%a")

    // predABS works 53 sec
    // interpol does not work max iter reach
    // non linear relation ship between a and x
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  int x = 1;
                  |  int a = 0;
                  |  while(x <= 10)
                  |  {
                  |    a = a + x;
                  |    x = x + 1;
                  |  }
                  |  if(a != 55) __VERIFIER_error();
                  |  if(x != 11) __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              List( x >= 1, x <= 10, a === 0, a === 55, a === ((x * x) / 2) - (x / 2), x === 11),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }

  def test81(): Unit =
  {
    val x = Ints("%x")
    val a = Ints("%a")
    val n = Ints("%n")
    val p = Ints("%p")

    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |unsigned int __VERIFIER_nondet_uint();
                  |
                  |int main(int argc, char** arg)
                  |{
                  |  unsigned int p = __VERIFIER_nondet_uint();
                  |  int n = p + 1;
                  |  int x = 1;
                  |  int a = 0;
                  |  while(x <= n)
                  |  {
                  |    a = a + x;
                  |    if(a < x) __VERIFIER_error();
                  |    x = x + 1;
                  |  }
                  |  if(x != n + 1) __VERIFIER_error();
                  |  if(0 == a) __VERIFIER_error();
                  |  return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              List( p >= 0, n >= 1, x >= 1, x <= n, a >= 0, a >= x,  x === n + 1, a === 0),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }


  def test9(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")
    val n = Ints("%n")

    // both works
    // count_up_down_true-unreach-call_true-termination.c
    val code =  """
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |unsigned int __VERIFIER_nondet_uint();
                  |
                  |int main()
                  |{
                  |  unsigned int n = __VERIFIER_nondet_uint();
                  |  unsigned int x=n, y=0;
                  |  while(x>0)
                  |  {
                  |    x--;
                  |    y++;
                  |  }
                  |  if(y != n) __VERIFIER_error();
                  |}
                """.stripMargin

    runSkink(toFile(code),
              List( n >= 0, x === n, x > 0, y === 0, y === n, y === n - x),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }

  def test10(): Unit =
  {
    //val i = Ints("%i")
    //val j = Ints("%j")

    val i = Ints("%2")
    val j = Ints("%3")

    // interpolant works
    // predicate abstraction works
    // cggmp2005_true-unreach-call.c
    val code =  """
                  |// Source: A. Costan, S. Gaubert, E. Goubault, M. Martel, S. Putot: "A Policy
                  |// Iteration Algorithm for Computing Fixed Points in Static Analysis of
                  |// Programs", CAV 2005
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |unsigned int __VERIFIER_nondet_uint();
                  |
                  |int main()
                  |{
                  |    int i,j;
                  |    i = 1;
                  |    j = 10;
                  |    while (j >= i)
                  |    {
                  |        i = i + 2;
                  |        j = -1 + j;
                  |    }
                  |    if(j != 6) __VERIFIER_error();
                  |    return 0;
                  |}
                """.stripMargin


    runSkink(toFile(code),
              List( i === 1, j === 10 , j === 6, j >= i, i === Ints(21) - (j * 2) ),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }

  def test11(): Unit =
  {
    val x = Ints("%x")
    val y = Ints("%y")

    // interpolant: max iter reach
    // predicate abstraction works 399 sec, now down to 196
    val code =  """
                  |// Source: Sumit Gulwani, Nebosja Jojic: "Program Verification as
                  |// Probabilistic Inference", POPL 2007.
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |
                  |int main()
                  |{
                  |    int x = 0;
                  |    int y = 50;
                  |    while(x < 100)
                  |    {
                  |	     if (x < 50)
                  |	       x = x + 1;
                  |	     else
                  |      {
                  |	       x = x + 1;
                  |	       y = y + 1;
                  |	     }
                  |    }
                  |    if(y != 100) __VERIFIER_error();
                  |    return 0;
                  |}
                """.stripMargin

    runSkink(toFile(code),
              List( x === 0, y === 50, x < 100, x < 50, y === 100, x === y),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }

  def test12(): Unit =
  {
    val m = Ints("%m")
    val n = Ints("%n")
    val x = Ints("%x")
    val call1 = Ints("%call1")


    // interpolant: max iter reach
    // predicate abstraction     no
    // gj2007b_true-unreach-call.c
    val code =  """
                  |// Source: Sumit Gulwani, Nebosja Jojic: "Program Verification as
                  |// Probabilistic Inference", POPL 2007.
                  |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                  |int __VERIFIER_nondet_int();
                  |
                  |
                  |int main()
                  |{
                  |    int x = 0;
                  |    int m = 0;
                  |    int n = __VERIFIER_nondet_int();
                  |    while(x < n)
                  |    {
                  |	      if(__VERIFIER_nondet_int())
                  |       {
                  |	        m = x;
                  |	      }
                  |	      x = x + 1;
                  |    }
                  |
                  |    if(!(m >= 0 || n <= 0) ) __VERIFIER_error(); //__VERIFIER_assert((m >= 0 || n <= 0));
                  |    //if(!(m < n || n <= 0)  ) __VERIFIER_error(); //__VERIFIER_assert((m < n || n <= 0));
                  |    return 0;
                  |}
                """.stripMargin

    def implies(a:BooleanTerm, b:BooleanTerm):BooleanTerm = !a | b

    runSkink(toFile(code),
              List(m === x, x < n, n <= 0, m >= 0, m < n),
              useO2 = false,
              usePredicateAbstraction = true,
              maxIteration = 30,
              useClang = "clang-3.7")
  }

  def test13(): Unit =
  {
      val r = Ints("%r")

      //val i = Ints("%2")
      //val j = Ints("%3")


      /// this is false
      val code =

        """
            |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
            |
            |
            |int __VERIFIER_nondet_int();
            |
            |int main ()
            |{
            |  int r = __VERIFIER_nondet_int();
            |  while (r > 0)
            |  {
            |      if(!(r > 0)) __VERIFIER_error();
            |      r = r - 1;
            |  }
            |  if(!(r > 0)) __VERIFIER_error();
            |}
          """.stripMargin

      runSkink(toFile(code),
                List( r > 0 ),
                useO2 = false,
                usePredicateAbstraction = true,
                useClang = "clang-3.7")
  }

  def test14():Unit =
  {
    val code2 =
      """
        |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
        |
        |void __VERIFIER_assert(int cond) {
        |  if (!(cond)) {
        |    ERROR: __VERIFIER_error();
        |  }
        |  return;
        |}
        |
        |int main(void) {
        |  unsigned int x = 0;
        |  unsigned int y = 1;
        |
        |  while (x < 6) {
        |    x++;
        |    y *= 2;
        |  }
        |
        |  __VERIFIER_assert(x != 6);
        |}
      """.stripMargin
    val code =
      """
        |extern void __VERIFIER_error(void);
        |extern void __VERIFIER_assume(int);
        |void __VERIFIER_assert(int cond) {
        |  if (!(cond)) {
        |    ERROR: __VERIFIER_error();
        |  }
        |  return;
        |}
        |int __VERIFIER_nondet_int();
        |#define LARGE_INT 1000000
        |int main()
        |{
        |    int scheme;
        |    int urilen,tokenlen;
        |    int cp,c;
        |    urilen = __VERIFIER_nondet_int();
        |    tokenlen = __VERIFIER_nondet_int();
        |    scheme = __VERIFIER_nondet_int();
        |    __VERIFIER_assume(urilen <= LARGE_INT && urilen >= -LARGE_INT);
        |    __VERIFIER_assume(tokenlen <= LARGE_INT && tokenlen >= -LARGE_INT);
        |    __VERIFIER_assume(scheme <= LARGE_INT && scheme >= -LARGE_INT);
        |
        |    if(urilen>0); else goto END;
        |    if(tokenlen>0); else goto END;
        |    if(scheme >= 0 );else goto END;
        |    if (scheme == 0 || (urilen-1 < scheme)) {
        |        goto END;
        |    }
        |
        |    cp = scheme;
        |
        |    __VERIFIER_assert(cp-1 < urilen);
        |    __VERIFIER_assert(0 <= cp-1);
        |
        |    if (__VERIFIER_nondet_int()) {
        |        __VERIFIER_assert(cp < urilen);
        |        __VERIFIER_assert(0 <= cp);
        |        while ( cp != urilen-1) {
        |            if(__VERIFIER_nondet_int()) break;
        |            __VERIFIER_assert(cp < urilen);
        |            __VERIFIER_assert(0 <= cp);
        |            ++cp;
        |        }
        |        __VERIFIER_assert(cp < urilen);
        |        __VERIFIER_assert( 0 <= cp );
        |        if (cp == urilen-1) goto END;
        |        __VERIFIER_assert(cp+1 < urilen);
        |        __VERIFIER_assert( 0 <= cp+1 );
        |        if (cp+1 == urilen-1) goto END;
        |        ++cp;
        |
        |        scheme = cp;
        |
        |        if (__VERIFIER_nondet_int()) {
        |            c = 0;
        |            __VERIFIER_assert(cp < urilen);
        |            __VERIFIER_assert(0<=cp);
        |            while ( cp != urilen-1
        |                    && c < tokenlen - 1) {
        |                __VERIFIER_assert(cp < urilen);
        |                __VERIFIER_assert(0<=cp);
        |                if (__VERIFIER_nondet_int()) {
        |                    ++c;
        |                    __VERIFIER_assert(c < tokenlen);
        |                    __VERIFIER_assert(0<=c);
        |                    __VERIFIER_assert(cp < urilen);
        |                    __VERIFIER_assert(0<=cp);
        |                }
        |                ++cp;
        |            }
        |            goto END;
        |        }
        |    }
        |
        |END:
        |    return 0;
        |}
        |
        |
      """.stripMargin

    runSkink(toFile(code2),
              Nil,
              useO2 = true,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }


  def test15():Unit=
  {

    val codeNoO2 =
      """
        |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
        |
        |
        |int main(void) {
        |  unsigned int x = 0;
        |
        |  while (x < 0x0fffffff) {
        |    if (x < 0xfff0) {
        |      x++;
        |    } else {
        |      x += 2;
        |    }
        |  }
        |
        |  if(x % 2)  __VERIFIER_error();
        |  //__VERIFIER_assert(!(x % 2));
        |}
      """.stripMargin

    runSkink(toFile(codeNoO2),
              Nil,
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }

  def test16():Unit=
  {
    val code =
      """
       |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
       |extern void __VERIFIER_assume(int);
       |extern unsigned int __VERIFIER_nondet_uint(void);
       |
       |int main(void)
       |{
       |  unsigned int x = 1;
       |  unsigned int y = __VERIFIER_nondet_uint();
       |
       |  __VERIFIER_assume(y > 0);
       |
       |  while (x < y)
       |  {
       |    if (x < y / x)
       |    {
       |      x *= x;
       |    }
       |    else
       |    {
       |      x++;
       |    }
       |  }
       |
       |  if(x != y) __VERIFIER_error();
       |}
      """.stripMargin

    val x = Ints("%x")
    val y = Ints("%y")

    runSkink(toFile(code),
              Nil, //List(x === 1, y > 0, x < y, x === y, (y / x) > x),
              useO2 = true,
              usePredicateAbstraction = true,
              useClang = "clang-4.0")
  }

  def test17():Unit=
  {
    val code =
      """
        |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
        |extern void __VERIFIER_assume(int);
        |extern  int __VERIFIER_nondet_int(void);
        |
        |int main()
        |{
        |    int n, sum, i;
        |    n = __VERIFIER_nondet_int();
        |    __VERIFIER_assume(1 <= n && n <= 1000);
        |    sum = 0;
        |    for(i = 1; i <= n; i++)
        |    {
        |        sum = sum + i;
        |    }
        |    if(!(2*sum == n*(n+1))) __VERIFIER_error();
        |    return 0;
        |}
      """.stripMargin

    val i = Ints("%i")
    val n = Ints("%n")
    val sum = Ints("%sum")

    runSkink(toFile(code),
              Nil, //List(n >= 1 & n <= 1000, i === 1 & i < n, i === n, sum === 0, sum === ((i * i) / 2) - (i / 2)), //, sum === ((i * i) / 2) - (i / 2)),
              useO2 = true,
              usePredicateAbstraction = false,
              useClang = "clang-4.0")
  }
}