package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation.
 */
trait IR {

    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.SortedQId

    /**
     * Execute this IR instance, returning the output produced and the exit
     * code where zero means a normal exit.
     */
    def execute() : (String, Int)

    /**
     * Return information about the functions in this IR instance.
     */
    def functions : Vector[IRVerifiable]

    /**
     * Return a pretty-printed version of this IR instance.
     */
    def show : String

    /**
     * Sort IR ids into a useful order of display to the user.
     */
    def sortIds(ids : Vector[SortedQId]) : Vector[SortedQId]

}
