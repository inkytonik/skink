package psksvp

import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import org.scalatest.FunSuite
import org.scalatest.BeforeAndAfter

class Test extends FunSuite with BeforeAndAfter
{
  import logics._

  test("subsetCheck Tests")
  {
    implicit val solver = new SMTSolver("Z3")
    val i = Ints("i")
    val j = Ints("j")
    assert(included(i > 10, withSuperSet = i > 0))
    assert(!included(i > 0, withSuperSet = i > 10))
    assert(!included(j > 0, withSuperSet = i > 10))
    assert(!included(j > 0 & j < 10, withSuperSet = j > -5 & j < 5))
    assert(included(i > 0 & i < 10, withSuperSet = i > 0 & i < 10))
    assert(!included(i > 0 & i < 10, withSuperSet = i > 1 & i < 10))
    assert(included(i > 0 & i < 10, withSuperSet = i >= 0 & i <= 10))
    solver.destroy()
  }

  test("reduceToSuperSetTerms Tests")
  {
    import psksvp.PredicatesFilter._

    val i = Ints("i")
    val j = Ints("j")
    val a:Set[BoolTypedTerm] = Set(i > 0, i > 1, j > -10, j > 0)
    assert(Set(i > 0, j > -10) == reduceToSuperSetTerms(a))

    val b:Set[BoolTypedTerm] = Set(i > 0, i > 1, j > -10, j > 0, j > -50 | i > -50)
    assert(Set(j > -50 | i > -50) == reduceToSuperSetTerms(b))

    val c:Set[BoolTypedTerm] = Set(i > 0, i > 1, j > -10, j > 0, j > -50 & i > -50)
    assert(Set(j > -50 & i > -50, i > 0, j > -10) == reduceToSuperSetTerms(c))
  }

  test("break to atomic terms Tests")
  {
    import psksvp.PredicatesFilter._

    val i = Ints("i")
    val j = Ints("j")
    val a:Set[BoolTypedTerm] = Set(i > 0 | i > 1, j > -10 & j > 0)
    assert(Set(i > 0, i > 1, j > -10, j > 0) == atomicTerms(a))
    val b:Set[BoolTypedTerm] = Set(i > 0 & i > 1 | j > -10 | j > 0)
    assert(Set(i > 0, i > 1, j > -10, j > 0) == atomicTerms(b))
    val c:Set[BoolTypedTerm] = Set(i > 0 & i > 1 | j > -10 & j > 0)
    assert(Set(i > 0, i > 1, j > -10, j > 0) == atomicTerms(c))
  }

  test("runPredicateAbstraction on code 1 (TRUE) (Predicates are auto inferred) test")
  {
    import psksvp.SkinkExecutor._
    val i = Ints("%i")
    val a = Ints("%a")

    val code1 =
      """
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

    assert(RunTRUE() == SkinkExecutor.run(toFile(code1),
                              Nil,
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-4.0"))

  }

  test("runPredicateAbstraction on code 2 (TRUE) (Predicates are auto inferred) test")
  {
    import psksvp.SkinkExecutor._
    val code2 =
      """
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

    assert(RunTRUE() == SkinkExecutor.run(toFile(code2),
                             Nil,
                             useO2 = false,
                             usePredicateAbstraction = true,
                             useClang = "clang-4.0"))
  }

  test("runPredicateAbstraction on code 3 (TRUE) (Predicates are auto inferred) test")
  {
    import psksvp.SkinkExecutor._
    val code3 =  """
                   |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                   |extern int __VERIFIER_nondet_int();
                   |extern void __VERIFIER_assume(int);
                   |int main(int argc, char** arg)
                   |{
                   |  int n = __VERIFIER_nondet_int();
                   |  __VERIFIER_assume( n > 0);
                   |  int a = 0;
                   |  int i = 0;
                   |  while(i < n)
                   |  {
                   |    if(i != a) __VERIFIER_error();
                   |    i = i + 1;
                   |    a = i;  //a = a + 1;
                   |  }
                   |  if(i != n)  __VERIFIER_error();
                   |  if(a != n)  __VERIFIER_error();
                   |  return 0;
                   |}
                 """.stripMargin

    assert(RunTRUE() == SkinkExecutor.run(toFile(code3),
                             Nil,
                             useO2 = false,
                             usePredicateAbstraction = true,
                             useClang = "clang-4.0"))
  }


  test("runPredicateAbstraction on code 4 (TRUE) (Predicates provided) test")
  {
    import psksvp.SkinkExecutor._
    val x = Ints("%x")
    val a = Ints("%a")

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

    PredicatesAbstraction.genPredicates = false
    assert(RunTRUE() == SkinkExecutor.run(toFile(code),
                                  List( x >= 1, x <= 10, a === 0, a === 55, a === ((x * x) / 2) - (x / 2), x === 11),
                                  useO2 = false,
                                  usePredicateAbstraction = true,
                                  useClang = "clang-3.7"))
  }

}
