package psksvp

import au.edu.mq.comp.skink.ir.IRFunction
import au.edu.mq.comp.smtlib.interpreters.SMTLIBInterpreter
import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{SSymbol, Term}
import au.edu.mq.comp.smtlib.theories.BoolTerm
import au.edu.mq.comp.smtlib.typedterms.TypedTerm
import au.edu.mq.comp.automat.auto.NFA

import scala.util.{Failure, Success}
import logics._
import psksvp.resources.using
import au.edu.mq.comp.smtlib.typedterms.Commands
import au.edu.mq.comp.smtlib.interpreters.Resources
import psksvp.PredicatesAbstraction.timeUsedCheckComb

import scala.annotation.tailrec


/**
 * Created by psksvp on 29/07/2016.
 */



/**
  * ***************************************************************************
  * ***************************************************************************
  * ***************************************************************************
  */
object PredicatesAbstraction
{
  // for testing purpose
  var timeUsedWhole: Long = 0
  var timeUsedCheckComb: Long = 0

  private var usePredicates: Seq[BooleanTerm] = Nil
  def setToUsePredicates(pl: Seq[BooleanTerm]): Unit = {usePredicates = pl}
  // -----------

  /**
    *
    * @param function
    * @param choices
    * @return
    */
  def apply(function: IRFunction,
            choices: Seq[Int],
            iteration: Int): NFA[Int, Int] =
  {
    val traceAnalyzer = TraceAnalyzer(function, choices)
//      for (i <- traceAnalyzer.transitionMap.keySet)
//      {
//        for (transition <- traceAnalyzer.transitionMap(i))
//        {
//          println(s"block: $i")
//          for (term <- traceAnalyzer.inferPredicates(transition))
//          {
//            print("predicates: " + termAsInfix(term))
//          }
//          println()
//        }
//      }
    if (traceAnalyzer.repetitionsPairs.isEmpty)
    {
      println(choices)
      println("no Repetitions, rtn linear automaton")
      traceAnalyzer.linearAutomaton
    }
    else
    {
      println("running with input predicates: ")
      usePredicates.foreach{p => print(termAsInfix(p) + ",")}
      println()
      val p = PredicatesAbstraction(traceAnalyzer, usePredicates, new CNFComposer)
      val r = p.automaton
      p.destroySolvers()
      r
    }
  }


  /**
    * combine boolean vectors (disjunct clauses) to a conjunct
    *
    * @param absDomain
    * @return BooleanExpression
    */
  def gammaCNF(absDomain: AbstractDomain,
               predicates: Seq[BooleanTerm],
               simplify: Boolean): BooleanTerm =
  {
    if (absDomain.size == math.pow(2, predicates.length).toInt)
      False() // short cut for CNF
    else if (absDomain.isEmpty)
      True() // short cut  for CNF
    else
    {
      if (!simplify)
      {
        val exprLs = for (i <- absDomain.indices) yield combinationToDisjunctTerm(absDomain(i), predicates)
        exprLs.reduce(_ & _)
      }
      else
      {
        val minTerms = booleanMinimize(absDomain.toList, predicates.toList)
        val terms = toCNF(minTerms)
        terms
      }
    }
  }

  /**
    * combine boolean vectors (conjunct clauses) to a disjunct term
    *
    * @param absDomain
    * @return BooleanExpression
    */
  def gammaDNF(absDomain: AbstractDomain,
               predicates: Seq[BooleanTerm],
               simplify: Boolean): BooleanTerm =
  {
    if (absDomain.size == math.pow(2, predicates.length).toInt)
      True() // short cut for DNF
    else if (absDomain.isEmpty)
      False() // short cut  for DNF
    else
    {
      if (!simplify)
      {
        val exprLs = for (i <- absDomain.indices) yield combinationToConjunctTerm(absDomain(i), predicates)
        exprLs.reduce(_ | _) // DNF
      }
      else
      {
        val minTerms = booleanMinimize(absDomain.toList, predicates.toList)
        val terms = toDNF(minTerms)
        terms
      }
    }
  }


  /**
    *
    * @param combination
    * @param predicates
    * @return
    */
  def combinationToDisjunctTerm(combination: Int, predicates: Seq[BooleanTerm]): BooleanTerm =
  {
    val bin = binaryString(combination, predicates.length)
    val exprLs = for (i <- bin.indices) yield if (bin(i) == '1') predicates(i) else !predicates(i)
    exprLs.reduce(_ | _)
  }

  /**
    *
    * @param combination
    * @param predicates
    * @return
    */
  def combinationToConjunctTerm(combination: Int, predicates: Seq[BooleanTerm]): BooleanTerm =
  {
    val bin = binaryString(combination, predicates.length)
    val exprLs = for (i <- bin.indices) yield if (bin(i) == '1') predicates(i) else !predicates(i)
    exprLs.reduce(_ & _)
  }


  trait TermComposer
  {
    def combinationToTerm(combination: Int, predicates: Seq[BooleanTerm]): BooleanTerm

