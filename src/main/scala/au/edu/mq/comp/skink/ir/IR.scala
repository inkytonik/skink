package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation.
 */
trait IR {

    import au.edu.mq.comp.skink.ir.{IRFunction, Choice, Trace, FailureTrace}
    import au.edu.mq.comp.skink.SkinkConfig
    import au.edu.mq.comp.automat.auto.DetAuto
    import au.edu.mq.comp.smtlib.typedterms.TypedTerm
    import scala.collection.immutable.Map
    import au.edu.mq.comp.smtlib.theories.BoolTerm
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.Term

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
     * The name of this program.
     */
    def name : String

    /**
     * Return a pretty-printed version of this IR instance.
     */
    def show : String

    def dca : DetAuto[_, Choice]

    /**
     * Return SMTlib terms that express the effect of the given trace for
     * this function. Each element of the outer sequence contains the terms
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
}
