/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2019
 * Programming Languages and Verification Research Group
 * Macquarie University
 *
 * Skink is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Skink is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * See COPYING and COPYING.LESSER for full license terms.
 * More information at http://www.gnu.org/licenses.
 */

package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.ir.IR
import au.edu.mq.comp.skink.SkinkConfig
import org.bitbucket.inkytonik.kiama.util.Source

/**
 * Implementation of the trace refinement process.
 */
class TraceRefinement(source : Source, ir : IR, config : SkinkConfig) {

    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.automat.lang.Lang
    import org.bitbucket.franck44.automat.util.Determiniser.toDetNFA
    import au.edu.mq.comp.skink.{Bit, Math, NumberMode}
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import au.edu.mq.comp.skink.refinement.{Craig, Newton}
    import au.edu.mq.comp.skink.verifier.Helper.{LengthFirstStringOrdering, publishDot, termToCValueString, toDot}
    import org.bitbucket.inkytonik.kiama.util.StringSource
    import scala.annotation.tailrec
    import scala.util.{Failure, Success, Try}

    import org.bitbucket.franck44.automat.edge.Implicits._
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.show
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.configurations.SMTLogics._
    import org.bitbucket.franck44.scalasmt.configurations.SMTOptions._
    import org.bitbucket.franck44.scalasmt.configurations.SMTInit
    import org.bitbucket.franck44.scalasmt.typedterms.{Commands, Named, TypedTerm, Value}
    import org.bitbucket.franck44.scalasmt.interpreters.{Resources, SolverCompose}

    case class ValMap(m : Map[QualifiedId, Value])

    object Cmds extends Commands
    import Cmds._

    object resources extends Resources
    import resources._

    val logger = getLogger(this.getClass, config)
    val cfgLogger = getLogger(this.getClass, config, ".cfg")

    abstract class SolverResult
    case class SatSolverResult(count : Int, map : Map[String, Value]) extends SolverResult
    case class UnSatSolverResult(count : Int, core : Option[Set[Int]]) extends SolverResult

    // The naming done by nameTerms must be undone by unnameNames.
    // E.g., if a term gets named P4 then the unnaming should give 4.

    def nameTerms(terms : Seq[(TypedTerm[BoolTerm, Term], Boolean)]) : Seq[(Named[BoolTerm, NamedTerm], Boolean)] =
        for {
            ((term, flag), index) <- terms.zipWithIndex
        } yield (term.named(s"P$index"), flag)

    def namesToIndices(names : Set[String]) : Set[Int] =
        names.map(_.drop(1).toInt)

    /**
     * Run the given solvers in parallel to see if the given terms are satisifiable. If so,
     * return `Sat()`, a count and a map. Prefixes of the terms sequence are checked in
     * order of increasing length. If a prefix is found to be unsatisfiable, then the
     * process stops, since longer prefixes will also be unsatisfiable. The first solver
     * that succeeds provides the result. Unknown responses are ignored unless all solvers
     * return that result.
     *
     * The solver result gives:
     * - a count that says how many prefix terms in the input sequence were used to determine
     * the result
     * - if Sat: a map that relates ids from the terms to their values
     * - if UnSat: a list of the indexes of the terms that comprise the unsat core, if one
     * is available
     */
    def runSolvers(
        strategy : SolverCompose.Parallel,
        terms : Seq[(TypedTerm[BoolTerm, Term], Boolean)]
    ) : Try[SolverResult] =
        using(strategy) {
            implicit solver =>
                val namedTerms = nameTerms(terms)
                isSatWithAssertWhileSat(Some(config.solverTimeOut()))(0, true, namedTerms : _*) match {
                    case (Success(Sat()), count) =>
                        val map =
                            getDeclCmd() match {
                                case Success(xs) =>
                                    xs.map {
                                        x => (show(x.id), getValue(TypedTerm(Set(x), QIdTerm(SimpleQId(x.id)))))
                                    }.collect {
                                        case (s, Success(v)) =>
                                            (s, v)
                                    }.toMap
                                case _ =>
                                    Map[String, Value]()
                            }
                        Success(SatSolverResult(count, map))

                    case (Success(UnSat()), count) =>
                        val core =
                            getUnsatCore() match {
                                case Success(names) =>
                                    Some(namesToIndices(names))
                                case Failure(f) =>
                                    None
                            }
                        Success(UnSatSolverResult(count, core))

                    case (Success(UnKnown()), _) =>
                        Failure(new Exception(s"Solver ${solver.name} did not provide an answer (UNKNOWN)"))

                    case (Failure(e), _) =>
                        Failure(new Exception(s"Solver ${solver.name} failed: ${e.getMessage}"))
                }
        }

