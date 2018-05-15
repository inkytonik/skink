package psksvp

import au.edu.mq.comp.skink.ir.IRFunction
import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{SSymbol, Term}
import org.bitbucket.franck44.scalasmt.theories.BoolTerm
import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
import org.bitbucket.franck44.automat.auto.NFA
import logics._
import org.bitbucket.franck44.scalasmt.typedterms.Commands
import org.bitbucket.franck44.scalasmt.interpreters.Resources
import psksvp.ADT.{AutoDispose, Disposable}
import psksvp.TraceAnalyzer.Transition


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
  var linearAutoCount = 0
  val linearAutoLimit = 10
  var timeUsedWhole: Long = 0
  var timeUsedCheckComb: Long = 0
  var genPredicates = false
  private var usePredicates: Seq[BoolTypedTerm] = Nil
  def setToUsePredicates(pl: Seq[BoolTypedTerm]): Unit = {usePredicates = pl}

 //val solverPool = new ADT.WorkerPool(Array.fill[Solver](10)(new Solver("Z3")))
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
    import au.edu.mq.comp.skink.ir.llvm.LLVMFunction
    val traceAnalyzer = TraceAnalyzer(function, choices)
    val functionInformation = VariableAnalysis(function.asInstanceOf[LLVMFunction])

    log("using predAbs on trace: " + traceAnalyzer.choices)
    if (traceAnalyzer.repetitionsPairs.isEmpty)
    {
      log(choices)
      log("no Repetitions, rtn linear automaton")
      traceAnalyzer.linearAutomaton
    }
    else
    {
      log(s"repetitions: ${traceAnalyzer.repetitionsPairs}")

      //////////////////////////////
      //////////////////////////////
      /////////testing//////////////

      implicit val solver = new SMTSolver("Z3")
      val invariant = usePredicates.head
      val ck = LoopInvariant(traceAnalyzer).check(invariant)
      solver.destroy()
      if(ck)
      {
        println("LOOP INVARIANT is TRUE")
        //val ps:List[BoolTypedTerm] = (True() :: List.fill(traceAnalyzer.length - 2)(invariant)) :+ False()
        //val mm = traceAnalyzer.checkTraceAsTriple(ps)
        //solver.destroy()
        traceAnalyzer.automatonFrom(traceAnalyzer.repetitionsPairs.last)
      }
      else
      {
        println("LOOP INVARIANT is FALSE")
        //solver.destroy()
        sys.error(" it's ok, I raise it intentionally   ")
        traceAnalyzer.linearAutomaton
      }

      //////////////////////////////
      //////////////////////////////
      //////////////////////////////
      
      /*
      if(Nil == usePredicates || genPredicates)
      {
        log("generating predicates for abstraction")
        val solver = new SMTSolver("Z3")
        val tempPredicates = EQEPredicatesHarvester(traceAnalyzer,
                                                    functionInformation,
                                                    solver).inferredPredicates
        log(s"${tempPredicates.size} predicates generated")
        log(termAsInfix(tempPredicates.toList))

        usePredicates = removeTrueAndFalseTerms(tempPredicates).toIndexedSeq

        solver.destroy()
        genPredicates = true
      }

      log(s"running with predicates: ${usePredicates.length}")
      log(termAsInfix(usePredicates))
      val p = PredicatesAbstraction(traceAnalyzer, usePredicates, CNFComposer)
      val (resultAuto, linear) = p.automaton
      p.dispose()
      if(linear) 
      {
        linearAutoCount = linearAutoCount + 1
        if(linearAutoCount > linearAutoLimit)
        {
          linearAutoCount = 0
          sys.error(s"PredicatesAbstraction fail to generate backedges more than $linearAutoLimit times, give up")
        }
      }
      resultAuto */
    }
  }
} // object PredicateAbstraction

/**
  *
  * @param traceAnalyzer
  * @param inputPredicates
  * @param termComposer
  */
