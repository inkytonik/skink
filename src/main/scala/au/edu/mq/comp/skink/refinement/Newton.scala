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
import org.bitbucket.franck44.scalasmt.interpreters.SolverCompose
import org.bitbucket.franck44.scalasmt.typedterms.Commands
import org.bitbucket.inkytonik.kiama.util.Source

/**
 * Support for computing automata based on Newton method as described in "Craig vs
 * Newton in Software Model Checking" by Dietsch et al, ESEC/FSE 2017.
 */
class Newton(
    val source : Source,
    val config : SkinkConfig,
    val strategy : SolverCompose.Parallel,
    val repetitions : Seq[Seq[Int]]
) extends BackEdges with Commands {

    import au.edu.mq.comp.skink.ir.IRFunction
    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm

    val logger = getLogger(this.getClass, config)
    val autoLogger = getLogger(this.getClass, config, ".dot")

    def auto(
        linearAuto : NFA[Int, Int],
        function : IRFunction,
        choices : Seq[Int],
        terms : Seq[TypedTerm[BoolTerm, Term]],
        optCore : Option[Set[Int]],
        iteration : Int
    ) : Option[NFA[Int, Int]] = {

        logger.info(source, "trying to compute Newton predicates")

        optCore match {
            case None =>
                logger.info(source, "no unsat cores, stopping Newton")
                None

            case Some(core) =>
                logger.debug(source, s"""unsat core is terms: ${core.toSeq.sorted.mkString(" ")}""")

                logger.debug(source, "starting from terms:")
                for ((term, index) <- terms.zipWithIndex) {
                    logger.debug(source, s"$index: ${showTerm(term.termDef)}")
                }

                val coreTerms =
                    terms.zipWithIndex.map {
                        case (term, index) =>
                            if (core contains index)
                                term
                            else
                                True()
                    }

                val lastPost : TypedTerm[BoolTerm, Term] =
                    False()

                val emptyIndTerms : Vector[TypedTerm[BoolTerm, Term]] =
                    Vector()

                val (_, indTerms) =
                    coreTerms.foldRight((lastPost, emptyIndTerms)) {
                        case (term, (post, terms)) =>
                            val pre = wp(term, post)
                            (pre, pre +: terms)
                    }

                logger.debug(source, "inductive terms:")
                for ((term, index) <- indTerms.zipWithIndex) {
                    logger.debug(source, s"$index: ${showTerm(term.termDef)}")
                }

                addBackEdges(linearAuto, function, choices, indTerms, iteration)
        }

    }

    def wp(term : TypedTerm[BoolTerm, Term], post : TypedTerm[BoolTerm, Term]) : TypedTerm[BoolTerm, Term] =
        if (term == True())
            post
        else
            term.imply(post)

}
