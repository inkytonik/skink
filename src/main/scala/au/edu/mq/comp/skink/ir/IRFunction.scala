package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation function.
 */
trait IRFunction {

    import au.edu.mq.comp.automat.auto.DetAuto
    import au.edu.mq.comp.skink.ir.FailureTrace
    import au.edu.mq.comp.smtlib.typedterms.TypedTerm
    import au.edu.mq.comp.smtlib.theories.BoolTerm
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.Term
    import scala.collection.mutable.Map

    /**
     * The IR-level name of this function.
     */
    def name : String

    def dca : DetAuto[Map[Int, String], (Int, Int)]

    /**
     * Return SMTlib terms that express the effect of the given trace for
     * this function. Each element of the outer sequence contains the terms
     * that together describe effect of a single trace step. The inner
     * sequences collect terms that express the effect of each block
     * that appears in the trace.
     */
    def traceToTerms(trace : Trace) : Seq[Seq[TypedTerm[BoolTerm, Term]]]

    /**
     * Return descriptions of the steps taken by a failure trace for use
     * in witness generation.
     */
    def traceToSteps(failTrace : FailureTrace) : Seq[Step]

}
