package au.edu.mq.comp.skink.ir

/**
 * A description of a step in the execution of a trace. All of the values
 * are optional since some may be missing in the IR.
 */
case class Step(
    optFileName : Option[String],
    optBlockName : Option[String],
    optBlockCode : Option[String],
    optTermCode : Option[String],
    optTermLine : Option[Int]
)

/**
 * Interface for Intermediate Representation function.
 */
trait IRFunction {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.skink.verifier.FailureTrace
    import smtlib.util.TypedTerm

    /**
     * The IR-level name of this function.
     */
    def name : String

    /**
     * An NFA that represents the possible executions of the function where
     * final states represent failures. State labels are not interpreted
     * but are usually block names to aid logging. Edges must be labelled
     * with choice indices.
     */
    def nfa : NFA[String, Int]

    /**
     * Return SMTlib terms that express the effect of the given trace for
     * this function. Each element of the outer sequence contains the terms
     * that together describe effect of a single trace step.
     */
    def traceToTerms(trace : Trace) : Seq[Seq[TypedTerm]]

    /**
     * Return descriptions of the steps taken by a failure trace for use
     * in witness generation.
     */
    def traceToSteps(failTrace : FailureTrace) : Seq[Step]

}