    def gamma(absDomain: AbstractDomain,
              predicates: Seq[BooleanTerm],
              simplify: Boolean): BooleanTerm
  }

  class DNFComposer extends TermComposer
  {
    def combinationToTerm(combination: Int,
                          predicates: Seq[BooleanTerm]): BooleanTerm = combinationToConjunctTerm(combination, predicates)

    def gamma(absDomain: AbstractDomain,
              predicates: Seq[BooleanTerm],
              simplify: Boolean): BooleanTerm = gammaDNF(absDomain, predicates, simplify)
  }

  class CNFComposer extends TermComposer
  {
    def combinationToTerm(combination: Int,
                          predicates: Seq[BooleanTerm]): BooleanTerm = combinationToDisjunctTerm(combination, predicates)

    def gamma(absDomain: AbstractDomain,
              predicates: Seq[BooleanTerm],
              simplify: Boolean): BooleanTerm = gammaCNF(absDomain, predicates, simplify)
  }
} // object PredicateAbstraction




/////////////experiment
case class PredicatesAbstraction(traceAnalyzer: TraceAnalyzer,
                                  inputPredicates:Seq[TypedTerm[BoolTerm, Term]],
                                  termComposer:PredicatesAbstraction.TermComposer) extends Commands
                                                                                      with Resources
{
  import scala.collection.parallel.immutable.ParVector
  val combinationSize:Int = Math.pow(2, inputPredicates.length).toInt
  val solverArray = Array.fill[SMTLIBInterpreter](traceAnalyzer.length)(new SMTLIBInterpreter(solverFromName("Z3")))

  ///////////////////////////////////////////////
  lazy val tracePredicates:Seq[BooleanTerm] =
  {
    def equalTest(current:Seq[BooleanTerm], next:Seq[BooleanTerm]): Boolean =
    {
      require(0 != current.length && 0 != next.length, "equalTest2 cannot check zero length")
      require(current.length == next.length, "equalTest2 current.length != next.Length")

      val r = ParVector.range(0, current.length).map
              {
                i => equivalence(current(i), next(i))(solverArray(i))
              }
      r.reduceLeft(_ && _)
    }

    ///////////////////////////////
    import psksvp.ADT.FixedPoint
    println("I am doing the trace:" + traceAnalyzer.choices)
    val result = FixedPoint(equalTest,
                            computePredicates).run(True() :: List.fill(traceAnalyzer.length - 1)(False()))

    println("\nFixed point reached with Predicates ===============" )
    result.foreach { t => println(termAsInfix(t))}
    println("------------")
    result
  }

  ///////////
  lazy val automaton:NFA[Int, Int] =
  {
    val lastLocPredicateIsFalse = equivalence(False(), tracePredicates.last)(solverArray(0))
    println("last loc eq to false? >>>" + (if(lastLocPredicateIsFalse) "yes" else "no"))

    if(lastLocPredicateIsFalse)
      traceAnalyzer.automatonWithBackEdges(tracePredicates)(solverArray(0))
    else
      traceAnalyzer.linearAutomaton
  }


  def destroySolvers():Unit=
  {
    for(solver <- solverArray)
      solver.destroy()
  }

  /**
    *
    * @param currentPredicates
    * @return Seq of BooleanTerm of assertion at each location on the trace.
    */
  def computePredicates(currentPredicates:Seq[BooleanTerm]):Seq[BooleanTerm] =
  {
    def nextPredicateAtLocation(loc:Int):BooleanTerm =
    {
      ////////////////////////////////////////////
      def checkCombination(c:Int, transition:TraceAnalyzer.Transition):Int =
      {
        val pre = currentPredicates(transition.preconditionIndex)
        val indexedPre = pre.indexedBy { case _ => 0}

        val post = termComposer.combinationToTerm(c, inputPredicates)
        val indexedPost = post.indexedBy { case SSymbol(x) => transition.effect.lastIndexMap.getOrElse(x, 0)}
        if(psksvp.checkPost(indexedPre, transition.effect.term, indexedPost)(solverArray(loc)))
          c
        else
          -1
      }

      /////////////////////////////////////////////
      val absDomains = for(t <- traceAnalyzer.transitionMap(loc)) yield
                       {
                         val combinations = List.range(0, combinationSize)
                         val absDom = combinations.map(checkCombination(_, t))
                         absDom.filter( _ >= 0)
                       }
      val result = absDomains.map(termComposer.gamma(_, inputPredicates, simplify = true)).reduce(_ | _)
      result
    }

    /////////////////////////////////////
    val rls = ParVector.range(1, currentPredicates.length).map
              {
                i => (i, nextPredicateAtLocation(i))
              }
    val nextPredicate = Array.fill[BooleanTerm](currentPredicates.length)(True())
    for((loc, term) <- rls)
    {
      if (equivalence(term, currentPredicates(loc))(solverArray(loc)))
        nextPredicate(loc) = currentPredicates(loc)
      else
        nextPredicate(loc) = term | currentPredicates(loc)
    }
    nextPredicate
  }
}




