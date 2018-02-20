package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.ir.{IR, Verifiable, Choice}
import au.edu.mq.comp.skink.SkinkConfig

/**
 * Implementation of the trace refinement process.
 */
class TraceRefinement(config : SkinkConfig) {

    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.automat.lang.Lang
    import org.bitbucket.franck44.automat.util.Determiniser.toDetNFA
    import au.edu.mq.comp.skink.{BitIntegerMode, BoolectorSolverMode, CVC4SolverMode, MathIntegerMode, SMTInterpolSolverMode, YicesSolverMode, YicesNonIncrSolverMode, Z3SolverMode}
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    import au.edu.mq.comp.skink.{CVC4SolverMode, SMTInterpolSolverMode, Z3SolverMode}
    import au.edu.mq.comp.skink.Skink.{getLogger, toDot}
    import scala.annotation.tailrec
    import scala.util.{Failure, Success, Try}

    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.configurations.SMTLogics._
    import org.bitbucket.franck44.scalasmt.configurations.SMTOptions._
    import org.bitbucket.franck44.scalasmt.configurations.{SMTInit, SolverConfig}
    import org.bitbucket.franck44.scalasmt.typedterms.Commands
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, Value}
    import org.bitbucket.franck44.scalasmt.interpreters.Resources

    case class ValMap(m : Map[QualifiedId, Value])

    object Cmds extends Commands
    import Cmds._

    object resources extends Resources
    import resources._

    val logger = getLogger(this.getClass)
    val cfgLogger = getLogger(this.getClass, ".cfg")

    /**
     * Run the given solver to see if the given terms are satisfiable. If so,
     * return `Sat()` and a map that relates ids from the terms to their values.
     * If the term is not satisfiable, return `UnSat()` and an empty map.
     */
    def runSolver(
        selectedSolver : SMTSolver,
        terms : Seq[TypedTerm[BoolTerm, Term]]
    ) : Try[(SatResponses, Map[String, Value])] =
        using(selectedSolver) {
            implicit solver =>
                isSat(config.solverTimeOut())(terms : _*) map {
                    case Sat() =>
                        getDeclCmd() match {
                            case Success(xs) =>
                                val map = xs.map {
                                    x => (showTerm(x.id), getValue(TypedTerm(Set(x), QIdTerm(SimpleQId(x.id)))))
                                }.collect {
                                    case (s, Success(v)) =>
                                        (s, v)
                                }.toMap
                                (Sat(), map)
                            case _ =>
                                (Sat(), Map())
                        }
                    //  Either UnSat() or UnKnown()
                    case status => (status, Map())
                }
        }

    /**
     * Get a solver specification as per configuration options. This
     * object creation does not spawn any process merely declare a solver
     * type we want to use
     */
    private def selectedSolver = {
        config.solverMode() match {
            case BoolectorSolverMode() =>
                config.integerMode() match {
                    case MathIntegerMode() =>
                        sys.error(s"TraceRefinement: Boolector not supported in math integer mode")
                    case BitIntegerMode() =>
                        new SMTSolver("Boolector", new SMTInit(QF_ABV, List(MODELS)))
                }
            case CVC4SolverMode() =>
                config.integerMode() match {
                    case MathIntegerMode() =>
                        new SMTSolver("CVC4", new SMTInit(QF_AUFLIRA, List(MODELS)))
                    case BitIntegerMode() =>
                        new SMTSolver("CVC4", new SMTInit(QF_ABV, List(MODELS)))
                }
            case SMTInterpolSolverMode() =>
                config.integerMode() match {
                    case MathIntegerMode() =>
                        new SMTSolver("SMTInterpol", new SMTInit(QF_AUFLIA, List(INTERPOLANTS, MODELS)))
                    case BitIntegerMode() =>
                        sys.error(s"TraceRefinement: SMTInterpol not supported in bit integer mode")
                }
            case YicesSolverMode() =>
                config.integerMode() match {
                    case MathIntegerMode() =>
                        new SMTSolver("Yices", new SMTInit(QF_AUFLIRA, List(MODELS)))
                    case BitIntegerMode() =>
                        sys.error(s"TraceRefinement: Yices not supported in bit integer mode")
                }
            case YicesNonIncrSolverMode() =>
                config.integerMode() match {
                    case MathIntegerMode() =>
                        new SMTSolver("Yices-nonIncr", new SMTInit(QF_NIRA, List(MODELS)))
                    case BitIntegerMode() =>
                        sys.error(s"TraceRefinement: Yices-nonIncr not supported in bit integer mode")
                }
            case Z3SolverMode() =>
                config.integerMode() match {
                    case MathIntegerMode() =>
                        new SMTSolver("Z3", new SMTInit(AUFNIRA, List(INTERPOLANTS, MODELS)))
                    case BitIntegerMode() =>
                        new SMTSolver("Z3", new SMTInit(QF_ABV, List(INTERPOLANTS, MODELS)))
                }
        }
    }

    /**
     * Implement the refinement loop for the given function, optionally
     * returning a failure trace that is feasible and demonstrates how the
     * program is incorrect.
     */
    def traceRefinement(ir : Verifiable) : Try[Option[FailureTrace]] = {

        // val functionLang = Lang(function.nfa)

        // Get a solver specification as per configuration options. This
        // object creation does not spawn any process merely declare a solver
        // type we want to use
        def selectedSolver = {
            config.solverMode() match {
                case BoolectorSolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            sys.error(s"TraceRefinement: Boolector not supported in math integer mode")
                        case BitIntegerMode() =>
                            new SMTSolver("Boolector", new SMTInit(QF_ABV, List(MODELS)))
                    }
                case CVC4SolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new SMTSolver("CVC4", new SMTInit(QF_AUFLIRA, List(MODELS)))
                        case BitIntegerMode() =>
                            new SMTSolver("CVC4", new SMTInit(QF_ABV, List(MODELS)))
                    }
                case SMTInterpolSolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new SMTSolver("SMTInterpol", new SMTInit(QF_AUFLIA, List(INTERPOLANTS, MODELS)))
                        case BitIntegerMode() =>
                            sys.error(s"TraceRefinement: SMTInterpol not supported in bit integer mode")
                    }
                case YicesSolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new SMTSolver("Yices", new SMTInit(QF_AUFLIRA, List(MODELS)))
                        case BitIntegerMode() =>
                            sys.error(s"TraceRefinement: Yices not supported in bit integer mode")
                    }
                case YicesNonIncrSolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new SMTSolver("Yices-nonIncr", new SMTInit(QF_NIRA, List(MODELS)))
                        case BitIntegerMode() =>
                            sys.error(s"TraceRefinement: Yices-nonIncr not supported in bit integer mode")
                    }
                case Z3SolverMode() =>
                    config.integerMode() match {
                        case MathIntegerMode() =>
                            new SMTSolver("Z3", new SMTInit(AUFNIRA, List(INTERPOLANTS, MODELS)))
                        case BitIntegerMode() =>
                            new SMTSolver("Z3", new SMTInit(QF_ABV, List(INTERPOLANTS, MODELS)))
                    }
            }
        }

        // cfgLogger.debug(toDot(function.nfa, s"${function.name} initial"))

        /*
         *  The recursive definition of the trace refinement algorithm
         */
        @tailrec
        def refineRec(r : NFA[Int, Choice], iteration : Int) : Try[Option[FailureTrace]] = {

            logger.info(s"${ir.name} iteration $iteration")
            // cfgLogger.debug(toDot(toDetNFA(function.nfa - r)._1, s"${function.name} iteration $iteration"))

            ir.getErrorTrace(r) match {

                // No failure trace in the language, so there are no failure traces.
                case None =>
                    logger.info(s"${ir.name} has no failure traces")
                    Success(None)

                /*
                 * Found a potential failure trace given by trace. We
                 * need to check if it's feasible. If so, it's a real failure.
                 * If not, refine and try again.
                 */
                case Some(trace) =>

                    logger.info(s"${ir.name} has a candidate failure trace")
                    logger.debug(s"failure trace is (Thread,Branch): ${trace}")

                    /*
                     * Get the ScalaSMT terms that describe the meaning of the operations
                     * that would be executed. If an empty collection of terms is returned,
                     * sanitise it to "true", otherwise join the components using
                     * conjunction.
                     */
                    val traceTerms = ir.traceToTerms(trace)

                    for (i <- 0 until traceTerms.length) {
                        val term = traceTerms(i)
                        logger.debug(s"trace effect $i: ${showTerm(term.termDef)}")
                        logger.debug(s"trace vars $i: ${term.typeDefs.map(showTerm(_))}")
                    }

                    // Check satisfiability and if Sat, get model values
                    val result = runSolver(selectedSolver, traceTerms)

                    // Check to see if the trace is feasible.
                    result match {

                        case Success((Sat(), values)) =>
                            logger.info(s"failure trace is feasible, program is incorrect")
                            // for (x <- ir.sortIds(values.keys.toVector)) {
                            //     logger.debug(s"value: $x = ${values(x).show}")
                            // }
                            val failTrace = FailureTrace(trace, values)
                            Success(Some(failTrace))

                        case Success((UnSat(), _)) =>
                            /*
                             * No, infeasible. That trace can't occur in a program
                             * execution. If we've got iterations to spare, try
                             * again after removing the infeasible trace (and perhaps
                             * other traces that fail for related reasons).
                             */
                            logger.info(s"the failure trace is not feasible")
                            if (iteration < config.maxIterations()) {
                                refineRec(
                                    toDetNFA(r + ir.buildRefinement(trace, Some(iteration.toString)))._1,
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
        refineRec(NFA[Int, Choice](Set(), Set(), Set()), 0)
    }
}
