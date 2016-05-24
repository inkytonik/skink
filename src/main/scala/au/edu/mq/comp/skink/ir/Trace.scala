package au.edu.mq.comp.skink.ir

import scala.util.Try
import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.QualifiedId
import au.edu.mq.comp.smtlib.typedterms.Value

/**
 * A trace is given by a sequence of choices. The blocks visited by a trace
 * are implied by the choices to be the start block of the function, followed
 * by successor blocks given by the choices. E.g., if a block has two possible
 * paths to successor blocks, the index will be 0 or 1, indicating which of
 * the possible paths was taken in the trace.
 */
case class Trace(choices : Seq[Int])

/**
 * A feasible trace that leads to a program failure. `values`, if
 * present, reports on the values that lead to the failure. It
 * may contain entries for the identifiers in `ids` but may not
 * map them all.
 */
case class FailureTrace(trace : Trace, ids : Seq[QualifiedId],
    values : Try[Map[QualifiedId, Value]])

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
    optTermLine : Option[Int]
)
