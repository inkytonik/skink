package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation that can be analysed.
 */
trait IRVerifiable {

    import org.bitbucket.franck44.automat.auto.{DetAuto, NFA}
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term

    /**
     * The IR-level name of this IR.
     */
    def name : String

    /**
     * An NFA that represents the possible control flow of executions of
     * the function where final states represent failures. State labels
     * are not interpreted but are usually block names to aid logging.
     * Edges must be labelled with choice indices. See the documentation
     * of the `Trace` type for more detail on choices.
     */
    def nfa : DetAuto[_, Choice]

    /**
     * Return SMTlib terms that express the effect of the given trace for
     * this function. Each element of the outer sequence contains the terms
     * that together describe effect of a single trace step. The inner
     * sequences collect terms that express the effect of each block
     * that appears in the trace.
     */
    def traceToTerms(trace : Trace) : Seq[TypedTerm[BoolTerm, Term]]

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
     * Given a trace and an index of a block in that trace give the effect of that
     * block when leaving using the given choice. Also return a map from variable
     * names to the variable indices that apply at the end of the block.
     */
    def traceBlockEffect(trace : Trace, index : Int, choice : Int) : (TypedTerm[BoolTerm, Term], Map[String, Int])

    /**
     * Return descriptions of the steps taken by a failure trace for use
     * in witness generation.
     */
    def traceToSteps(failTrace : FailureTrace) : Seq[Step]

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
     * Return the values that are returned by `__VERIFIER_nondet_T` functions in
     * the given failure trace of this function. Each element of the list result
     * gives the type of value returned by a call and the (optional) value returned.
     * The order reflects the order in which the trace performs these calls. A
     * value returned or `None` indicates that the value is unknown.
     */
    def traceToNonDetValues(failTrace : FailureTrace) : List[NonDetCall]

    /**
     * Build a refinement automaton from an infeasible error trace.
     *
     * @param   trace   A trace that is not feasible
     * @param   info    Some text that can be used for logging
     *
     * @return          An automaton that accepts trace and other traces
     *                  that are infeasible.
     */
    def buildRefinement(
        trace : Seq[Choice],
        info : Option[String] = None
    ) : NFA[_, Choice]

    /**
     * Return an error trace if any.
     *
     * @param   r   A refinement
     * @return      An error trace not in the refinement.
     */
    def getErrorTrace(r : NFA[_, Choice]) = {
        import org.bitbucket.franck44.automat.lang.Lang

        (Lang(nfa) \ Lang(r)).getAcceptedTrace
    }

}
