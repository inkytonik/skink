package au.edu.mq.comp.perentiemq.refinement

import au.edu.mq.comp.automat.auto.{ DetAuto, NFA }
import au.edu.mq.comp.automat.lang.Lang
import au.edu.mq.comp.automat.edge.Implicits._
import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.{ Entry, Trace, traceToTerms }
import smtlib.util.TypedTerm
import smtlib.interpreters.SMTSolver
import smtlib.interpreters.Configurations._
import smtlib.util.Logics.isSat
import scala.util.{ Try, Failure, Success }
import smtlib.parser.CommandsResponses.{ SatStatus, UnsatStatus }
import smtlib.parser.Commands.{ Exit, Reset }

object TraceRefinement {

  // type L = Entry

  /**
   * Implement the refinement loop, returning an optional trace that if
   * present is feasible and demonstrates how the program is incorrect.
   */
  def traceRefinement[S1, L](cfg: NFA[S1, L],
    traceToTerms: Seq[L] => Seq[TypedTerm]): Try[Option[Seq[L]]] = {

    println("I am called")
    // FIXME: want to put @tailrec but Scala compiler complains, not sure why...
    // Franck: because getAcceptedTrace itself contains a tailrec?
    import scala.annotation.tailrec
    def refineRec[S2](cfg: NFA[S1, L], r: DetAuto[S2, L]): Try[Option[Seq[L]]] =

      (Lang(cfg)).getAcceptedTrace match {
      // (Lang(cfg) \ Lang(r)).getAcceptedTrace match {

        //  if None, the program is correct
        case None =>
            println("Exiting")
          Success(None)

        case Some(entries) =>
            println("Found")
          val trace = entries
          val terms: Seq[TypedTerm] = traceToTerms(trace)

          import org.kiama.output.PrettyPrinter.{ any, pretty }
          val pp = terms.map(_.toString)
          println(s"trying terms ${pretty(any(pp)).layout}")

          //    check if trace is feasible or not
          val solver = SMTSolver(SMTInterpol, QFLIASatModelConfig).get
          isSat(terms)(solver) match {
            case Success(SatStatus) =>
              solver.eval(Exit())
              println("trace was feasible")
              Success(Some(entries))

            case Success(UnsatStatus) =>
              solver.eval(Exit())
              println("trace was infeasible")
              // val tracenfa = interpolantAutomata(trace)
              refineRec(cfg, r + InterpolantAutomaton(trace))

            case status =>
                Failure(new Exception(s"strange solver status: $status"))
              // sys.error(s"strange solver status: $status")
          }
      }

    println("Calling refineRec")
    refineRec(cfg, NFA[Set[Int], L](Set(), Set(), Set()))
  }
}
