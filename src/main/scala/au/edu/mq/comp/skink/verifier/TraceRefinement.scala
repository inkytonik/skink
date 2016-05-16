package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.ir.Trace
import au.edu.mq.comp.skink.SkinkConfig

/**
 * Implementation of the trace refinement process.
 */
class TraceRefinement(config : SkinkConfig) {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.edge.Implicits._
    import au.edu.mq.comp.automat.lang.Lang
    import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collect
    import scala.annotation.tailrec
    import scala.util.{Failure, Success, Try}
    import smtlib.interpreters.Configurations.QFAUFLIAFullConfig
    import smtlib.interpreters.{GenericSolver, SMTSolver}
    import smtlib.parser.CommandsResponses.{SatStatus, UnsatStatus, GetInterpolantsResponseSuccess}
    import smtlib.parser.Commands.{Exit, Reset, Pop, Push}
    import smtlib.parser.Terms.QualifiedIdentifier
    import smtlib.util.Logics.{getValues, isSat, getInterpolants}
    import smtlib.util.{TypedTerm, ValMap}

    /**
     * Build a failure trace out of the given trace and terms that describe
     * the trace effect. The failure trace will include the identifiers and
     * values for all of the variables that are mentioned in the terms.
     */
    def makeFailureTrace(trace : Trace, terms : Seq[TypedTerm], solver : GenericSolver) : FailureTrace = {
        val getids = collect {
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
     * Implement the refinement loop for the given function, optionally
     * returning a failure trace that is feasible and demonstrates how the
     * program is incorrect.
     */
    def traceRefinement(function : IRFunction) : Try[Option[FailureTrace]] = {

        val functionLang = Lang(function.nfa)

        @tailrec
        def refineRec(r : NFA[Int, Int], remainingIterations : Int) : Try[Option[FailureTrace]] =

            (functionLang \ Lang(r)).getAcceptedTrace match {

                // No sentence in the language, so there are no failure traces.
                case None =>
                    Success(None)

                // Found a potential failure trace given by the choices. We
                // need to check if it's feasible. If so, it's a real failure.
                // If not, refine and try again.
                case Some(choices) =>

                    // Get the SMTlib terms that describe the meaning of the
                    // operations that would be executed.
                    val trace = Trace(choices)
                    val traceTerms = function.traceToTerms(trace).map(_.reduceLeft(_ & _))

                    // Build the solver we will use to check feasibilty.
                    val solver = SMTSolver(config.solver(), QFAUFLIAFullConfig, config.solverTimeOut()).get

                    solver.eval(Push(1))

                    // Check to see if the trace is feasible.
                    isSat(traceTerms, withNaming = true)(solver) match {

                        // Yes, feasible. We've found a way in which the program
                        // can file. Build the failure trace and return.
                        case Success((SatStatus, _, _)) =>

                            val failTrace = makeFailureTrace(trace, traceTerms, solver)
                            solver.eval(Exit())
                            Success(Some(failTrace))

                        // No, infeasible. That trace can't occur in a program
                        // execution. If we've got iterations to spare, try
                        // again after removing the infeasible trace (and perhaps
                        // other traces that fail for related reasons).
                        case Success((UnsatStatus, Some(namedTerms), Some(feasibleLength))) =>
                            if (remainingIterations > 0) {
                                refineRec(
                                    toDetNFA(r + interpolantAuto(choices)),
                                    remainingIterations - 1
                                )
                            } else {
                                solver.eval(Exit())
                                Failure(new Exception(s"refineRec: maximum number of iterations ${config.maxIterations()} reached"))
                            }

                        case status =>
                            Failure(new Exception(s"refineRec: strange solver status: $status"))

                    }
            }

        // Start the refinement algorithm with no "ruled out" traces.
        refineRec(NFA[Int, Int](Set(), Set(), Set()), config.maxIterations())
    }

    /**
     * Make an interpolant automaton for the given trace choices. For now, we just
     * generate a simple linear automaton so the refinement process will remove
     * just this one trace. Later revisions will be cleverer.
     */
    def interpolantAuto(choices : Seq[Int]) : NFA[Int, Int] = {
        val transitions =
            for (i <- 0 until choices.length)
                yield (i ~> (i + 1))(choices(i))
        NFA(Set(0), transitions.toSet, Set(choices.length))
    }

}
