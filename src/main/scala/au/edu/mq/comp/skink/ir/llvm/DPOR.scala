package au.edu.mq.comp.skink.ir

package llvm

import org.bitbucket.franck44.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.{Block, Program}
import au.edu.mq.comp.skink.ir.{Choice}
import scala.collection.immutable.Map
import scala.collection.mutable.{Map => MutableMap}
import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.scalallvm.assembly.AssemblySyntax.{ASTNode, FunctionDefinition}

/**
 * Dynamic Partial Order Reduction
 *
 * @param   a           The transition relation
 * @param   dependent   Dependency between actions
 */
case class DPOR[S, L](a : DetAuto[S, L], dependent : ((S, L), (S, L)) => Boolean) {

    case class DPORNode(s : S, backTrack : Set[L], sleep : Set[L]) {

        def unexplored : List[L] = (backTrack &~ sleep).toList
    }

    /**
     * Exploration of a graph with DPOR (POLP'14).
     *
     * @param   n       New node to explore.
     * @param   xn      Reverse sequence of nodes already explored before `n`.
     */
    def exploreRec(n : DPORNode, prev : List[DPORNode]) : Unit = {
        import a.enabledIn

        ((n.backTrack &~ n.sleep).toList, prev) match {

            case (l :: _, xn) =>
                //  explore l from n
                //  Get some successor state of l
                val m = DPORNode(
                        a.succ(n.s, l),
                        Set(),
                        Set()
                    )
                //  Explore m
                exploreRec(m, n :: xn)

            case (Nil, x :: xn) =>
                //  Node n is completely explored. Continue from parent.
                exploreRec(x, xn)

            case (Nil, Nil) =>
                ()
        }

    }
}
