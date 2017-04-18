package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation function.
 */
trait IRFunction {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.skink.ir.FailureTrace
    import au.edu.mq.comp.smtlib.typedterms.TypedTerm
    import au.edu.mq.comp.smtlib.theories.BoolTerm
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.Term

    /**
     * The IR-level name of this function.
     */
    def name : String

    /**
     * Return `None` if this function actually is amenable to verification.
     * A function might not be amenable to verification if some pre-processing
     * is necessary but it didn't work. If verification is not possible, a
     * message is returned that can be displayed to the user. By default
     * this method always returns `None`.
     */
    def isVerifiable() : Option[String] =
        None

    /**
     * An NFA that represents the possible control flow of executions of
     * the function where final states represent failures. State labels
     * are not interpreted but are usually block names to aid logging.
     * Edges must be labelled with choice indices. See the documentation
     * of the `Trace` type for more detail on choices.
     */
    def nfa : NFA[String, Int]

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

    import au.edu.mq.comp.smtlib.interpreters.ExtendedSMTLIB2Interpreter
    import scala.util.{Try, Success, Failure}
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
        solver : ExtendedSMTLIB2Interpreter
    ) : Try[Boolean]

}
