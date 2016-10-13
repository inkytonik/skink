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

    // def traceToTerms2(trace : Trace) : Seq[TypedTerm[BoolTerm, Term]]

    /**
     * Return descriptions of the steps taken by a failure trace for use
     * in witness generation.
     */
    def traceToSteps(failTrace : FailureTrace) : Seq[Step]

    /**
     * Return the partition of indices grouped by blockNames.
     * @todo Add partition (grouping function)
     */
    def partitionWithNames(trace : Trace) : List[Set[Int]] = List()

    /**
     *  Check whether a trace satisfies a Hoare triple.
     */
    def checkPrePost(
        pre : TypedTerm[BoolTerm, Term],
        trace : Trace,
        post : TypedTerm[BoolTerm, Term]
    ) : Boolean = false
}
