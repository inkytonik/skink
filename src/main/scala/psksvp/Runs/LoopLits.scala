package psksvp.Runs

import psksvp.logics._
import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import psksvp.SkinkExecutor
import psksvp._

object LoopLits extends org.bitbucket.franck44.scalasmt.theories.ArrayExInt
                  with org.bitbucket.franck44.scalasmt.theories.ArrayExOperators
{
  def main(args: Array[String]): Unit =
  {
    testLoopLit1()
  }
  
  //////////////////////////////////////////////////////////////////////////////////////////
  def testLoopLit1():Unit =
  {
    val code =  // afnp2014_true-unreach-call.c
    """
    // Source: E. De Angelis, F. Fioravanti, J. A. Navas, M. Proietti:
    // "Verification of Programs by Combining Iterated Specialization with
    // Interpolation", HCVS 2014

    #include "assert.h"

    int main() 
    {
        int x = 1;
        int y = 0;
        while (y < 1000 && __VERIFIER_nondet_int()) 
        {
            x = x + y;
            y = y + 1;
        }
        //__VERIFIER_assert(x >= y);
        if(!(x >= y)) __VERIFIER_error();

        return 0;
    }
    """
    
    val x = Ints("%x")
    val y = Ints("%y")
    
    SkinkExecutor.consoleRun(toFile(code),
                              //List(x === 1, y === 0, y < 1000, x >= y, x === ((y * y) / 2) - (y / 2)), //me
                              //List(x >= 1, y >= 0, x >= y), //franck x >= y + 1)
                              //List(x >= 1, y >= 0, x <= y - 1), // huristic from 2002 paper
                              //List(x <= 1, y <= 0, x >= 1, y >= 0, x <= y - 1), // with-?????.txt on desktop
                              //List(x < 1, y < 0, x === 1, y === 0, x > 1, y > 0, x - y >= 1), //x <= y - 1 ),
                              Nil,
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 50)
                              
    /*
      non-linear between x, y.
      
      # PredicatesAbstraction
      
      1) Manual annotates predicates: (works)
          List(x === 1, y === 0, y < 1000, x >= y, x === ((y * y) / 2) - (y / 2))
          
          or List(x >= 1, y >= 0, x >= y)
          or List(x >= 1, y >= 0, x <= y - 1)
         
          13 iterations because of __VERIFIER_nondet_int() at the loop condition.
          
          run log: http://10.46.34.65:7878/mex/afnp2014_true-unreach-call.manPred.txt
     
      2) Automatically generate predicates: (does not work) (require x > 1, y > 0)
          (y  <= 999 ) ,
          (y  = 0 ) ,
          (x  = 1 ) ,
          ((x  + ((- 1 )  * y ) )  <= (- 1 ) )
          
          run log: http://10.46.34.65:7878/loopLit/Mon_Sep_04_15-14-26_AEST_2017/afnp2014_true-unreach-call.c.output.txt
    
      # Interpolant (max iteration reaches).
       
       run log: http://
    */                          
  }
  
  /////////////////////////////////////////////
  def testLoopLit2():Unit = 
  {
    val code =  //bhmr2007_true-unreach-call.c
    """
    // Source: Dirk Beyer, Thomas A. Henzinger, Rupak Majumdar, Andrey
    // Rybalchenko: "Path Invariants", PLDI 2007.

    #include "assert.h"
    #define LARGE_INT (2147483647)
    int main() {
        int i, n, a, b;
        i = 0; a = 0; b = 0; n = __VERIFIER_nondet_int();
        __VERIFIER_assume(n >= 0 && n <= LARGE_INT);
        while (i < n) {
            if (__VERIFIER_nondet_int()) {
                a = a + 1;
                b = b + 2;
            } else {
                a = a + 2;
                b = b + 1;
            }
            i = i + 1;
        }
        //__VERIFIER_assert(a + b == 3*n);
        if(!(a + b == 3 * n)) __VERIFIER_error();
        return 0;
    }"""
  
    val a = Ints("%a")
    val b = Ints("%b")
    val i = Ints("%i")
    val n = Ints("%n")
  
    SkinkExecutor.consoleRun(toFile(code),
                              List(i < n, a + b === n * 3, (i + 1) * 2 === a, i === b, (i + 1) * 2 === b),
                              useO2 = false,
                              usePredicateAbstraction = false,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                            
    /*   
      # PredicatesAbstraction
    
      1) Manual annotates predicates: (works, 12 iterations)
          n >= 0,
          i < n, 
          a + b === n * 3, 
          i === a, 
          (i + 1) * 2 === a, 
          i === b, 
          (i + 1) * 2 === b)
    
          run log: http://10.46.34.65:7878/mex/bhmr2007_true-unreach-call.c.manPred.txt
   
      2) Automatically generate predicates: (does not work)
          (%i  = 0 ) ,
          %7 ,
          (%b  = 0 ) ,
          (%n  <= %i ) ,
          ((%i  + ((- 1 )  * %n ) )  <= (- 1 ) ) ,
           Or(  And( %7 ,(%n  <= 1000000 ) ) , And(  Not( %7 ) ,(%n  >= 1000001 ) ) ) ,
          (%n  >= 0 ) ,
           Or( ((%a  + %b ((- 3 )  * %n ) )  <= (- 1 ) ) ,((((- 1 )  * %a )  + ((- 1 )  * %b ) (3  * %n ) )  <= (- 1 ) ) ) ,
          (%a  = 0 )
        
          run log: http://10.46.34.65:7878/loopLit/Mon_Sep_04_15-14-26_AEST_2017/bhmr2007_true-unreach-call.c.output.txt
  
      # Interpolant (max iteration reaches).
     
       run log: http://10.46.34.65:7878/mex/bhmr2007_true-unreach-call.c.Interpolant.txt
    */      
  }
  
  /////////////////////////////////////////////
  def testLoopLit3():Unit = 
  {
    val code =  //cggmp2005_true-unreach-call.c
    """
    // Source: A. Costan, S. Gaubert, E. Goubault, M. Martel, S. Putot: "A Policy
    // Iteration Algorithm for Computing Fixed Points in Static Analysis of
    // Programs", CAV 2005

    #include "assert.h"

    int main() 
    {
        int i,j;
        i = 1;
        j = 10;
        while (j >= i) 
        {
            i = i + 2;
            j = -1 + j;
        }
        //__VERIFIER_assert(j == 6);
        if(j != 6) __VERIFIER_error();
        return 0;
    }"""
  
    val i = Ints("%i")
    val j = Ints("%j")
  
    SkinkExecutor.consoleRun(toFile(code),
                              List(j >= i, j === 6, j === (-i + 21) / 2),
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                            
    /*   
      # PredicatesAbstraction
    
      1) Manual annotates predicates: (works, 2 iterations)
          j >= i, 
          j === 6, 
          j === (-i + 21) / 2)
    
          how did I get the predicate  j === (-i + 21) / 2)
    
         i, j 
         -----
         1, 10
         3, 9
         5, 8
         7, 7
         9, 6
    
         Use WoAlp to Fit data
     
         Fit[{{1, 10}, {3, 9}, {5, 8}, {7, 7}, {9, 6}}, {1, x}, x]  
         
         gives  10.5 - (0.5 * x) 
         or j === 10.5 - (0.5 * i)
    
        convert float(10.5 and .5) to fraction j === 21/2 - i/2 
        
        run log: http://10.46.34.65:7878/mex/cggmp2005_true-unreach-call.c.manPred.txt
   
      2) Automatically generate predicates: (does not work, max iteration reaches)
          (%j  = 10 ) ,
          ((%j  + ((- 1 )  * %i ) )  <= (- 1 ) ) ,
           Or( (%j  <= 5 ) ,(%j  >= 7 ) ) ,
          (%j  >= %i ) ,
          (%i  = 1 )
        
          run log: http://10.46.34.65:7878/loopLit/Mon_Sep_04_15-14-26_AEST_2017/cggmp2005_true-unreach-call.c.output.txt
  
      # Interpolant works (back edges found at the 7th iter).
     
          run log: http://10.46.34.65:7878/mex/cggmp2005_true-unreach-call.c.Interpolant.txt
    */      
  }
  
  
  def testLoopLit4():Unit = 
  {
    val code =  //cggmp2005b_true-unreach-call.c
    """
    // Source: A. Costan, S. Gaubert, E. Goubault, M. Martel, S. Putot: "A Policy
    // Iteration Algorithm for Computing Fixed Points in Static Analysis of
    // Programs", CAV 2005

    #include "assert.h"

    int main() 
    {
      int i,j,k;
      i = 0;
      k = 9;
      j = -100;
      while (i <= 100) 
      {
    	  i = i + 1;
    	  while (j < 20) 
        {
    	    j = i + j;
    	  }
    	  k = 4;
    	  while (k <= 3) 
        {
    	    k = k + 1;
    	  }
      }
      //__VERIFIER_assert(k == 4);
      if(k != 4) __VERIFIER_error();
      return 0;
    }"""
  
    val i = Ints("%i")
    val j = Ints("%j")
    val k = Ints("%k")
  
    SkinkExecutor.consoleRun(toFile(code),
                              List(k === 4),
                              useO2 = false,
                              usePredicateAbstraction = false,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                              
       /*   
         # PredicatesAbstraction
    
         1) Manual annotates predicates: (max iteration reaches. predicate k === 4 is sufficient?, too many combination problems?. 
                                          longer and longer traces are generated, even back edges are found and successfully added ) 
       
            k === 4,
            run log: http://10.46.34.65:7878/mex/cggmp2005b_true-unreach-call.c.manPred.txt
   
         2) Automatically generate predicates: (does not work, timeout, too many combination problems?)
             (20  <= %j ) ,
             (%i  = 0 ) ,
             (%i  >= 101 ) ,
             (%j  = (- 100 ) ) ,
             (%k  <= 3 ) ,
             (%k  >= 4 ) ,
             (%j  <= 19 ) ,
             (%k  = 9 ) ,
              Or( (%k  <= 3 ) ,(%k  >= 5 ) ) ,
             (%i  <= 100 )
       
             run log: http://10.46.34.65:7878/loopLit/Mon_Sep_04_15-14-26_AEST_2017/cggmp2005b_true-unreach-call.c.output.txt
  
         # Interpolant does not work (back edges found and added but traces keep getting longer, too many combination problems?).
     
             run log: http://10.46.34.65:7878/mex/cggmp2005b_true-unreach-call.c.interpolant.txt
       */ 
                              
  }
  
  def testLoopLit5():Unit = 
  {
    val code =  //css2003_true-unreach-call.c
    """
    // Source: Michael Colon, Sriram Sankaranarayanan, Henny Sipma: "Linear
    // Invariant Generation using Non-Linear Constraint Solving", CAV 2003.

    #include "assert.h"
    #define LARGE_INT (2147483647)
    int main() 
    {
        int i,j,k;
        i = 1;
        j = 1;
        k = __VERIFIER_nondet_int();
        __VERIFIER_assume(0 <= k && k <= 1);
        while (i < LARGE_INT) 
        {
    	     i = i + 1;
    	     j = j + k;
    	     k = k - 1;
    	     //__VERIFIER_assert(1 <= i + k && i + k <= 2 && i >= 1);
           if(!(1 <= i + k && i + k <= 2 && i >= 1)) __VERIFIER_error();
        }
        return 0;
    }"""
  
    val i = Ints("%i")
    val j = Ints("%j")
    val k = Ints("%k")
  
    SkinkExecutor.consoleRun(toFile(code),
                              List(i + k >= 1, i + k <= 2, i >= 1),
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                              
       /*   
         # PredicatesAbstraction
    
         1) Manual annotates predicates: (works, 11 iterations but only 16s)
            predicates taken from assertion by breaking the and(&&) term (paper just read)
            i + k >= 1, 
            i + k <= 2, 
            i >= 1
            run log: http://10.46.34.65:7878/mex/css2003_true-unreach-call.c.manPred.txt
   
         2) Automatically generate predicates: (works but too many pridicates, 11 iterations)
            10 predicates generated
            [info] (%i  <= 0 ) ,
            [info] %7 ,
            [info] ((%i  + %k )  <= 2 ) ,
            [info] (%j  = 1 ) ,
            [info] (%i  <= 2147483646 ) ,
            [info] (%i  = 1 ) ,
            [info] (%i  >= 1 ) ,
            [info] (0  <= %k ) ,
            [info]  Or(  And( %7 ,(%k  <= 1 ) ) , And(  Not( %7 ) ,(%k  >= 2 ) ) ) ,
            [info] (1  <= (%k  + %i ) ) 
       
             run log: http://10.46.34.65:7878/mex/css2003_true-unreach-call.c.autoPred.txt
  
         # Interpolant works ( 11 iterations).
     
             run log: http://10.46.34.65:7878/mex/css2003_true-unreach-call.c.Interpolant.txt
       */ 
                              
  }
  
  def testLoopLit6():Unit = 
  {
    val code =  //ddlm2013_true-unreach-call.c
    """
    // Source: Isil Dillig, Thomas Dillig, Boyang Li, Ken McMillan: "Inductive
    // Invariant Generation via Abductive Inference", OOPSLA 2013.

    #include "assert.h"

    int main() 
    {
        unsigned int i,j,a,b;
        int flag = __VERIFIER_nondet_int();
        a = 0;
        b = 0;
        j = 1;
        if (flag) 
        {
            i = 0;
        } 
        else 
        {
            i = 1;
        }

        while (__VERIFIER_nondet_int()) 
        {
            a++;
            b += (j - i);
            i += 2;
            if (i%2 == 0)      //always true when flag is non-zero
            {
                j += 2;
            } 
            else 
            {
                j++;
            }
        }
        if (flag)      //  do the assertion only when flag is nonzero
        {  
          //__VERIFIER_assert(a == b);
          if(a != b) __VERIFIER_error();
        }
        return 0;
    }"""
    
    // when flag is non-zero, the sub prog is below
    /*
       int i = 0;
       int j = 1;
       int a = 0;
       int b = 0;
       
       while(0 != (int)random(-20, 20))
       {
         a++;
         b += (j - i);
         i += 2;
         j += 2;
        
         println(i, j, a, b);
       }
       i,j,a,b
       2 3 1 1
       4 5 2 2
       6 7 3 3
       8 9 4 4
       10 11 5 5
       12 13 6 6
       14 15 7 7
       16 17 8 8
       18 19 9 9
       20 21 10 10
       22 23 11 11
       24 25 12 12
       26 27 13 13
       28 29 14 14

    */
  
    val i = Ints("%i")
    val j = Ints("%j")
    val a = Ints("%a")
    val b = Ints("%b")
    val flag = Ints("%flag")
  
    SkinkExecutor.consoleRun(toFile(code),
                              List(a === b, !(flag === 0), j === i + 1, a === (j - 1) / 2, i <= 10),
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                              
       /*   
         # PredicatesAbstraction
    
         1) Manual annotates predicates:no.   loop condition is non-det, cannot do it?? too difficult .....
       
            run log: 
   
         2) Automatically generate predicates: does not work
            6 predicates generated
            (%b  = 0 ) ,
            (%j  = 1 ) ,
             Or( (%flag  <= (- 1 ) ) ,(%flag  >= 1 ) ) ,
            ((%i % 2 )  <= 0 ) ,
             Or( ((%a  + ((- 1 )  * %b ) )  <= (- 1 ) ) ,((((- 1 )  * %a )  + %b )  <= (- 1 ) ) ) ,
            (%a  = 0 )  
       
             run log: http://10.46.34.65:7878/loopLit/Mon_Sep_04_15-14-26_AEST_2017/ddlm2013_true-unreach-call.c.output.txt
  
         # Interpolant  (no,  max iteration reaches).
     
             run log: http://10.46.34.65:7878/mex/ddlm2013_true-unreach-call.c.interpolant.txt
       */                         
  }
  
  def testLoopLit7():Unit = 
  {
    val code =  //gj2007_true-unreach-call.c
    """
    // Source: Sumit Gulwani, Nebosja Jojic: "Program Verification as
    // Probabilistic Inference", POPL 2007.

    #include "assert.h"

    int main() 
    {
        int x = 0;
        int y = 50;
        while(x < 100) 
        {
    	    if (x < 50) 
          {
    	      x = x + 1;
     	    } 
          else 
          {
    	      x = x + 1;
    	      y = y + 1;
    	    }
        }
        //__VERIFIER_assert(y == 100);
        if(y != 100) __VERIFIER_error();
        return 0;
    }"""
  
    val x = Ints("%x")
    val y = Ints("%y")
  
    SkinkExecutor.consoleRun(toFile(code),
                              List(x < 100, x < 50, y === 100, y === x, y === 50),
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                              
       /*   
         # PredicatesAbstraction
    
         1) Manual annotates predicates: yes works with 6 iterations.
            x < 100, x < 50, y === 100, y === x, y === 50
            
            run log: http://10.46.34.65:7878/mex/gj2007_true-unreach-call.c.manPred.txt
   
         2) Automatically generate predicates: (no) needs predicates x === y and y === 50 (generated)
            (%y  = 50 ) ,   <<********
            (50  <= %x ) ,
            (%x  = 0 ) ,
            (%x  <= 49 ) ,
            (100  <= %x ) ,
             Or( (%y  <= 99 ) ,(%y  >= 101 ) ) ,
            (%x  <= 99 )
             run log: http://10.46.34.65:7878/mex/gj2007_true-unreach-call.c.autoPred.txt
  
         # Interpolant: no (max iteration reaches)
     
             run log: 
       */                           
  }
  
  def testLoopLit8():Unit = 
  {
    val code =  //gj2007b_true-unreach-call.c
    """
    // Source: Sumit Gulwani, Nebosja Jojic: "Program Verification as
    // Probabilistic Inference", POPL 2007.

    #include "assert.h"

    int main() 
    {
        int x = 0;
        int m = 0;
        int n = __VERIFIER_nondet_int();
        while(x < n) 
        {
    	    if(__VERIFIER_nondet_int()) 
          {
    	      m = x;
    	    }
    	    x = x + 1;
        }
        //__VERIFIER_assert((m >= 0 || n <= 0));
        //__VERIFIER_assert((m < n || n <= 0));
    
        if(!(m >= 0 || n <= 0)) __VERIFIER_error();
        if(!(m < n || n <= 0)) __VERIFIER_error();
        return 0;
    }"""
  
    val x = Ints("%x")
    val y = Ints("%y")
    val n = Ints("%n")
  
    SkinkExecutor.consoleRun(toFile(code),
                              Nil, 
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 50)
                              
       /*   
         # PredicatesAbstraction
    
         1) Manual annotates predicates: 
            
            
   
         2) Automatically generate predicates: works (20 iterations)
            ((%m  + ((- 1 )  * %x ) )  <= 0 ) ,
            ((%x  + ((- 1 )  * %n ) )  <= (- 1 ) ) ,
            (%m  = 0 ) ,
            (%m  >= 0 ) ,
            (%x  = 0 ) ,
            ((%x  + ((- 1 )  * %m ) )  <= 0 ) ,
            (%n  <= %m ) ,
            (%n  <= %x ) ,
            (%n  >= 1 )
            
             run log: http://10.46.34.65:7878/mex/gj2007b_true-unreach-call.c.autoPred.txt
  
         # Interpolant: no, max iteration reaches.
     
             run log: http://10.46.34.65:7878/mex/gj2007b_true-unreach-call.c.interpolant.txt
       */ 
                              
  }
  
  def testLoopLit9():Unit = 
  {
    val code =  //gr2006_true-unreach-call.c
    """
    // Source: Denis Gopan, Thomas Reps: "Lookahead Widening", CAV 2006.

    #include "assert.h"

    int main() 
    {
        int x,y;
        x = 0;
        y = 0;
        while (1) 
        {
            if (x < 50) 
            {
                y++;
            } 
            else 
            {
                y--;
            }
            if (y < 0) break;
            x++;
        }
        //__VERIFIER_assert(x == 100);
        if(x != 100) __VERIFIER_error();
        return 0;
    }"""
  
    val x = Ints("%x")
    val y = Ints("%y")
  
    SkinkExecutor.consoleRun(toFile(code),
                              Nil, //List(y < 0, x === 100, x === (y * (-1)) + 100, x === y, x < 50),
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                              
       /*   
         # PredicatesAbstraction
    
           1) Manual annotates predicates: yes, 7 iterations
              y < 0, x === 100, x < 50   (junction points)
              x === (y * (-1)) + 100,    (relation between x and y where x >= 50 path) 
              x === y                   (relation between x and y where x < 50 path)
              
            
            run log: http://10.46.34.65:7878/mex/gr2006_true-unreach-call.c.manPred.txt
   
           2) Automatically generate predicates: No
       
               Or( (%x  <= 99 ) ,(%x  >= 101 ) ) ,
              (50  <= %x ) ,
              (%x  = 0 ) ,
              (%x  <= 49 ) ,
              (0  <= %y ) ,
              (%y  = 0 ) ,
              (%y  <= (- 1 ) )
               
             run log: http://10.46.34.65:7878/mex/gr2006_true-unreach-call.c.autoPred.txt
  
         # Interpolant: no :  max iteration reaches.
     
             run log: 
       */ 
                              
  }
  
  def testLoopLit10():Unit = 
  {
    val code =  //gsv2008_true-unreach-call.c
    """
    // Source: Sumit Gulwani, Saurabh Srivastava, Ramarathnam Venkatesan: "Program
    // Analysis as Constraint Solving", PLDI 2008.

    #include "assert.h"
    #define LARGE_INT (2147483647)
    int main() 
    {
        int x,y;
        x = -50;
        y = __VERIFIER_nondet_int();
        __VERIFIER_assume(-1000 < y && y < LARGE_INT);
        while (x < 0) 
        {
    	    x = x + y;
    	    y++;
        }
        //__VERIFIER_assert(y > 0);
        if(!(y > 0)) __VERIFIER_error();
        return 0;
    }"""
  
    val x = Ints("%x")
    val y = Ints("%y")
  
    SkinkExecutor.consoleRun(toFile(code),
                              Nil, 
                              useO2 = false,
                              usePredicateAbstraction = false,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                              
       /*   
         # PredicatesAbstraction
    
           1) Manual annotates predicates: 
               
   
           2) Automatically generate predicates: works 3 iterations
               
               run log: http://10.46.34.65:7878/mex/gsv2008_true-unreach-call.c.autoPred.txt
  
         # Interpolant: works 12 iterations
     
               run log: http://10.46.34.65:7878/mex/gsv2008_true-unreach-call.c.interpolant.txt
       */ 
                              
  }
  
  def testLoopLit11():Unit = 
  {
    val code =  //jm2006_true-unreach-call.c
    """
    // Source: Credited to Anubhav Gupta
    // appears in Ranjit Jhala, Ken McMillan: "A Practical and Complete Approach
    // to Predicate Refinement", TACAS 2006

    #include "assert.h"

    int main() 
    {
        int i, j;
        i = __VERIFIER_nondet_int();
        j = __VERIFIER_nondet_int();
        __VERIFIER_assume(i >= 0 && j >= 0);
        int x = i;
        int y = j;
        while(x != 0) {
            x--;
            y--;
        }

        if (i == j) {
            //__VERIFIER_assert(y == 0);
            if(y != 0) __VERIFIER_error();
        }
        return 0;
    }
    """
  
    val x = Ints("%x")
    val y = Ints("%y")
    val i = Ints("%i")
    val j = Ints("%j")
  
    SkinkExecutor.consoleRun(toFile(code),
                              Nil, //List(x >= 0, y >= 0,  i >= 0, j >= 0, x === i, y === j, x === y, i === j),
                              useO2 = false,
                              usePredicateAbstraction = true,
                              useClang = "clang-3.7",
                              maxIteration = 20)
                              
       /*   
         # PredicatesAbstraction
    
           1) Manual annotates predicates:  works 3 iterations
               x === 0, y === 0, i >= 0, j >= 0, x === i, y === j, x === y, i === j
       
              run log: http://10.46.34.65:7878/mex/jm2006_true-unreach-call.c.manPred.txt
   
           2) Automatically generate predicates: no, needs predicate x == y 
               
             (%i  >= 0 ) ,
             ((%j  + ((- 1 )  * %y ) )  <= 0 ) ,
             ((%y  + ((- 1 )  * %j ) )  <= 0 ) ,
             (%x  <= 0 ) ,
             (%x  >= 0 ) ,
             %8 ,
             ((%j  + ((- 1 )  * %i ) )  <= 0 ) ,
              Or( (%y  <= (- 1 ) ) ,(%y  >= 1 ) ) ,
             ((%i  + ((- 1 )  * %j ) )  <= 0 ) ,
             ((%x  + ((- 1 )  * %i ) )  <= 0 ) ,
             ((%i  + ((- 1 )  * %x ) )  <= 0 ) ,
              Or( (%x  <= (- 1 ) ) ,(%x  >= 1 ) ) ,
              Or(  And( %8 ,(%j  >= 0 ) ) , And(  Not( %8 ) ,(%j  <= (- 1 ) ) ) ) 
       
               run log: 
  
         # Interpolant: works 3 iterations
     
               run log: http://10.46.34.65:7878/mex/jm2006_true-unreach-call.c.interpolant.txt
       */ 
                              
  }
  
  def loopLit12():Unit=
  {
    /*
     "software model checking for people who love automata."
    */
    val code = """
    extern void __VERIFIER_error() __attribute__ ((__noreturn__));
    
    void main() 
    {
        int x = 0;
        int y = 0;
        while(x < 1000)
        {
            x++;
            y++;
        }

        //@ assert (x == y );
        if(x != y) __VERIFIER_error();
    }""".stripMargin
    
    SkinkExecutor.consoleRun(toFile(code),
              Nil, //List(i >= 1, i <= 1000, !(i === 1001)),
              useO2 = false,
              usePredicateAbstraction = true,
              useClang = "clang-3.7")
  }
  
}