package au.edu.mq.comp.skink.ir

import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.SortedQId
import org.bitbucket.franck44.scalasmt.typedterms.Value

/**
 * A State is defined by the state of each thread. E.g.  Map(0 -> "b0", 1 -> "b7")
 * represents a state where thread 0 is in block b0 and thread 1 is in b7.
 */
case class State(threadLocs : Map[Int, String])

/**
 * A choice is defined by the id of the program thread to which it belongs
 * and the index of the branch chosen on that thread. Eg. Choosing the
 * second branch (1) on the main thread (with id 0) is represented by
 * Choice(0, 1).
 */
case class Choice(threadId : Int, branchId : Int)

/**
 * A trace is given by a sequence of choices. The blocks visited by a trace
 * are implied by the choices to be the start block of the function, followed
 * by successor blocks given by the choices. E.g., if a block has two possible
 * paths to successor blocks, the index will be 0 or 1, indicating which of
 * the possible paths was taken in the trace.
 * @todo franck: do we need to keep Trace? Seq[Choice] seems more appropriate now as
 * some methods use Choice instead of Int.
 */
case class Trace(choices : Seq[Choice]) {

    /**
     * Pretty print the sequence
     */
    def show = s"[${choices.size}] " + choices.mkString(" ")

}

/**
 * A feasible trace that leads to a program failure. `values` maps ids
 * from the trace to values.
 */
case class FailureTrace(trace : Trace, values : Map[String, Value])

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
/**
 * A description of a call to a `nondet` function in the execution of
 * a trace for use in witness generation. Included are the type of
 * the call (e.g., "int", "uint" or "float"), an optional value that
 * was returned by the call, optional source code for the call, and
 * an optional line number at which the call occurs.
 */
case class NonDetCall(
    tipe : String,
    optValue : Option[Value],
    optCode : Option[String],
    optLine : Option[Int]
)
