package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation function.
 */
trait IRFunction {

    /**
     * The IR-level name of this function.
     */
    def name : String

    /**
     * Return true if this function actually is amenable to verification.
     * A function might not be amenable to verification if some pre-processing
     * is necessary but it didn't work. By default this method always returns
     * true.
     */
    def isVerifiable() : Boolean =
        true
}
