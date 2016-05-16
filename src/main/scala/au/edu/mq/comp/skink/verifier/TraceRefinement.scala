package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.ir.Trace
import au.edu.mq.comp.skink.SkinkConfig
import scala.util.Try
import smtlib.parser.Terms.QualifiedIdentifier
import smtlib.util.ValMap

/**
 * A feasible trace that leads to a program failure. `values`, if
 * present, reports on the values that lead to the failure. It
 * may contain entries for the identifiers in `ids` but may not
 * map them all.
 */
case class FailureTrace(trace : Trace, ids : Seq[QualifiedIdentifier],
    values : Try[ValMap])

class TraceRefinement(config : SkinkConfig) {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.edge.Implicits._
    import au.edu.mq.comp.automat.lang.Lang
    import au.edu.mq.comp.automat.util.Determiniser.toDetNFA

    import au.edu.mq.comp.skink.ir.{IRFunction, Trace}

    import smtlib.util.TypedTerm
    import smtlib.interpreters.{SMTSolver, GenericSolver}
    import smtlib.interpreters.Configurations._
    import smtlib.util.Logics.isSat
    import smtlib.parser.CommandsResponses.{SatStatus, UnsatStatus, GetInterpolantsResponseSuccess}
    import smtlib.parser.Commands.{Exit, Reset, Pop, Push}
    import smtlib.util.Logics.{getValues, isSat, getInterpolants}

    import scala.util.{Failure, Success}

    val stringToSolver = Map("Z3" -> Z3, "SMTInterpol" -> SMTInterpol, "CVC4" -> CVC4)

    def makeFailureTrace(trace : Trace, terms : Seq[TypedTerm], solver : GenericSolver) : FailureTrace = {

        import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collect

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

    /**
     * Implement the refinement loop for the given function in a given
     * configuration, returning an optional trace that if present is
     * feasible and demonstrates how the program is incorrect.
     */
    def traceRefinement(function : IRFunction) : Try[Option[FailureTrace]] = {

        import scala.annotation.tailrec

        val maxIterations = config.maxIterations()

        /**
         * The language of the original NFA of the function.
         */
        val functionLang = Lang(function.nfa)

        @tailrec
        def refineRec(r : NFA[Int, Int], remainingIterations : Int) : Try[Option[FailureTrace]] =

            (functionLang \ Lang(r)).getAcceptedTrace match {

                case None =>
                    Success(None)

                case Some(choices) =>

                    val trace = Trace(choices)
                    val traceTerms = function.traceToTerms(trace).map(_.reduceLeft(_ & _))

                    val solver = SMTSolver(stringToSolver(config.solver()), QFAUFLIAFullConfig, config.solverTimeOut()).get

                    solver.eval(Push(1))

                    isSat(traceTerms, withNaming = true)(solver) match {

                        //  feasible trace

                        case Success((SatStatus, _, _)) =>

                            val failTrace = makeFailureTrace(trace, traceTerms, solver)
                            solver.eval(Exit())
                            Success(Some(failTrace))

                        //  infeasible trace

                        case Success((UnsatStatus, Some(namedTerms), Some(feasibleLength))) =>

                            if (remainingIterations > 0) {
                                refineRec(
                                    toDetNFA(r + interpolantAuto(choices)),
                                    remainingIterations - 1
                                )
                            } else {
                                solver.eval(Exit())
                                Failure(new Exception(s"refineRec: maximum number of iterations $maxIterations reached"))
                            }

                        case status =>
                            Failure(new Exception(s"refineRec: strange solver status: $status"))

                    }
            }

        refineRec(NFA[Int, Int](Set(), Set(), Set()), maxIterations)
    }

    /**
     * Make an interpolant automaton for the given trace choices. For now, we just
     * generate a simple linear automaton. Later revisions will be cleverer.
     */
    def interpolantAuto(choices : Seq[Int]) : NFA[Int, Int] = {
        val transitions =
            for (i <- 0 until choices.length)
                yield (i ~> (i + 1))(choices(i))
        NFA(Set(0), transitions.toSet, Set(choices.length))
    }

}
