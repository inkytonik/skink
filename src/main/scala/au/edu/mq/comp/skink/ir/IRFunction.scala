package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation verifiable function.
 */
trait IRFunction extends IRVerifiable {

    import org.scalallvm.assembly.AssemblySyntax.FunctionDefinition

    /**
     * The IR-level name of this function.
     */
    def name : String

    /**
     * Return `None` if this program actually is amenable to verification.
     * A function might not be amenable to verification if some pre-processing
     * is necessary but it didn't work. If verification is not possible, a
     * message is returned that can be displayed to the user. By default
     * this method always returns `None`.
     */
    // FIXME franck: do we need that ???
    def isVerifiable() : Option[String] =
        None

    def makeVerifiable() : FunctionDefinition

}
