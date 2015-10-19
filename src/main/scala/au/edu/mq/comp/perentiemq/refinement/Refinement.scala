package au.edu.mq.comp.perentiemq.refinement

import au.edu.mq.comp.automat.auto.{ DetAuto, NFA }
import au.edu.mq.comp.automat.lang.Lang
import au.edu.mq.comp.automat.edge.Implicits._

import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.{ traceToTerms }

import smtlib.util.{ TypedTerm, ValMap }
import smtlib.interpreters.{ SMTSolver, GenericSolver }
import smtlib.interpreters.Configurations._
import smtlib.util.Logics.isSat
import smtlib.parser.CommandsResponses.{ SatStatus, UnsatStatus, GetInterpolantsResponseSuccess }
import smtlib.parser.Commands.{ Exit, Reset }
import smtlib.parser.Terms.QualifiedIdentifier
import smtlib.util.Logics.{ getValues, isSat, getInterpolants }

import scala.util.{ Try, Failure, Success }

import org.kiama.rewriting.Rewriter.collect

import au.edu.mq.comp.perentiemq.refinement.InterpolantAutomaton.computeInterpolantAuto
// import com.typesafe.scalalogging.LazyLogging

import  au.edu.mq.comp.perentiemq.cfg._
import org.scalallvm.assembly.AssemblySyntax._

object TraceRefinement { //extends LazyLogging removing for now as they are two logback.xml files conflicting

  /**
   * A feasible trace that leads to a program failure. `values`, if
   * present, reports on the values that lead to the failure. It
   * may contain entries for the identifiers in `ids` but may not
   * map them all.
   */
  case class FailureTrace[L](trace: Seq[L], ids: Seq[QualifiedIdentifier],
    values: Try[ValMap])

  def makeFailureTrace[L](trace: Seq[L], terms: Seq[TypedTerm], solver: GenericSolver): FailureTrace[L] = {
    val getids = collect[Seq, QualifiedIdentifier] {
      case id @ (QualifiedIdentifier(_, Some(_))) =>
        id
    }
    val ids = getids(terms).toSet.toSeq
    val values = ids match {
      case h +: t =>
        getValues(h, t)(solver)
      case _ =>
        Success(ValMap(Map.empty))
    }
    FailureTrace(trace, ids, values)
  }

  // type L = Entry

  val MAX_ITERATION = 10
  /**
   * Implement the refinement loop, returning an optional trace that if
   * present is feasible and demonstrates how the program is incorrect.
   */
  def traceRefinement[S1, L](cfg: NFA[S1, L],
    traceToTerms: Seq[L] => Seq[Vector[TypedTerm]],
    blockName: CFGBlock[FunctionDefinition, Block] => String,
    maxIterations: Int = MAX_ITERATION): Try[Option[FailureTrace[L]]] = {
    // FIXME: want to put @tailrec but Scala compiler complains, not sure why...
    // Franck: because getAcceptedTrace itself contains a tailrec?
    import scala.annotation.tailrec
    def refineRec[S2](cfg: NFA[S1, L], r: DetAuto[S2, L], maxIterations: Int): Try[Option[FailureTrace[L]]] =

      (Lang(cfg) \ Lang(r)).getAcceptedTrace match {

        //  if None, the program is correct
        case None =>
          Success(None)

        case Some(entries) =>
          val trace = entries
          // the following Seq may contain many times True for gotos
          val blockTerms: Seq[Vector[TypedTerm]] = traceToTerms(trace)
          // val terms = blockTerms.flatten
          // blockTerms map println
          // println(blockTerms.size)
          // println(s"empty size is:  ${blockTerms.filter( _.isEmpty ).size}")
          //
          // build an AND of each blockTerm. Remove True terms for checking SAT
          // we should check that False is not in!
          val bTerms = blockTerms.map(_.reduceLeft(_ & _))
          // println(s"Size = ${bTerms.size}")
          // import smtlib.util.Implicits._
          // val bTerms2 = blockTerms.map(_.reduceLeft(_ & _)).zip(0 to blockTerms.size -1) map
          //    {
          //      case (e, k) if (e == TypedTerm(true)) => (e & k === k)
          //      case (e, _) => e
          //    }
          import org.kiama.output.PrettyPrinter.{ any, pretty }
          // val pp = bTerms2.map(_.toString)
          // println(s"trying terms ${pretty(any(pp)).layout}")

          //    check if trace is feasible or not
          val solver = SMTSolver(SMTInterpol, QFLIAFullConfig).get
          isSat(bTerms)(solver) match {
            case Success(SatStatus) =>
              //  build a failure trace
              val failTrace = makeFailureTrace(entries, bTerms, solver)
              solver.eval(Exit())
              // logger.debug("trace was feasible")
              Success(Some(failTrace))

            case Success(UnsatStatus) =>
              // logger.debug("trace was infeasible")
              if (maxIterations > 0) {
                val i: Seq[TypedTerm] = getInterpolants(bTerms)(solver).get
                val ia = computeInterpolantAuto(i, trace, traceToTerms, MAX_ITERATION - maxIterations)
                //  we get an interpolant for blockTerms that have been pruned of True terms
                // println("---------------------------------")
                // i.map(_.unIndex).map(_.getTerm).map(println)
                // println("---------------------------------")
                // bTerms2 map println
                // println(s"Iteration $maxIterations")
                // i map println
                //  we can re-insert intrpolants after the True terms
                solver.eval(Exit())
                refineRec(cfg, r + ia, maxIterations - 1)
                // refineRec(cfg, r + InterpolantAutomaton(trace), maxIterations - 1)
              } else {
                solver.eval(Exit())
                Failure(new Exception(s"Maximum number of iterations reached"))
              }
            case status =>
              Failure(new Exception(s"strange solver status: $status"))
            // sys.error(s"strange solver status: $status")
          }
      }

    refineRec(cfg, NFA[Set[Int], L](Set(), Set(), Set()), maxIterations)
  }
}
