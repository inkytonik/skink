package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation.
 */
trait IR {

    import au.edu.mq.comp.skink.SkinkConfig

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
     * Return a pretty-printed version of this IR instance.
     */
    def show : String

}
