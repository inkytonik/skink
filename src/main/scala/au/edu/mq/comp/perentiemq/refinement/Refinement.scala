package au.edu.mq.comp.perentiemq.refinement

import au.edu.mq.comp.automat.auto.{ DetAuto, NFA }
import au.edu.mq.comp.automat.lang.Lang
import au.edu.mq.comp.automat.edge.Implicits._

import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.{ traceToTerms }

import smtlib.util.{ TypedTerm, ValMap }
import smtlib.interpreters.{ SMTSolver, GenericSolver }
import smtlib.interpreters.Configurations._
import smtlib.util.Logics.isSat
import smtlib.parser.CommandsResponses.{ SatStatus, UnsatStatus }
import smtlib.parser.Commands.{ Exit, Reset }
import smtlib.parser.Terms.QualifiedIdentifier
import smtlib.util.Logics.{ getValues, isSat }

import scala.util.{ Try, Failure, Success }

import org.kiama.rewriting.Rewriter.collect

// import com.typesafe.scalalogging.LazyLogging

object TraceRefinement  { //extends LazyLogging removing for now as they are two logback.xml files conflicting

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

  /**
   * Implement the refinement loop, returning an optional trace that if
   * present is feasible and demonstrates how the program is incorrect.
   */
  def traceRefinement[S1, L](cfg: NFA[S1, L],
    traceToTerms: Seq[L] => Seq[TypedTerm],
    maxIterations: Int = 10): Try[Option[FailureTrace[L]]] = {
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
          val terms: Seq[TypedTerm] = traceToTerms(trace)

          import org.kiama.output.PrettyPrinter.{ any, pretty }
          val pp = terms.map(_.toString)
          // logger.debug(s"trying terms ${pretty(any(pp)).layout}")

          //    check if trace is feasible or not
          val solver = SMTSolver(SMTInterpol, QFLIASatModelConfig).get
          isSat(terms)(solver) match {
            case Success(SatStatus) =>
              //  build a failure trace
              val failTrace = makeFailureTrace(entries, terms, solver)
              solver.eval(Exit())
              // logger.debug("trace was feasible")
              Success(Some(failTrace))

            case Success(UnsatStatus) =>
              solver.eval(Exit())
              // logger.debug("trace was infeasible")
              if (maxIterations > 0)
                refineRec(cfg, r + InterpolantAutomaton(trace), maxIterations - 1)
              else
                Failure(new Exception(s"Maximum number of iterations reached"))
            case status =>
              Failure(new Exception(s"strange solver status: $status"))
            // sys.error(s"strange solver status: $status")
          }
      }

    refineRec(cfg, NFA[Set[Int], L](Set(), Set(), Set()), maxIterations)
  }
}