    /**
     * Implement the refinement loop for the given function, optionally
     * returning a failure trace that is feasible and demonstrates how the
     * program is incorrect.
     */
    def traceRefinement(function : IRFunction) : Try[Option[FailureTrace]] = {

        val functionLang = Lang(function.nfa)

        val models = List(SMTProduceModels(true))
        val modelsUnsatCore = SMTProduceUnsatCores(true) :: models

        def getSolver(numberMode : NumberMode)(solverName : String) : Option[SMTSolver] =
            (solverName, numberMode) match {
                case ("boolector", Bit()) =>
                    Some(new SMTSolver("Boolector", new SMTInit(QF_ABV, models)))
                case ("cvc4", Bit()) =>
                    Some(new SMTSolver("CVC4", new SMTInit(QF_ABV, modelsUnsatCore)))
                case ("cvc4", Math()) =>
                    Some(new SMTSolver("CVC4", new SMTInit(QF_AUFLIRA, modelsUnsatCore)))
                case ("mathsat", Bit()) =>
                    Some(new SMTSolver("MathSat", new SMTInit(QF_AFPBV, models)))
                case ("mathsat", Math()) =>
                    Some(new SMTSolver("MathSat", new SMTInit(QF_AUFLIRA, modelsUnsatCore)))
                case ("smtinterpol", Math()) =>
                    Some(new SMTSolver("SMTInterpol", new SMTInit(QF_AUFLIA, modelsUnsatCore)))
                case ("yices", Bit()) =>
                    Some(new SMTSolver("Yices", new SMTInit(QF_ABV, modelsUnsatCore)))
                case ("yices", Math()) =>
                    Some(new SMTSolver("Yices", new SMTInit(QF_AUFLIRA, modelsUnsatCore)))
                case ("z3", Bit()) =>
                    Some(new SMTSolver("Z3", new SMTInit(QF_ABV, modelsUnsatCore)))
                case ("z3-fpbv", Bit()) =>
                    Some(new SMTSolver("Z3", new SMTInit(QF_FPBV, modelsUnsatCore)))
                case ("z3", Math()) =>
                    Some(new SMTSolver("Z3", new SMTInit(AUFNIRA, modelsUnsatCore)))
                case _ =>
                    None
            }

        // Combine the solvers with the number modes. If there are the same number of solvers and
        // modes, then they are paired in order. If there are more solvers than modes, then
        // the last mode is repeated for the remainder. If there are more modes than solvers, then
        // the excess modes are ignored.

        logger.info(source, s"solvers requested: ${config.solvers()}")
        logger.info(source, s"number mode: ${config.numberMode()}")

        val solverNames = config.solvers().split(',').toList
        if (solverNames.isEmpty)
            sys.error("traceRefinement: unexpectedly got an empty solvers list")

        // Create solver objects (does not create the solver instances)
        val solvers = solverNames.map(getSolver(config.numberMode())).flatten

        // If none of the solver x mode combinations is supported, we can't do anything
        if (solvers.isEmpty) {
            val msg = s"solvers not supported: ${config.solvers()} in ${config.numberMode()} mode"
            logger.error(source, msg)
            sys.error(msg)
        }

        logger.info(source, s"""solvers enabled: ${solvers.map(_.name).mkString(", ")}""")

        // Combine the solvers together in parallel
        val parallelSolvers = SolverCompose.Parallel(solvers, Some(config.solverTimeOut()))

        val initialNFADot = toDot(function.nfa, s"${function.name} initial")
        cfgLogger.debug(source, initialNFADot)
        if (config.server())
            publishDot(cfgLogger, source, StringSource(initialNFADot), s"refinements|initial automaton", config)

        @tailrec
        def refineRec(r : NFA[Int, Int], iteration : Int) : Try[Option[FailureTrace]] = {

            /**
             * Given a trace that can fail and the values of variables on that trace,
             * succeed with the failure trace.
             */
            def succeed(trace : Trace, values : Map[String, Value]) : Try[Option[FailureTrace]] = {
                logger.info(source, s"failure trace is feasible, program is incorrect")
                for (x <- ir.sortIds(values.keys.toVector)(LengthFirstStringOrdering)) {
                    val term = values(x).t
                    val (value, note) = termToCValueString(term)
                    logger.debug(source, s"value: $x = ${show(term)} $note")
                }
                Success(Some(FailureTrace(trace, values)))
            }

            /**
             * Refine by computing an automaton to add to the existing refinement.
             * We try the Newton approach, then Craig interpolants from solvers,
             * then fall back to the simple linear automaton.
             */
            def refine(
                choices : Seq[Int],
                traceTerms : Seq[(TypedTerm[BoolTerm, Term], Boolean)],
                count : Int,
                iteration : Int,
                optCore : Option[Set[Int]]
            ) : NFA[Int, Int] = {
                val linearAuto = makeLinearAuto(choices)

                logger.info(source, s"linear automaton built")
                if (config.server()) {
                    val linearAutoDot = toDot(linearAuto, s"${function.name} iteration $iteration linear automaton")
                    publishDot(logger, source, StringSource(linearAutoDot), s"refinements|iteration $iteration|linear automaton", config)
                }

                val repetitions = function.traceToRepetitions(Trace(choices))
                logger.debug(source, s"repetitions $repetitions");

                if (repetitions.isEmpty) {
                    logger.info(source, "no repetitions in trace, return linear automaton")
                    linearAuto
                } else {
                    val usedChoices = choices.take(count)
                    val usedTerms = traceTerms.take(count).map(_._1)

                    logger.info(source, s"$count choices of ${choices.length} used for UnSat prefix")
                    logger.info(source, "trying Newton method for refinement")
                    val newton = new Newton(source, config, repetitions)

                    newton.auto(linearAuto, function, usedChoices, usedTerms, optCore, iteration) match {
                        case Some(auto) =>
                            logger.info(source, "Newton method succeeded")
                            auto

                        case None =>
                            logger.info(source, "Newton method failed, trying Craig interpolants")
                            val craig = new Craig(source, config, repetitions)
                            craig.auto(linearAuto, function, usedChoices, usedTerms, iteration) match {
                                case Some(auto) =>
                                    logger.info(source, "Craig method succeeded")
                                    auto

                                case None =>
                                    logger.info(source, "Craig method failed, falling back to linear automaton")
                                    linearAuto
                            }
                    }
                }
            }

            val refinedNFA = function.nfa - r
            val refinedNFADot = toDot(toDetNFA(refinedNFA)._1, s"${function.name} iteration $iteration")

            logger.info(source, s"${function.name} iteration $iteration")
            cfgLogger.debug(source, refinedNFADot)
            if (config.server())
                publishDot(logger, source, StringSource(refinedNFADot), s"refinements|iteration $iteration|automaton", config)

            (functionLang \ Lang(r)).getAcceptedTrace match {

                // No accepting trace in the language, so there are no failure traces.
                case None =>
                    logger.info(source, s"${function.name} has no failure traces")
                    Success(None)

                // Found a potential failure trace given by the choices. We
                // need to check if it's feasible. If so, it's a real failure.
                // If not, refine and try again.
                case Some(choices) =>

                    logger.info(source, s"${function.name} has a failure trace")
                    logger.debug(source, s"failure trace is: ${choices.mkString(", ")}")

                    /*
                     * Get the SMTlib terms that describe the meaning of the operations
                     * that would be executed. If an empty collection of terms is returned,
                     * sanitise it to "true", otherwise join the components using
                     * conjunction.
                     */
                    val trace = Trace(choices :+ 0, iteration)
                    val traceTerms = function.traceToTerms(trace)

                    for (i <- 0 until traceTerms.length) {
                        val (term, flag) = traceTerms(i)
                        logger.debug(source, s"trace effect $i: ${show(term.termDef)}")
                        logger.debug(source, s"trace flag $i: $flag")
                        logger.debug(source, s"trace vars $i: ${term.typeDefs.map(show(_))}")
                    }

                    // Check satisfiability and if Sat, get model values
                    val result = runSolvers(parallelSolvers, traceTerms)

                    // Check to see if the trace is feasible.
                    result match {
                        // Yes, feasible, program is incorrect.
                        case Success(SatSolverResult(_, values)) =>
                            succeed(trace, values)

                        // No, infeasible. If we've exhausted the iteration count, fail.
                        case Success(_) if iteration >= config.maxIterations() =>
                            Failure(new Exception(s"maximum number of iterations ${config.maxIterations()} reached"))

                        // Otherwise, remove as many traces as we can based on this one, continue.
                        case Success(UnSatSolverResult(count, optCore)) =>
                            val refinement = refine(choices, traceTerms, count, iteration, optCore)
                            refineRec(toDetNFA(r + refinement)._1, iteration + 1)

                        case status =>
                            Failure(new Exception(s"strange solver status: $status"))
                    }
            }

        }

        // Start the refinement algorithm with no "ruled out" traces.
        refineRec(NFA[Int, Int](Set(), Set(), Set()), 0)
    }

    /**
     * Make a linear automaton for the given trace choices.
     */
    def makeLinearAuto(choices : Seq[Int]) : NFA[Int, Int] = {
        val transitions =
            for (i <- 0 until choices.length)
                yield (i ~> (i + 1))(choices(i))
        NFA(Set(0), transitions.toSet, Set(choices.length), Set(choices.length))
    }

}
