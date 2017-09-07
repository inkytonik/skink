package au.edu.mq.comp.skink

/**
 * Interface for Skink frontends.
 */
trait Frontend {

    import au.edu.mq.comp.skink.ir.IR
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}

    /**
     * The name of this frontend.
     */
    def name : String

    /**
     * Build IR from the given source or complain by returning
     * error messages explaining what went wrong.
     */
    def buildIR(source : Source, positions : Positions) : Either[IR, Messages]

}
