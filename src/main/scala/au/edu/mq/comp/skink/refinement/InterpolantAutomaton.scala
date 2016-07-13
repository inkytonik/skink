
package au.edu.mq.comp.skink.refinement

package interpolant

object InterpolantAuto {
    //  NFA
    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.edge.Implicits._
    // import au.edu.mq.comp.automat.lang.Lang
    // import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
    // import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    // import au.edu.mq.comp.skink.Skink.{getLogger, toDot}

    /**
     * Make an interpolant automaton for the given trace choices. For now, we just
     * generate a simple linear automaton so the refinement process will remove
     * just this one trace. Later revisions will be cleverer.
     */
    def interpolantAuto(choices : Seq[Int]) : NFA[Int, Int] = {
        val transitions =
            for (i <- 0 until choices.length)
                yield (i ~> (i + 1))(choices(i))
        NFA(Set(0), transitions.toSet, Set(choices.length))
    }

}
