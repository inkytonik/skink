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

package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation.
 */
trait IR {

    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.SortedQId

    /**
     * Execute this IR instance, returning the output produced and the exit
     * code where zero means a normal exit.
     */
    def execute() : (String, Int)

    /**
     * Return information about the functions in this IR instance.
     */
    def functions : Vector[IRFunction]

    /**
     * Return a pretty-printed version of this IR instance.
     */
    def show : String

    /**
     * Sort IR ids into a useful order of display to the user.
     */
    def sortIds(ids : Vector[String]) : Vector[String]

}
