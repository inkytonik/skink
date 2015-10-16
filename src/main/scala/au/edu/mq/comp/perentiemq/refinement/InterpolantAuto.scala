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

    res
  }

  import smtlib.util.{ TypedTerm }
  import smtlib.interpreters.{ GenericSolver }
  import smtlib.util.Logics.{ getInterpolants }
  import scala.util.{ Failure, Success }
  // import scala.collection.immutable.Seq.SeqBuilder

  def getInductiveInterpolants(s: Seq[TypedTerm])(implicit solver: GenericSolver): Seq[TypedTerm] = {
    //  we create a term per block and then filter out the True
    //  s may contain True many times
    //  this TypedTerm will cause problem as the same name will be pushed to
    //  the solver many times. So we remove the True

    getInterpolants(s)(solver) match {
      case Success(i) => i
        //  build an interpolant for s by inserting the msiing predicates for True
        
      case Failure(e) => sys.error(s"getInductiveInterpolants failed. e.getMessage")
    }
  }

}

