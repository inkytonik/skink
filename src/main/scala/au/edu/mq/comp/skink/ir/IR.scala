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
        choice : Choice,
        post : TypedTerm[BoolTerm, Term]
    )(
        implicit
        solver : ExtendedSMTLIB2Interpreter
    ) : Try[Boolean]

    /**
     * Check if the effects of two choices in a trace are dependent
     */
    def independent(choices : Seq[Choice])(i : Int, j : Int) : Boolean
}