case class PredicatesAbstraction(traceAnalyzer: TraceAnalyzer,
                                  inputPredicates:Seq[TypedTerm[BoolTerm, Term]], // fix me, should be Set
                                  termComposer:TermComposer) extends Commands
                                                             with Resources
                                                             with Disposable
{
  import scala.collection.parallel.immutable.ParVector
  val solverArray = Array.fill[SMTSolver](traceAnalyzer.length)(new SMTSolver("Z3"))

  ///////////////////////////////////////////////
  lazy val tracePredicates:Seq[BoolTypedTerm] =
  {
    def equalTest(current:Seq[BoolTypedTerm], next:Seq[BoolTypedTerm]): Boolean =
    {
      require(0 != current.length && 0 != next.length, "equalTest cannot check zero length")
      require(current.length == next.length, "equalTest current.length != next.Length")

      val r = ParVector.range(0, current.length).map
              {
                i => equivalence(current(i), next(i))(solverArray(i))
              }
      r.reduceLeft(_ && _)
    }

    ///////////////////////////////
    import psksvp.ADT.FixedPoint
    val result = FixedPoint(equalTest,
                            computePredicates).run(True() :: List.fill(traceAnalyzer.length - 1)(False()))

    log("\nFixed point reached with Predicates ===============" )
    result.foreach { t => log(termAsInfix(t))}
    log("------------")
    val (hits, miss) = BooleanMinimizeCNF.cacheStatistic
    log(s"simplify cache hit is $hits and mis is $miss")
    result
  }

  ///////////
  lazy val automaton:(NFA[Int, Int], Boolean) =
  {
    val lastLocPredicateIsFalse = equivalence(False(), tracePredicates.last)(solverArray(0))
    log("last loc eq to false? >>>" + (if(lastLocPredicateIsFalse) "yes" else "no"))

    if(lastLocPredicateIsFalse)
      (traceAnalyzer.automatonWithBackEdges(tracePredicates)(solverArray(0)), false)
    else
      (traceAnalyzer.linearAutomaton, true)
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
  def computePredicates(currentPredicates:Seq[BoolTypedTerm]):Seq[BoolTypedTerm] =
  {
    /**
      *
      * @param t
      * @return
      */
    def predicatesForTransition(t:Transition):Seq[BoolTypedTerm] =
    {
      /**
        *
        * @param predicate
        * @return
        */
      def inEffectOrPre(predicate:BoolTypedTerm):Boolean =
      {
        val indexedPredicate = predicate.indexedBy{ case SSymbol(x) => t.effect.lastIndexMap.getOrElse(x, 0)}
        val insideEffect = (indexedPredicate.typeDefs intersect t.effect.term.typeDefs).nonEmpty

        //pre has no index, so we don't need to index predicate term
        val insidePre = (predicate.typeDefs intersect currentPredicates(t.preconditionIndex).typeDefs).nonEmpty
        //if it is in effect Or pre term, we need to include the predicate for abstraction.
        insideEffect || insidePre
      }

      ///////////////////////////////////////////////////////////////
      val lsp = for(p <- inputPredicates if inEffectOrPre(p)) yield p
      if(lsp.nonEmpty) lsp else inputPredicates
    }

    /**
      * computes POSTs at location loc.
      * @param loc is location
      * @return union of posts at location loc
      */
    def nextPredicateAtLocation(loc:Int):BoolTypedTerm =
    {
      ////////////////////////////////////////////
      /**
        * check to see if pre and effect is included in combination c (post)
        * transition transition.
        * @param c
        * @param transition
        * @param usePredicates : list of predicates to be used for computing abstraction
        * @return true if combination c is included, false otherwise.
        */
      def checkCombination(c:Int,
                           transition:TraceAnalyzer.Transition,
                           usePredicates:Seq[BoolTypedTerm]):Boolean =
      {
        val pre = currentPredicates(transition.preconditionIndex)
        val indexedPre = pre.indexedBy { case _ => 0}

        val post = termComposer.combinationToTerm(c, usePredicates)
        val indexedPost = post.indexedBy { case SSymbol(x) => transition.effect.lastIndexMap.getOrElse(x, 0)}
        psksvp.checkPost(indexedPre, transition.effect.term, indexedPost)(solverArray(loc))
      }

      /////////////////////////////////////////////
      /////////////////////////////////////////////
      val absPosts = for(t <- traceAnalyzer.transitionMap(loc)) yield
                     {
                       val usePredicates = predicatesForTransition(t) // use only predicates which lits are in the eff or pre
                       //log(s"usePredicates:${usePredicates.length} <-> inputPredicates:${inputPredicates.length}")

                       val combinationSize:Int = Math.pow(2, usePredicates.length).toInt
                       val absDom = for(c <- List.range(0, combinationSize)
                                        if checkCombination(c, t, usePredicates)) yield c

                       termComposer.gamma(absDom, usePredicates, simplify = true)
                     }
      // in each locations, there can be more than one Transitions that need to be abstracted.
      // one is from the direct edge from previous location.
      // another may be from incomming edges from repeat locations (back edges).
      // absPost of these transitions at the same location are combined (union) together.
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
    val newPredicates = for((loc, term) <- rls) yield
                        {
                          if (equivalence(term, currentPredicates(loc))(solverArray(loc)))
                            currentPredicates(loc)
                          else
                            term | currentPredicates(loc) // expand the abstraction
                        }
    // the first loc is always true.
    True() +: newPredicates.toIndexedSeq
  }
}




