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

package au.edu.mq.comp.skink.ir

import org.bitbucket.franck44.scalasmt.typedterms.Value

/**
 * A trace is given by a sequence of choices and the number of the iteration
 * in which it occurred. The blocks visited by a trace are implied by the
 * choices to be the start block of the function, followed by successor
 * blocks given by the choices. E.g., if a block has two possible paths
 * to successor blocks, the index will be 0 or 1, indicating which of
 * the possible paths was taken in the trace. The iteration count
 * defaults to zero.
 */
case class Trace(choices : Seq[Int], iteration : Int = 0)

/**
 * A feasible trace that leads to a program failure. `values` maps ids
 * from the trace to values.
 */
case class FailureTrace(trace : Trace, values : Map[String, Value])

/**
 * A call to a __VERIFIER function. Possibly included are a value that
 * was returned by the call, source code, line number, and start and
 * finish offsets.
 */
sealed abstract class VerifierCall {
    def optValue : Option[Value] = None
    def optCode : Option[String] = None
    def optLine : Option[Int] = None
    def optOffsetStart : Option[Int] = None
    def optOffsetFinish : Option[Int] = None
}

/**
 * A description of a call to an `error` function in the execution of
 * a trace.
 */
case class ErrorCall() extends VerifierCall

/**
 * A description of a call to a `nondet` function in the execution of
 * a trace. Included is the type of the call (e.g., "int", "uint" or
 * "float").
 */
case class NonDetCall(tipe : String) extends VerifierCall
