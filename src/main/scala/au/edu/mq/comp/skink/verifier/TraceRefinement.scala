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
    import au.edu.mq.comp.skink.{BitIntegerMode, CVC4SolverMode, MathIntegerMode, SMTInterpolSolverMode, Z3SolverMode}
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    import au.edu.mq.comp.skink.{CVC4SolverMode, SMTInterpolSolverMode, Z3SolverMode}
    import au.edu.mq.comp.skink.Skink.{getLogger, toDot}
    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collect
    import scala.annotation.tailrec
    import scala.util.{Failure, Success, Try}

    import au.edu.mq.comp.smtlib.interpreters.{SMTLIB2Interpreter}
    import au.edu.mq.comp.smtlib.parser.Analysis
    import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax._
    import au.edu.mq.comp.smtlib.theories.BoolTerm
    import au.edu.mq.comp.smtlib.theories.PredefinedLogics._
    import au.edu.mq.comp.smtlib.configurations.Configurations._
    import au.edu.mq.comp.smtlib.theories.{Core, IntegerArithmetics}
    import au.edu.mq.comp.smtlib.typedterms.Commands
    import au.edu.mq.comp.smtlib.typedterms.{Model, TypedTerm, Value}
    import au.edu.mq.comp.smtlib.solvers._
    import au.edu.mq.comp.smtlib.interpreters.SMTSolver
    import au.edu.mq.comp.smtlib.interpreters.Resources

    case class ValMap(m : Map[QualifiedId, Value])

    object Cmds extends Commands
    import Cmds._

    object logics extends IntegerArithmetics with Core
    import logics._

    object resources extends Resources
    import resources._

    val logger = getLogger(this.getClass)
    val cfgLogger = getLogger(this.getClass, ".cfg")

    implicit object SortedQIdeOrdering extends Ordering[SortedQId] {
        def compare(a : SortedQId, b : SortedQId) =
            showTerm(a) compare showTerm(b)
    }

    /**
     * Run the given solver to see if the given terms are satisifiable. If so,
     * return `Sat()` and a map that relates ids from the terms to their values.
     * If the term is not satisfiable, return `UnSat()` and an empty map.
     */
    def runSolver(
        selectedSolver : Solver,
        terms : Seq[TypedTerm[BoolTerm, Term]]
    ) : Try[(SatResponses, Map[SortedQId, Value])] =
        using(selectedSolver) {
            implicit solver =>
                isSat(terms : _*) map {
                    case Sat() =>
                        getDeclCmd() match {
                            case Success(xs) =>
                                val map = xs.map {
                                    x => (x, getValue(TypedTerm(Set(x), QIdTerm(SimpleQId(x.id)))))
                                }.collect {
                                    case (x, Success(v)) =>
                                        (x, v)
                                }.toMap
                                (Sat(), map)
                            case _ =>
                                (Sat(), Map())
                        }
                    case r =>
                        (r, Map())
                }
        }

    /**
     * Implement the refinement loop for the given function, optionally
     * returning a failure trace that is feasible and demonstrates how the
     * program is incorrect.
     */
    def traceRefinement(function : IRFunction) : Try[Option[FailureTrace]] = {

        val functionLang = Lang(function.nfa)

        // Get a solver specification as per configuration options. This
        // object creation does not spawn any process merely declare a solver
        // type we want to use
        val selectedSolver =
            config.solverMode() match {
                case Z3SolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new Z3 with AUFNIRA with Interpolants with Models
                        case BitIntegerMode() =>
                            new Z3 with AUFNIRA with Interpolants with Models
                    }
                case CVC4SolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new CVC4 with AUFNIRA with Models
                        case BitIntegerMode() =>
                            new CVC4 with AUFNIRA with Models
                    }
                case SMTInterpolSolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new SMTInterpol with QF_AUFLIA with Interpolants with Models
                        case BitIntegerMode() =>
                            sys.error(s"TraceRefinement: SMTInterpol not supported in BitVector mode")
                    }
            }

        cfgLogger.debug(toDot(function.nfa, s"${function.name} initial"))

        @tailrec
        def refineRec(r : NFA[Int, Int], iteration : Int) : Try[Option[FailureTrace]] = {

            logger.info(s"${function.name} iteration $iteration")
            cfgLogger.debug(toDot(toDetNFA(function.nfa - r)._1, s"${function.name} iteration $iteration"))

            (functionLang \ Lang(r)).getAcceptedTrace match {

                // No accepting trace in the language, so there are no failure traces.
                case None =>
                    logger.info(s"${function.name} has no failure traces")
                    Success(None)

                // Found a potential failure trace given by the choices. We
                // need to check if it's feasible. If so, it's a real failure.
                // If not, refine and try again.
                case Some(choices) =>

                    logger.info(s"${function.name} has a failure trace")
                    logger.debug(s"failure trace is: ${choices.mkString(", ")}")

                    /*
                     * Get the SMTlib terms that describe the meaning of the operations
                     * that would be executed. If an empty collection of terms is returned,
                     * sanitise it to "true", otherwise join the components using
                     * conjunction.
                     */
                    val trace = Trace(choices)
                    val traceTerms = function.traceToTerms(trace)

                    for (i <- 0 until traceTerms.length) {
                        logger.debug(s"trace effect $i: ${showTerm(traceTerms(i).termDef)}")
                    }

                    // Build a single combined term for the trace effect
                    val fullTerm = traceTerms.reduceLeft(_ & _)

                    // Check satisfiability and if Sat, get model values
                    val result = runSolver(selectedSolver, traceTerms)

                    // Check to see if the trace is feasible.
                    result match {

                        // Yes, feasible. We've found a way in which the program
                        // can file. Build the failure trace and return.
                        case Success((Sat(), values)) =>
                            logger.info(s"failure trace is feasible, program is incorrect")
                            for (x <- values.keys.toSeq.sorted) {
                                logger.debug(s"value: ${showTerm(x.id)} = ${values(x).show}")
                            }
                            val failTrace = FailureTrace(trace, values)
                            Success(Some(failTrace))

                        // No, infeasible. That trace can't occur in a program
                        // execution. If we've got iterations to spare, try
                        // again after removing the infeasible trace (and perhaps
                        // other traces that fail for related reasons).
                        case Success((UnSat(), _)) =>
                            logger.info(s"the failure trace is not feasible")
                            if (iteration < config.maxIterations()) {
                                import interpolant.InterpolantAuto.buildInterpolantAuto
                                refineRec(
                                    toDetNFA(r +
                                    (
                                        buildInterpolantAuto(function, choices, iteration)
                                    //  +
                                    // buildInterpolantAuto(function, choices, fromEnd = true)
                                    ))._1,
                                    iteration + 1
                                )
                            } else {
                                Failure(new Exception(s"maximum number of iterations ${config.maxIterations()} reached"))
                            }

                        case status =>
                            Failure(new Exception(s"strange solver status: $status"))
                    }
            }
        }

        // Start the refinement algorithm with no "ruled out" traces.
        refineRec(NFA[Int, Int](Set(), Set(), Set()), 0)
    }
}
