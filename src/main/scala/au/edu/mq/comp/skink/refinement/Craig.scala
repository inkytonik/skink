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
import org.bitbucket.franck44.scalasmt.typedterms.Commands
import org.bitbucket.inkytonik.kiama.util.Source

/**
 * Support for computing automata based on Craig interpolants provided by Z3.
 */
class Craig(
    val source : Source,
    val config : SkinkConfig,
    val repetitions : Seq[Seq[Int]]
) extends BackEdges with Commands {

    import au.edu.mq.comp.skink.ir.IRFunction
    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.scalasmt.configurations.SMTInit
    import org.bitbucket.franck44.scalasmt.configurations.SMTOptions._
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{Term, UnSat}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import scala.util.{Failure, Success, Try}

    val logger = getLogger(this.getClass, config)
    val autoLogger = getLogger(this.getClass, config, ".dot")

    def auto(
        linearAuto : NFA[Int, Int],
        function : IRFunction,
        choices : Seq[Int],
        terms : Seq[TypedTerm[BoolTerm, Term]],
        iteration : Int,
        fromEnd : Boolean = false
    ) : Option[NFA[Int, Int]] = {

        logger.info(source, s"trying to compute Craig interpolants, fromEnd=$fromEnd")

        getCraigInterpolants(terms, fromEnd) match {
            case Success(terms) =>
                logger.info(source, s"solver computed Craig interpolants")
                addBackEdges(linearAuto, function, choices, terms, iteration)

            case Failure(f) =>
                logger.info(source, s"solver could not compute Craig interpolants $f")
                None
        }

    }

    def getCraigInterpolants(
        terms : Seq[TypedTerm[BoolTerm, Term]],
        fromEnd : Boolean
    ) : Try[Seq[TypedTerm[BoolTerm, Term]]] = {

        //  make NamedTerms with an index
        val namedTerms = for { (tt, n) ← terms.zipWithIndex } yield tt.named("P" + n)

        //  depending on order we want use for the predicates we reverse namedTerms or not
        val orderedTerms = if (fromEnd) namedTerms.reverse else namedTerms
        logger.debug(source, s"ordered trace [$fromEnd] terms are: ${orderedTerms.map(_.termDef).map(showTerm(_)).mkString("\n")}")

        /**
         * the following returns n - 1 interpolants for n terms
         * To make n + 1 use True fr the first one, and False for the last one.
         */
        using(new SMTSolver("Z3", new SMTInit(List(SMTProduceInterpolants(true))))) {
            implicit solver =>
                isSat(orderedTerms : _*) match {

                    //  should be UnSat()
                    case Success(UnSat()) =>
                        assert(orderedTerms.size >= 2)
                        logger.debug(source, s"Solver returned UnSat as expected")

                        //  now get interpolants
                        getInterpolants(orderedTerms.head, orderedTerms.tail.head, orderedTerms.drop(2) : _*) match {
                            case Success(inductiveItp) =>
                                Success(if (fromEnd) inductiveItp.reverse else inductiveItp)

                            case Failure(f) => Failure(f)
                        }

                    //  if not UnSat, log the result and exit
                    case Success(other) =>
                        logger.error(source, s"Solver did not return UnSat while computing interpolants: $other")
                        sys.error(s"Computation of interpolant automaton failed. Solver returned $other")

                    case Failure(f) =>
                        logger.error(source, s"Solver failed to determine sat-status in InterpolantAuto $f")
                        sys.error(s"Solver failed to determine sat-status in InterpolantAuto $f")
                }
        }

    }

}
