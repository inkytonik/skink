package psksvp

import au.edu.mq.comp.skink.ir.IRFunction
import au.edu.mq.comp.smtlib.interpreters.SMTLIBInterpreter
import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{SSymbol, Term}
import au.edu.mq.comp.smtlib.theories.BoolTerm
import au.edu.mq.comp.smtlib.typedterms.TypedTerm
import au.edu.mq.comp.automat.auto.NFA
import logics._
import au.edu.mq.comp.smtlib.typedterms.Commands
import au.edu.mq.comp.smtlib.interpreters.Resources
import psksvp.ADT.{AutoDispose, Disposable}
import psksvp.TraceAnalyzer.Transition

import scala.collection.parallel.immutable.ParVector


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

    if (traceAnalyzer.repetitionsPairs.isEmpty)
    {
      println(choices)
      println("no Repetitions, rtn linear automaton")
      traceAnalyzer.linearAutomaton
    }
    else
    {
      //usePredicates = (for(i <- 0 until traceAnalyzer.length - 1) yield traceAnalyzer.inferPredicates(i, True())).flatten
//      var pre:BooleanTerm = True()
//      for(i <- 0 until traceAnalyzer.length - 1)
//      {
//        println(s"predicates inferred from block $i")
//        val ls = traceAnalyzer.inferPredicates(i, pre)
//        pre = ls.reduceLeft(_ & _)
//        print(ls.map(termAsInfix(_)))
//        println()
//      }

      println("running with input predicates: ")
      usePredicates.foreach{p => print(termAsInfix(p) + ",")}
      println()
      val p = PredicatesAbstraction(traceAnalyzer, usePredicates, new CNFComposer)
      val result = p.automaton
      p.dispose()
      result
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
        val exprLs = ParVector.range(0, absDomain.length).map
        {
          i => combinationToDisjunctTerm(absDomain(i), predicates)
        }
        //val exprLs = for (i <- absDomain.indices) yield combinationToDisjunctTerm(absDomain(i), predicates)
        exprLs.par.reduce(_ & _)
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

/**
  *
  * @param traceAnalyzer
  * @param inputPredicates
  * @param termComposer
  */
case class PredicatesAbstraction(traceAnalyzer: TraceAnalyzer,
                                  inputPredicates:Seq[TypedTerm[BoolTerm, Term]],
                                  termComposer:PredicatesAbstraction.TermComposer) extends Commands
                                                                                      with Resources
                                                                                      with Disposable
{
  import scala.collection.parallel.immutable.ParVector
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


  def dispose():Unit=
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
    /**
      *
      * @param t
      * @return
      */
    def predicatesForTransition(t:Transition):Seq[BooleanTerm] =
    {
      /**
        *
        * @param predicate
        * @return
        */
      def included(predicate:BooleanTerm):Boolean =
      {
        val indexedPredicate = predicate.indexedBy{ case SSymbol(x) => t.effect.lastIndexMap.getOrElse(x, 0)}

        val insideEffect = (indexedPredicate.typeDefs intersect t.effect.term.typeDefs).nonEmpty
        //pre has no index, so we don't need to index predicate term
        val insidePre = (predicate.typeDefs intersect currentPredicates(t.preconditionIndex).typeDefs).nonEmpty
        //if it is in effect Or pre term, we need to include the predicate for abstraction.
        insideEffect || insidePre
      }

      val lsp = for(p <- inputPredicates if included(p)) yield p
      if(lsp.nonEmpty) lsp else inputPredicates
    }

    /**
      * computes POSTs at location loc.
      * @param loc is location
      * @return union of posts at location loc
      */
    def nextPredicateAtLocation(loc:Int):BooleanTerm =
    {
      ////////////////////////////////////////////
      /**
        * check to see if combination c is included in the post of the effect of
        * transition transition.
        * @param c
        * @param transition
        * @param usePredicates : list of predicates to be used for computing abstraction
        * @return true if combination c is included, false otherwise.
        */
      def checkCombination(c:Int,
                           transition:TraceAnalyzer.Transition,
                           usePredicates:Seq[BooleanTerm]):Boolean =
      {
        val pre = currentPredicates(transition.preconditionIndex)
        val indexedPre = pre.indexedBy { case _ => 0}

        val post = termComposer.combinationToTerm(c, usePredicates)
        val indexedPost = post.indexedBy { case SSymbol(x) => transition.effect.lastIndexMap.getOrElse(x, 0)}
        psksvp.checkPost(indexedPre, transition.effect.term, indexedPost)(solverArray(loc))
      }

      /////////////////////////////////////////////
      val absPosts = for(t <- traceAnalyzer.transitionMap(loc)) yield
                     {
                       val usePredicates = predicatesForTransition(t) // use only predicates which lits are in the eff or pre
                       val combinationSize:Int = Math.pow(2, usePredicates.length).toInt
                       val absDom = for(c <- List.range(0, combinationSize)
                                        if checkCombination(c, t, usePredicates)) yield c
                       termComposer.gamma(absDom, usePredicates, simplify = true)
                     }
      // in each locations, there can be more than one Transitions that need to be abstracted.
      // one is from the direct edge from previous location.
      // another may be from incomming edges from repeat location (back edges).
      // absPost of these transition of the same location are combined (union) together.
      absPosts.reduce(_ | _) // union all post at this location (loc)
    }

    /////////////////////////////////////
    /// compute abstraction at each location
    /// NOTE: we start from loc 1, because loc 0 is always True.
    val rls = ParVector.range(1, currentPredicates.length).map
              {
                loc => (loc, nextPredicateAtLocation(loc))
              }


    //updating the each location with new abstracted post if changes from last run
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




