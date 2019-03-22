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
    import au.edu.mq.comp.skink.{
        Boolector,
        CVC4,
        MathSat,
        Solver,
        SMTInterpol,
        Yices,
        YicesNonIncr,
        Z3
    }
    import au.edu.mq.comp.skink.{Bit, Math, NumberMode}
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import au.edu.mq.comp.skink.verifier.Helper.{publishDot, termToCValueString, toDot}
    import org.bitbucket.inkytonik.kiama.util.StringSource
    import scala.annotation.tailrec
    import scala.util.{Failure, Success, Try}

    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.show
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.configurations.SMTLogics._
    import org.bitbucket.franck44.scalasmt.configurations.SMTOptions._
    import org.bitbucket.franck44.scalasmt.configurations.SMTInit
    import org.bitbucket.franck44.scalasmt.typedterms.{Commands, TypedTerm, Value}
    import org.bitbucket.franck44.scalasmt.interpreters.{Resources, SolverCompose}

    case class ValMap(m : Map[QualifiedId, Value])

    object Cmds extends Commands
    import Cmds._

    object resources extends Resources
    import resources._

    val logger = getLogger(this.getClass, config)
    val cfgLogger = getLogger(this.getClass, config, ".cfg")

    /**
     * Run the given solvers in parallel to see if the given terms are satisifiable. If so,
     * return `Sat()`, a count and a map. Prefixes of the terms sequence are checked in
     * order of increasing length. If a prefix is found to be unsatisfiable, then the
     * process stops, since longer prefixes will also be unsatisfiable. The first solver
     * that succeeds provides the result. Unknown responses are ignored unless all solvers
     * return that result. If the term is not satisfiable, return `UnSat()` and an empty map.
     *
     * The map returned relates ids from the terms to their values. The count returned
     * says how many prefix terms in the input sequence were used to determine the result.
     */
    def runSolvers(
        strategy : SolverCompose.Parallel,
        terms : Seq[(TypedTerm[BoolTerm, Term], Boolean)]
    ) : Try[(SatResponses, Int, Map[String, Value])] =
        using(strategy) {
            implicit solver =>
                isSatWithAssertWhileSat(Some(config.solverTimeOut()))(0, true, terms : _*) match {
                    case (Success(Sat()), count) =>
                        getDeclCmd() match {
                            case Success(xs) =>
                                val map = xs.map {
                                    x => (show(x.id), getValue(TypedTerm(Set(x), QIdTerm(SimpleQId(x.id)))))
                                }.collect {
                                    case (s, Success(v)) =>
                                        (s, v)
                                }.toMap
                                (Success((Sat(), count, map)))
                            case _ =>
                                (Success((Sat(), count, Map())))
                        }

                    case (Success(UnSat()), count) =>
                        Success((UnSat(), count, Map()))

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

        logger.clear(source)
        cfgLogger.clear(source)

        val functionLang = Lang(function.nfa)

        val models = List(SMTProduceModels(true))
        val modelsAndInterpolants = SMTProduceInterpolants(true) :: models

        def getSolver(numberMode : NumberMode)(solver : Solver) : SMTSolver =
            (solver, numberMode) match {
                case (Boolector(), Bit()) =>
                    new SMTSolver("Boolector", new SMTInit(QF_ABV, models))
                case (CVC4(), Bit()) =>
                    new SMTSolver("CVC4", new SMTInit(QF_ABV, models))
                case (CVC4(), Math()) =>
                    new SMTSolver("CVC4", new SMTInit(QF_AUFLIRA, models))
                case (MathSat(), Bit()) =>
                    new SMTSolver("MathSat", new SMTInit(QF_AFPBV, models))
                case (MathSat(), Math()) =>
                    new SMTSolver("MathSat", new SMTInit(QF_AUFLIRA, models))
                case (SMTInterpol(), Math()) =>
                    new SMTSolver("SMTInterpol", new SMTInit(QF_AUFLIA, modelsAndInterpolants))
                case (Yices(), Math()) =>
                    new SMTSolver("Yices", new SMTInit(QF_AUFLIRA, models))
                case (YicesNonIncr(), Math()) =>
                    new SMTSolver("Yices-nonIncr", new SMTInit(QF_NIRA, models))
                case (Z3(), Bit()) =>
                    new SMTSolver("Z3", new SMTInit(QF_FPBV, modelsAndInterpolants))
                case (Z3(), Math()) =>
                    new SMTSolver("Z3", new SMTInit(AUFNIRA, modelsAndInterpolants))
                case (solver, mode) =>
                    sys.error(s"solver $solver with number mode $mode is not supported")
            }

        // Combine the solvers with the number modes. If there are the same number of solvers and
        // modes, then they are paired in order. If there are more solvers than modes, then
        // the last mode is repeated for the remainder. If there are more modes than solvers, then
        // the excess modes are ignored.

        val solverNames = config.solvers()
        if (solverNames.isEmpty)
            sys.error("traceRefinement: unexpectedly got an empty solvers list")

        logger.info(source, s"solvers: ${solverNames.mkString(" ")}")
        logger.info(source, s"number mode: ${config.numberMode()}")

        // Create solver objects (does not create the solver instances)
        val solvers = solverNames.map(getSolver(config.numberMode()))

        // Combine the solvers together in parallel
        val parallelSolvers = SolverCompose.Parallel(solvers, Some(config.solverTimeOut()))

        val initialNFADot = toDot(function.nfa, s"${function.name} initial")
        cfgLogger.debug(source, initialNFADot)
        if (config.server())
            publishDot(cfgLogger, source, StringSource(initialNFADot), s"refinements|initial automaton", config)

        @tailrec
        def refineRec(r : NFA[Int, Int], iteration : Int) : Try[Option[FailureTrace]] = {

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

                        // Yes, feasible. We've found a way in which the program
                        // can file. Build the failure trace and return.
                        case Success((Sat(), _, values)) =>
                            logger.info(source, s"failure trace is feasible, program is incorrect")
                            for (x <- ir.sortIds(values.keys.toVector)(LengthFirstStringOrdering)) {
                                val term = values(x).t
                                val (value, note) = termToCValueString(term)
                                logger.debug(source, s"value: $x = ${show(term)} $note")
                            }
                            val failTrace = FailureTrace(trace, values)
                            Success(Some(failTrace))

                        // No, infeasible. That trace can't occur in a program
                        // execution. If we've got iterations to spare, try
                        // again after removing the infeasible trace (and perhaps
                        // other traces that fail for related reasons).
                        case Success((UnSat(), count, _)) =>
                            logger.info(source, s"the failure trace is not feasible")
                            if (iteration < config.maxIterations()) {
                                val interpolantAuto = new interpolant.InterpolantAuto(source, config)
                                import interpolantAuto.buildInterpolantAuto
                                val usedChoices = choices.take(count)
                                val usedTerms = traceTerms.take(count).map(_._1)
                                refineRec(
                                    toDetNFA(r +
                                        (
                                            buildInterpolantAuto(function, usedChoices, usedTerms, iteration)
                                        // +
                                        // buildInterpolantAuto(function, choices, iteration, fromEnd = true)
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

    /*
     * An ordering that first works on string length, then within
     * each length on the value.
     */
    object LengthFirstStringOrdering extends Ordering[String] {
        def compare(a : String, b : String) =
            if (a.length == b.length)
                a.compare(b)
            else
                a.length - b.length
    }

}
