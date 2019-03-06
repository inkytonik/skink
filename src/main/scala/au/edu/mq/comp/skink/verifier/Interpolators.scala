/*
 * This file is part of Skink.
 *
 * Copyright (C) 2019
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

class Interpolators {

    import org.bitbucket.inkytonik.kiama.util.{Messaging, Positions, StringSource, Source}

    val positions = new Positions
    val messaging = new Messaging(positions)

    def interpolate[T](sc : StringContext, parser : Source => T)(args : Seq[Any]) : T = {
        val strings = sc.parts.iterator
        val expressions = args.iterator
        val buf = new StringBuilder(strings.next)
        while (strings.hasNext) {
            buf append expressions.next
            buf append strings.next
        }
        parser(new StringSource(buf.result()))
    }

}

object SMTLIB2Interpolators extends Interpolators {

    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Parser
    import org.bitbucket.inkytonik.kiama.util.Source
    import scala.util.{Failure, Success, Try}

    implicit class SMTLIB2InterpolatorHelper(val sc : StringContext) extends AnyVal {

        def term[T](args : Any*) : Term =
            interpolate(sc, parseTerm)(args)

    }

    def parseTerm[T](source : Source) : Term = {
        parseSMTLIB2(SMTLIB2Parser[Term], source)
    }

    def parseSMTLIB2[T](parser : Source => Try[Term], source : Source) : Term = {
        parser(source) match {
            case Success(term) =>
                term
            case Failure(e) =>
                throw e
        }
    }

}
