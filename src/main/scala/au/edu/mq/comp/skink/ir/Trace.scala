package au.edu.mq.comp.skink.ir

import scala.util.Try
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.SortedQId
import org.bitbucket.franck44.scalasmt.typedterms.Value

/**
 * A trace is given by a sequence of choices. The blocks visited by a trace
 * are implied by the choices to be the start block of the function, followed
 * by successor blocks given by the choices. E.g., if a block has two possible
 * paths to successor blocks, the index will be 0 or 1, indicating which of
 * the possible paths was taken in the trace.
 */
case class Trace(choices : Seq[Int]) {

    /**
     * Pretty print the sequence
     */
    def show = s"[${choices.size}] " + choices.mkString(" ")
}

/**
 * A feasible trace that leads to a program failure. `values` maps ids
 * from the trace to values.
 */
case class FailureTrace(trace : Trace, values : Map[SortedQId, Value])

/**
 * A description of a step in the execution of a trace for use in witness
 * generation. All of the values are optional since some may be missing in
 * a particular IR.
 */
case class Step(
    optFileName : Option[String],
    optBlockName : Option[String],
    optBlockCode : Option[String],
    optTermCode : Option[String],
    optTermLine : Option[Int])
