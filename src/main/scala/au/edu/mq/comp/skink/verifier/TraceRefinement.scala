package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.ir.Trace
import au.edu.mq.comp.skink.SkinkConfig

/**
 * Implementation of the trace refinement process.
 */
class TraceRefinement(config : SkinkConfig) {

    //  NFA
    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.edge.Implicits._
    import au.edu.mq.comp.automat.lang.Lang
    import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    import au.edu.mq.comp.skink.Skink.{getLogger, toDot}

    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collect
    import scala.annotation.tailrec
    import scala.util.{Failure, Success, Try}

    //  SMTLIB
    import au.edu.mq.comp.smtlib.interpreters.{SMTLIB2Interpreter}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{Sat, UnSat, UnKnown, SatResponses}
    import au.edu.mq.comp.smtlib.parser.Analysis
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{QualifiedId, Term}
    import au.edu.mq.comp.smtlib.theories.BoolTerm
    import au.edu.mq.comp.smtlib.theories.PredefinedLogics._
    import au.edu.mq.comp.smtlib.configurations.Configurations._
    import au.edu.mq.comp.smtlib.theories.{Core, IntegerArithmetics}
    import au.edu.mq.comp.smtlib.typedterms.Commands
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, Value}
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

    /**
     * Build a failure trace out of the given trace and terms that describe
     * the trace effect. The failure trace will include the identifiers and
     * values for all of the variables that are mentioned in the terms.
     */
    def makeFailureTrace(
        trace : Trace,
        terms : Seq[TypedTerm[BoolTerm, Term]]
    ) : FailureTrace = {
        // val getids = collect {
        //     case id @ (QualifiedId(_, Some(_))) =>
        //         id
        // }
        val ids = terms
            .map(_.termDef)
            .flatMap { Analysis(_).ids }
        // val ids = getids(terms).toSet.toSeq
        // val values = ids match {
        //     case h +: t =>
        //         getValue(h, t)(solver)
        //     case _ =>
        //         Success(ValMap(Map.empty))
        // }
        FailureTrace(trace, ids, Success(Map[QualifiedId, Value]()))
    }

    /**
     * Implement the refinement loop for the given function, optionally
     * returning a failure trace that is feasible and demonstrates how the
     * program is incorrect.
     */
    def traceRefinement(function : IRFunction) : Try[Option[FailureTrace]] = {

        val functionLang = Lang(function.nfa)

        /*
         * get a solver specification. This object creation
         * does not spawn any process merely declare a solver type we want to use
         */
        val selectedSolver = new Z3 with QF_AUFLIA with Interpolants

        cfgLogger.debug(toDot(function.nfa, s"${function.name} initial"))

        @tailrec
        def refineRec(r : NFA[Int, Int], iteration : Int = 0) : Try[Option[FailureTrace]] = {

            logger.info(s"traceRefinement: ${function.name} iteration $iteration")
            cfgLogger.debug(toDot(toDetNFA(function.nfa - r), s"${function.name} iteration $iteration"))

            (functionLang \ Lang(r)).getAcceptedTrace match {

                /* No accepting trace in the language, so there are no failure traces. */
                case None =>
                    logger.info(s"traceRefinem  ent: ${function.name} has no failure traces")
                    Success(None)

                /*
                 * Found a potential failure trace given by the choices. We
                 * need to check if it's feasible. If so, it's a real failure.
                 * If not, refine and try again.
                 */
                case Some(choices) =>

                    logger.info(s"traceRefinement: ${function.name} has a failure trace")
                    logger.debug(s"traceRefinement: failure trace is: ${choices.mkString(", ")}")

                    /*
                     * Combine terms via conjunction, dealing with the case where
                     * are no terms so effect is "true".
                     */
                    def combineTerms(terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] =
                        if (terms.isEmpty)
                            True()
                        else
                            terms.reduceLeft(_ & _)

                    /*
                     * Get the SMTlib terms that describe the meaning of the operations
                     * that would be executed. If an empty collection of terms is returned,
                     * sanitise it to "true", otherwise join the components using
                     * conjunction.
                     */
                    val trace = Trace(choices)
                    val traceTerms = function.traceToTerms(trace).map(combineTerms)

                    for (i <- 0 until traceTerms.length) {
                        logger.debug(s"""traceRefinement: trace effect $i: ${showTerm(traceTerms(i).termDef)}""")
                    }

                    /* Build a single combined term for the trace effect */
                    val fullTerm = traceTerms.reduceLeft(_ & _)

                    /*
                     * a solver with spec selectedSolver is spawned and killed
                     * at the end of the using scope
                     */
                    val result = using(selectedSolver) {
                        implicit solver =>
                            isSat(traceTerms : _*)
                    }

                    // Check to see if the trace is feasible.
                    result match {

                        /*
                         * Yes, feasible. We've found a way in which the program
                         * can fail. Build the failure trace and return.
                         */
                        case Success(Sat()) =>
                            logger.info(s"traceRefinement: failure trace is feasible, program is incorrect")
                            val failTrace = makeFailureTrace(trace, traceTerms)
                            Success(Some(failTrace))

                        /*
                         * No, infeasible. That trace can't occur in a program
                         * execution. If we've got iterations to spare, try
                         * again after removing the infeasible trace (and perhaps
                         * other traces that fail for related reasons).
                         */
                        case Success(UnSat()) =>
                            logger.info(s"traceRefinement: the failure trace is not feasible")
                            if (iteration < config.maxIterations()) {
                                logger.info(s"traceRefinement: Computing refinement")
                                refineRec(
                                    toDetNFA(r + interpolantAuto(choices)),
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

        /* Start the refinement algorithm with no "ruled out" traces i.e. an empty NFA for the refinement . */
        refineRec(NFA[Int, Int](Set(), Set(), Set()))
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
