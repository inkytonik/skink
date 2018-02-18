package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation function.
 */
trait IRFunction extends Verifiable {

    import org.bitbucket.franck44.automat.auto.NFA
    import au.edu.mq.comp.skink.ir.FailureTrace
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term

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
    def isVerifiable() : Option[String]

    /**
     * An NFA that represents the possible control flow of executions of
     * the function where final states represent failures. State labels
     * are not interpreted but are usually block names to aid logging.
     * Edges must be labelled with choice indices. See the documentation
     * of the `Trace` type for more detail on choices.
     */
    def nfa : NFA[_, Choice]

}
