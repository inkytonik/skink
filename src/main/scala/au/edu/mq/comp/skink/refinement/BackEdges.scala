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
package au.edu.mq.comp.skink.refinement

import au.edu.mq.comp.skink.SkinkConfig
import org.bitbucket.franck44.scalasmt.interpreters.Resources
import org.bitbucket.franck44.scalasmt.theories.Core
import org.bitbucket.inkytonik.kiama.util.Source

trait BackEdges extends Core with Resources {

    import au.edu.mq.comp.skink.ir.{IRFunction, Trace}
    import au.edu.mq.comp.skink.Logger
    import au.edu.mq.comp.skink.verifier.Helper.{publishDot, toDot}
    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.automat.edge.Implicits._
    import org.bitbucket.franck44.automat.edge.LabDiEdge
    import org.bitbucket.franck44.automat.util.Determiniser.toDetNFA
    import org.bitbucket.franck44.scalasmt.interpreters.SolverCompose
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.inkytonik.kiama.util.StringSource
    import scala.util.{Failure, Success}

    def source : Source
    def config : SkinkConfig
    def repetitions : Seq[Seq[Int]]
    def strategy : SolverCompose.Parallel

    def logger : Logger
    def autoLogger : Logger

    def addBackEdges(
        baseAuto : NFA[Int, Int],
        function : IRFunction,
        choices : Seq[Int],
        terms : Seq[TypedTerm[BoolTerm, Term]],
        iteration : Int
    ) : Option[NFA[Int, Int]] = {

        logger.debug(source, s"trying to add back edges based on following terms:")
        for (term <- terms) {
            logger.debug(source, showTerm(term.termDef))
        }

        val newEdges = computeSafeBackEdges(function, choices, terms)

        if (newEdges.isEmpty) {

            logger.debug(source, "no back edges can be added")
            None

        } else {
            val newAuto = baseAuto.copy(transitions = baseAuto.transitions ++ newEdges)

            val newAutoDot = toDot(toDetNFA(newAuto)._1, s"iteration $iteration refinement automaton")
            autoLogger.debug(source, newAutoDot)
            if (config.server())
                publishDot(logger, source, StringSource(newAutoDot),
                    s"refinements|iteration $iteration|automaton",
                    config)

            Some(newAuto)
        }

    }

    /**
     * Provide a list of new edges that preserve infeasibility given the function
     * being analysed, an infeasible trace given by choices, and inductive
     * sequence of predicates.
     */
    def computeSafeBackEdges(
        function : IRFunction,
        choices : Seq[Int],
        preds : Seq[TypedTerm[BoolTerm, Term]]
    ) : Seq[LabDiEdge[Int, Int]] = {

        //  add the first and last trivial interpolants
        val completeItp = True() +: preds :+ False()

        //  Compute candidate backEdges from the indexPartition
        //  for each partition with more than 2 elements, build the candidate min, max
        val candidatePairs = repetitions.map(generatePairs(_)).flatten
        logger.debug(source, s"candidate pairs $candidatePairs")

        /**
         * Check if backedges can be added to the linear automaton
         * If there is a repetition of a block at index i and j, we
         * can try to add a backedge j -- choices(i) -> i + 1
         * For each set of repeated blocks, we try to add the first and closest
         * backedge. For instance if the a set is {1,4,7} (same block at index 1,4,7)
         * we try to add a backedge from 4 to 2 with choices(1)
         */
        for (
            (i, j) <- candidatePairs;
            x1 = completeItp(j).unIndexed;
            x2 = completeItp(i + 1).unIndexed;
            u = {
                logger.debug(source, s"checking backedge from $j to ${i + 1}")
                logger.debug(source, s"predicate at ${i + 1} is ${showTerm(x2.termDef)}")
                logger.debug(source, s"predicate at $j is ${showTerm(x1.termDef)}")
            };

            //  if computing interpolants is successful and checkPost inclusion
            //  is true add them to list
            res = using(strategy) {
                implicit solver =>
                    function.checkPost(
                        x1,
                        Trace(choices),
                        index = j,
                        choice = choices(i),
                        x2
                    )
            };
            uu = {
                logger.debug(source, s"result of checkPost $res")
                res match {
                    case Success(_) =>
                    case Failure(_) => sys.error(s"Result of checkPost $res")
                }
            };
            if (res == Success(true))
        ) yield {
            logger.debug(source, s"new backedge found from $j to ${i + 1} with choice ${choices(i)}")
            (j ~> (i + 1))(choices(i))
        }

    }

    /**
     * Given a sequence of repeated block locations, generate all of the possible
     * pair combinations.
     */
    def generatePairs(xl : Seq[Int]) : Seq[(Int, Int)] =
        xl match {
            case l if l.size < 2 =>
                Seq()
            case a +: xa =>
                xa.map((a, _)) ++ generatePairs(xa)
        }

}
