package au.edu.mq.comp.skink.ir

/**
 * Interface for Intermediate Representation (IR) providers.
 */
trait IRProvider {

    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}

    /**
     * The name of this IR.
     */
    def name : String

    /**
     * Given a source and position store, build an IR instance, or if that's
     * not possible return the error messages.
     */
    def buildFromSource(source : Source, positions : Positions) : Either[IR, Messages]

}
