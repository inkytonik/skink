package au.edu.mq.comp.skink.ir

/**
 * Interface for a trace refinable program.
 *
 */
trait Verifiable {
    import au.edu.mq.comp.skink.ir.{Choice, Trace, FailureTrace, Step, NonDetCall}
    import org.bitbucket.franck44.automat.auto.{NFA, DetAuto}
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term

    /**
     * The name of this program.
     */
    def name : String

    /**
     * Return `None` if this function actually is amenable to verification.
     * A function might not be amenable to verification if some pre-processing
     * is necessary but it didn't work. If verification is not possible, a
     * message is returned that can be displayed to the user. By default
     * this method always returns `None`.
     */
    def isVerifiable() : Option[String]

    /**
     * Return SMTlib terms that express the effect of the given trace for
     * this verifiable. Each element of the outer sequence contains the terms
     * that together describe effect of a single trace step. The inner
     * sequences collect terms that express the effect of each block
     * that appears in the trace.
     */
    def traceToTerms(trace : Trace) : Seq[TypedTerm[BoolTerm, Term]]

    /**
     * Return descriptions of the steps taken by a failure trace for use
     * in witness generation.
     */
    def traceToSteps(failTrace : FailureTrace) : Seq[Step]

    /**
     * Given a trace, return one list element for each block in that trace
     * (in no defined order). The set for a block contains the indices in the
     * trace at which that block appears. E.g., `List(Set(0),Set(1,3),Set(2))`
     * means that one block occurs only at position 0, one at position 2 and
     * a third block occurs at positions 1 and 3.
     *
     * When comparing blocks it is the effect of that block at that point of the
     * trace that matters, not just the identity of the block.
     */
    def traceToRepetitions(trace : Trace) : Seq[Seq[Int]]

    /**
     * Return the values that are returned by `__VERIFIER_nondet_T` functions in
     * the given failure trace of this function. Each element of the list result
     * gives the type of value returned by a call and the (optional) value returned.
     * The order reflects the order in which the trace performs these calls. A
     * value returned or `None` indicates that the value is unknown.
     */
    def traceToNonDetValues(failTrace : FailureTrace) : List[NonDetCall]

    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import scala.util.Try
    /**
     *  Check that the image of a precondition is included in a postcondition
     *
     * @param     pre         the precondition over a set of prgram variables `V`
     * @param     blockTerm   an SSA term that encodes the semantics of a
     *                        sequence of instructions
     * @param     post        the postcondition over a set of program variables `v`
     */
    def checkPost(
        pre : TypedTerm[BoolTerm, Term],
        trace : Trace,
        index : Int,
        choice : Int,
        post : TypedTerm[BoolTerm, Term]
    )(
        implicit
        solver : SMTSolver
    ) : Try[Boolean]

    /**
     * Build a refinement automaton from an infeasible error trace.
     *
     * @param   trace   A infeasible trace (sequence of choices)
     * @param   info    Some text that can be used for logging
     *
     * @return          An automaton that accepts trace and other traces
     *                  that are infeasible.
     */
    def buildRefinement(
        trace : Trace,
        info : Option[String] = None
    ) : NFA[_, Choice]

    /**
     * Return an error trace if any.
     *
     * @param   r   A refinement
     * @return      An error trace not in the refinement.
     */
    def getErrorTrace(r : NFA[_, Choice]) : Option[Trace]

    /**
     * Sort IR ids into a useful order of display to the user.
     */
    def sortIds(ids : Vector[String]) : Vector[String] = ids.sorted
}
