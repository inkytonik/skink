package psksvp.Runs

import psksvp.logics._
import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import psksvp.SkinkExecutor
import psksvp._

object LoopAccN extends org.bitbucket.franck44.scalasmt.theories.ArrayExInt
                  with org.bitbucket.franck44.scalasmt.theories.ArrayExOperators
{
  def main(args: Array[String]): Unit =
  {
    phasesTrueUnreachCall2()
  }
  
  //////////////////////////////////////////////////////////////////////////////////////////
  def constTrueUnreachCall1():Unit =
  {
    val code =  // const_true-unreach-call1.c
    """
    extern void __VERIFIER_error() __attribute__ ((__noreturn__));
    extern unsigned int __VERIFIER_nondet_uint(void);
    
    void __VERIFIER_assert(int cond) {
      if (!(cond)) {
        ERROR: __VERIFIER_error();
      }
      return;
    }

    int main(void) {
      unsigned int x = 1;
      unsigned int y = 0;
      unsigned int n = __VERIFIER_nondet_uint();
      __VERIFIER_assume(n > 0);
      
      while (y < n) //(y < 1024) 
      {
        x = 0;
        y++;
      }

      //__VERIFIER_assert(x == 0);
      if(x != 0) __VERIFIER_error();
    }
    """
    log("C code ")
    log(code)
    SkinkExecutor.consoleRun(toFile(code),
                              Nil,
                              useO2 = false,
                              usePredicateAbstraction = false,
                              useClang = "clang-3.7",
                              maxIteration = 50)
  }
  
  //////////////////////////////////////////////////////////////////////////////////////////
  def multivarTrueUnreachCall1():Unit =
  {
    val code =  // multivar_true-unreach-call1.c
    """
    extern void __VERIFIER_error() __attribute__ ((__noreturn__));
    extern unsigned int __VERIFIER_nondet_uint(void);

    void __VERIFIER_assert(int cond) {
      if (!(cond)) {
        ERROR: __VERIFIER_error();
      }
      return;
    }

    int main(void) {
      unsigned int x = __VERIFIER_nondet_uint();
      unsigned int y = x;
      unsigned int n = __VERIFIER_nondet_uint();
      __VERIFIER_assume(n > 0);

      while (x < n) { //(x < 1024)
        x++;
        y++;
      }

      //__VERIFIER_assert(x == y);
      if(!(x==y)) __VERIFIER_error();
    }
    """
    log("C code ")
    log(code)
    SkinkExecutor.consoleRun(toFile(code),
                              Nil,
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 50)
  }
  
  //////////////////////////////////////////////////////////////////////////////////////////
  def overflowTrueUnreachCall1():Unit =
  {
    val code =  // overflow_true-unreach-call1.c
    """
    extern void __VERIFIER_error() __attribute__ ((__noreturn__));

    void __VERIFIER_assert(int cond) {
      if (!(cond)) {
        ERROR: __VERIFIER_error();
      }
      return;
    }

    int main(void) {
      unsigned int x = 10;
      unsigned int n = __VERIFIER_nondet_uint();
      __VERIFIER_assume(n >= x);

      while (x >= n) {
        x += 2;
      }

      //__VERIFIER_assert(!(x % 2));
      if(x % 2) __VERIFIER_error();
    }
    """
    log("C code ")
    log(code)
    SkinkExecutor.consoleRun(toFile(code),
                              Nil,
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 50)
  }
  
  //////////////////////////////////////////////////////////////////////////////////////////
  // ???????
  def diamondTrueUnreachCall1():Unit =
  {
    val code =  // diamond_true-unreach-call1.c
    """
    extern void __VERIFIER_error() __attribute__ ((__noreturn__));
    extern unsigned int __VERIFIER_nondet_uint(void);

    void __VERIFIER_assert(int cond) 
    {
      if (!(cond)) 
      {
        ERROR: __VERIFIER_error();
      }
      return;
    }

    int main(void) 
    {
      unsigned int x = 0;
      unsigned int y = __VERIFIER_nondet_uint();

      while (x < 99) 
      {
        if (y % 2 == 0) 
        {
          x += 2;
        } 
        else 
        {
          x++;
        }
      }

      //__VERIFIER_assert((x % 2) == (y % 2));
      if(!((x % 2) == (y % 2))) __VERIFIER_error();
    }
    """
    log("C code ")
    log(code)
    SkinkExecutor.consoleRun(toFile(code),
                              Nil,
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 50)
  }
  
  //////////////////////////////////////////////////////////////////////////////////////////
  def phasesTrueUnreachCall2():Unit =
  {
    val code =  // phases_true-unreach-call2.c
    """
    extern void __VERIFIER_error() __attribute__ ((__noreturn__));
    extern void __VERIFIER_assume(int);
    extern unsigned int __VERIFIER_nondet_uint(void);

    void __VERIFIER_assert(int cond) {
      if (!(cond)) {
        ERROR: __VERIFIER_error();
      }
      return;
    }

    int main(void) {
      unsigned int x = 1;
      unsigned int y = __VERIFIER_nondet_uint();

      __VERIFIER_assume(y > 0);

      while (x < y) {
        if (x < y / x) {
          x *= x;
        } else {
          x++;
        }
      }

      //__VERIFIER_assert(x == y);
      if(x != y) __VERIFIER_error();
    }
    """
    
    log("C code ")
    log(code)
    
    SkinkExecutor.consoleRun(toFile(code),
                              Nil,
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 50)
  }
}