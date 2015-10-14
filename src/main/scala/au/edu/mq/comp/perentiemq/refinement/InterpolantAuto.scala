package au.edu.mq.comp.perentiemq.refinement

import au.edu.mq.comp.automat.auto.{ DetAuto, NFA }
import au.edu.mq.comp.automat.lang.Lang
import au.edu.mq.comp.automat.edge.Implicits._
import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.{ Entry, Trace }
import au.edu.mq.comp.automat.edge.Implicits._
import au.edu.mq.comp.automat.edge.Edge
/**
 * Build an interpolant automaton from a trace.
 */

object InterpolantAutomaton {
  /**
   * Build an interpolant automaton from a trace
   *
   */
  def apply[L](trace: Seq[L]): NFA[Int, L] = {
    //  Build a linear NFA from a trace
    val numentries = trace.length
    val init = (0 to numentries).toSet
    val edges = trace.zipWithIndex.map {
      case (entry, index) =>
        (index ~> (index + 1))(entry)
    }.toSet
    val accepting = Set(numentries)
    val res = NFA(init, edges, accepting)
    println(res)
    res
  }
}

