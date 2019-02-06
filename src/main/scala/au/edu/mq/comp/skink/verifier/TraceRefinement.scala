/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
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

/**
 * Implementation of the trace refinement process.
 */
class TraceRefinement(ir : IR, config : SkinkConfig) {

    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.automat.lang.Lang
    import org.bitbucket.franck44.automat.util.Determiniser.toDetNFA
    import au.edu.mq.comp.skink.{
        Boolector,
        CVC4,
        MathSat,
        SMTInterpol,
        Yices,
        YicesNonIncr,
        Z3
    }
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    import au.edu.mq.comp.skink.Skink.{getLogger, toDot}
    import au.edu.mq.comp.skink.verifier.Helper.termToCValueString
    import scala.annotation.tailrec
    import scala.util.{Failure, Success, Try}

    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.show
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.configurations.SMTLogics._
    import org.bitbucket.franck44.scalasmt.configurations.SMTOptions._
    import org.bitbucket.franck44.scalasmt.configurations.SMTInit
    import org.bitbucket.franck44.scalasmt.typedterms.Commands
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, Value}
    import org.bitbucket.franck44.scalasmt.interpreters.Resources
    import org.bitbucket.franck44.scalasmt.interpreters.SolverCompose

    case class ValMap(m : Map[QualifiedId, Value])

    object Cmds extends Commands
    import Cmds._

    object resources extends Resources
    import resources._

    val logger = getLogger(this.getClass)
    val cfgLogger = getLogger(this.getClass, ".cfg")

    /**
     * Run the given solver to see if the given terms are satisifiable. If so,
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
                                    x => (show(x.id), getValue(TypedTerm(Set(x), QIdTerm(SimpleQId(x.id)))))
                                }.collect {
                                    case (s, Success(v)) =>
                                        (s, v)
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
     * Run the given solvers in parallel to see if the given terms are satisifiable. If so,
     * return `Sat()` and a map that relates ids from the terms to their values.
     * If the term is not satisfiable, return `UnSat()` and an empty map.
     * The first solver that succeeds (returns a success) provides the result.
     * Hence we have to filter out the Unknow() SatResponse in the script as, if it succeeds,
     * it could prevent other solvers from completing their jobs.
     */
    def runSolvers(
        strategy : SolverCompose.Parallel,
        terms : Seq[TypedTerm[BoolTerm, Term]]
    ) : Try[(SatResponses, Map[String, Value])] =
        using(strategy) {
            implicit solver =>
                isSat(config.solverTimeOut())(terms : _*) match {
                    case Success(Sat()) =>
                        getDeclCmd() match {
                            case Success(xs) =>
                                val map = xs.map {
                                    x => (show(x.id), getValue(TypedTerm(Set(x), QIdTerm(SimpleQId(x.id)))))
                                }.collect {
                                    case (s, Success(v)) =>
                                        (s, v)
                                }.toMap
                                Success((Sat(), map))
                            case _ =>
                                Success((Sat(), Map()))
                        }
                    case Success(UnSat()) =>
                        Success((UnSat(), Map()))

                    case other => Failure(new Exception(s"Solver ${solver.name} did not provide an answer"))
                }
        }

    /**
     * Implement the refinement loop for the given function, optionally
     * returning a failure trace that is feasible and demonstrates how the
     * program is incorrect.
     */
    def traceRefinement(function : IRFunction) : Try[Option[FailureTrace]] = {

        val functionLang = Lang(function.nfa)

        /**
         * Get the user-specified solvers and create solver objects (does not
         * create the solver instances).
         */
        val solvers =
            config.solvers().map {
                case Boolector() =>
                    new SMTSolver("Boolector", new SMTInit(QF_ABV, List(SMTProduceModels(true))))
                case CVC4() =>
                    new SMTSolver("CVC4", new SMTInit(QF_ABV, List(SMTProduceModels(true))))
                case MathSat() =>
                    new SMTSolver("MathSat", new SMTInit(QF_AFPBV, List(SMTProduceModels(true))))
                case SMTInterpol() =>
                    sys.error(s"TraceRefinement: SMTInterpol not supported")
                case Yices() =>
                    sys.error(s"TraceRefinement: Yices not supported")
                case YicesNonIncr() =>
                    sys.error(s"TraceRefinement: Yices-nonIncr not supported")
                case Z3() =>
                    new SMTSolver("Z3", new SMTInit(QF_FPBV, List(SMTProduceInterpolants(true), SMTProduceModels(true))))
            }

        val parallelSolvers = SolverCompose.Parallel(solvers, Some(config.solverTimeOut()))

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
                        val term = traceTerms(i)
                        logger.debug(s"trace effect $i: ${show(term.termDef)}")
                        logger.debug(s"trace vars $i: ${term.typeDefs.map(show(_))}")
                    }

                    // Check satisfiability and if Sat, get model values
                    // val result = runSolver(selectedSolver, traceTerms)
                    val result = runSolvers(parallelSolvers, traceTerms)

                    // Check to see if the trace is feasible.
                    result match {

                        // Yes, feasible. We've found a way in which the program
                        // can file. Build the failure trace and return.
                        case Success((Sat(), values)) =>
                            logger.info(s"failure trace is feasible, program is incorrect")
                            for (x <- ir.sortIds(values.keys.toVector)(LengthFirstStringOrdering)) {
                                val term = values(x).t
                                val (value, note) = termToCValueString(term)
                                logger.debug(s"value: $x = ${show(term)} $value $note")
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
