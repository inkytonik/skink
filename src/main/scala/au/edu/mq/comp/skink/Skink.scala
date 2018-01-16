/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
 * Franck Cassez, Anthony M. Sloane, Matthew Roberts.
 *
 * Skink is free software: you can redistribute it and/or modify it  under
 * the terms of the  GNU Lesser General Public License as published by the
 * Free Software Foundation,  either version 3 of the License, or (at your
 * option) any later version.
 *
 * Skink is distributed  in the hope  that it will  be useful, but WITHOUT
 * ANY WARRANTY;  without  even the implied   warranty  of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Skink.  (See files COPYING and  COPYING.LESSER.)  If not, see
 * <http://www.gnu.org/licenses/>.
 */

package au.edu.mq.comp.skink

/**
 * Generally useful functionality for all packages.
 */
object Skink {

    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.automat.util.DotConverter
    import org.bitbucket.franck44.dot.DOTPrettyPrinter
    import org.bitbucket.franck44.dot.DOTSyntax.{Attribute, Ident, StringLit}
    import com.typesafe.scalalogging.Logger
    import org.slf4j.LoggerFactory

    /**
     * Get a new logger whose name is formed from the name of the given
     * class with the suffix appended (default: no suffix).
     */
    def getLogger(clazz : Class[_], suffix : String = "") : Logger =
        Logger(LoggerFactory.getLogger(clazz.getName + suffix))

    /**
     * Utility method to convert an automta into DOT format.
     */
    def toDot[S, L](nfa : NFA[S, L], name : String) : String =
        DOTPrettyPrinter.show(
            DotConverter.toDot(
                nfa.copy(name = name),
                (b : S) => {
                    val label = Attribute("label", StringLit(b.toString))
                    val style =
                        Attribute("shape", if (nfa.getInit.contains(b))
                            Ident("circle")
                        else if (nfa.accepting.contains(b))
                            Ident("doublecircle")
                        else
                            Ident("oval"))
                    List(label, style)
                },
                (b : S) => '"' + b.toString + '"',
                (i : L) => i.toString
            )
        )

}
