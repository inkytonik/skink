package au.edu.mq.comp.perentiemq.cfg

/**
 * Consolidated construction and processing of LLVM assembly CFGs.
 */
object AssemblyCFG extends AssemblyCFGBuilder {

    import org.kiama.==>
    import org.kiama.attribution.Decorators
    import org.kiama.relation.Tree
    import org.scalallvm.assembly.AssemblySyntax._
    import smtlib.parser.Terms._
    import smtlib.theories.{Core, Ints}
    import scala.collection.mutable

    /**
     * Verify the given CFG. The IR is assumed to have bene processed by
     * `prepareIRForVerification` before the CFG was constructed.
     */
    def verify (cfg : CFG[FunctionDefinition,Block], cfgAnalyser : CFGAnalyser) {

        /**
         * The prefix used by the SV-COMP to signify special functions.
         */
        val SVCompVerifierPrefix = "@__VERIFIER"

        /**
         * Return whether or not the named function should be verified.
         */
        def isNotToBeVerified (name : String) : Boolean =
            name.startsWith (SVCompVerifierPrefix)

        // Return if we don't want to verify this function
        val fname = functionName (cfgAnalyser.function (cfg))
        if (isNotToBeVerified (fname))
            return

        println (s"verified, not! $fname")

    }

}
