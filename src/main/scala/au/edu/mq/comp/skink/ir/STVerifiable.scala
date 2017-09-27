package au.edu.mq.comp.skink

package ir

import verifier.Verifiable

/**
 * Interface for an single thread Intermediate Representation that can be analysed.
 */
class STVerifiable(ir : IR) extends Verifiable {

    import org.bitbucket.franck44.automat.auto.{DetAuto, NFA}
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term

    /**
     * The main function to start the analysis on
     */
    val main : IRFunction

    /**
     * Build a refinement automaton from an infeasible error trace.
     *
     * @param   trace   A trace that is not feasible
     * @param   info    Some text that can be used for logging
     *
     * @return          An automaton that accepts trace and other traces
     *                  that are infeasible.
     */
    /**
     * Compute a refinement from a trace for this function
     */
    def buildRefinement(
        trace : Trace,
        info : Option[String] = None
    ) : NFA[_, Choice] = {
        verifier.interpolant.InterpolantAuto.buildInterpolantAuto(this, trace.choices, info.getOrElse("0").toInt, fromEnd = true)
    }

    /**
     * Return an error trace if any.
     *
     * @param   r   A refinement
     * @return      An error trace not in the refinement.
     */
    def getErrorTrace(r : NFA[_, Choice]) = {
        import org.bitbucket.franck44.automat.lang.Lang

        (Lang(main.nfa) \ Lang(r)).getAcceptedTrace.map(Trace(_))
    }

}
