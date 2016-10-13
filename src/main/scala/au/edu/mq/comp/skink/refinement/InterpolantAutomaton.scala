
package au.edu.mq.comp.skink.verifier

package interpolant

import au.edu.mq.comp.smtlib.interpreters.Resources
import au.edu.mq.comp.smtlib.typedterms.{Commands}
import au.edu.mq.comp.smtlib.theories.{Core}
import au.edu.mq.comp.skink.Skink.getLogger

object InterpolantAuto extends Resources with Commands with Core {
    //  NFA
    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.edge.Implicits._
    import au.edu.mq.comp.skink.Skink.{getLogger, toDot}
    import au.edu.mq.comp.skink.ir.Trace

    val logger = getLogger(this.getClass)
    val itpLogger = getLogger(this.getClass, ".itp")

    // import au.edu.mq.comp.automat.lang.Lang
    // import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
    // import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction, Trace}
    // import au.edu.mq.comp.skink.Skink.{getLogger, toDot}

    /**
     * Make an interpolant automaton for the given trace choices. For now, we just
     * generate a simple linear automaton so the refinement process will remove
     * just this one trace. Later revisions will be cleverer.
     */
    def buildAutoForTrace(choices : Seq[Int]) : NFA[Int, Int] = {
        val transitions =
            for (i <- 0 until choices.length)
                yield (i ~> (i + 1))(choices(i))
        NFA(Set(0), transitions.toSet, Set(choices.length))
    }

    // import au.edu.mq.comp.skink.ir.llvm.LLVMFunction
    import au.edu.mq.comp.skink.ir.IRFunction
    import au.edu.mq.comp.smtlib.interpreters.{SMTLIB2Interpreter}
    import au.edu.mq.comp.smtlib.solvers._
    import au.edu.mq.comp.smtlib.interpreters.SMTSolver
    import au.edu.mq.comp.smtlib.interpreters.Resources
    import au.edu.mq.comp.smtlib.theories.PredefinedLogics._
    import au.edu.mq.comp.smtlib.configurations.Configurations._
    import scala.util.{Failure, Success, Try}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{Sat, UnSat, UnKnown, SatResponses}

    /**
     * If interpolants are available we can build an interpolant automaton.
     * For now does exactly what buildAutoForTrace deos
     */
    def buildInterpolantAuto(
        function : IRFunction,
        choices : Seq[Int]
    ) : NFA[Int, Int] = {

        val linearAuto : NFA[Int, Int] = buildAutoForTrace(choices)

        //  Collect partition of indices according to blockNames
        val indexPartition = function.traceToRepetitions(Trace(choices))

        //  From the sequence of choices, retrieve the sequence of terms that encodes the semantics
        //  of the trace
        val traceTerms = function.traceToTerms(Trace(choices))

        //  make NamedTerms with an index
        val namedTerms = for { (tt, n) ← traceTerms.zipWithIndex } yield tt.named("P" + n)

        //  if possible compute interpolants
        //  here we should check the traceTerms, more than 2, and also the type

        /**
         * the following returns n - 1 interpolants for n terms
         * To make n + 1 use True fr the first one, and False for the last one.
         */
        val interpolants = using(new Z3 with QF_AUFLIA with Interpolants) {
            implicit solver =>
                isSat(namedTerms : _*) match {

                    //  should be UnSat()
                    case Success(UnSat()) =>
                        assert(namedTerms.size >= 2)

                        //  now get interpolants
                        getInterpolants(namedTerms.head, namedTerms.tail.head, namedTerms.drop(2) : _*)

                    //  if not UnSat, log the result and exit
                    case Success(sat) =>
                        itpLogger.error(s"Solver did not return UnSat while computing interpolants: $sat")
                        sys.error(s"Computation of interpolant automaton failed. Solver returned $sat")

                    case Failure(f) =>
                        itpLogger.error(s"Solver failed to determine sat-status in InterpolantAuto $f")
                        sys.error(s"Solver failed to determine sat-status in InterpolantAuto $f")
                }
        }

        interpolants match {

            case Success(xitp) =>

                itpLogger.info(s"Interpolants are: ${xitp.map(_.show)}")

                //  add the first and last trivial interpolants
                val completeItp = True() +: xitp :+ False()

                /**
                 * Check if backedges can be added to the linear automaton
                 * If there is a repetition of a block at index i and j, we
                 * can try to add a backedge j -- choices(i) -> i + 1
                 * For each set of repeated blocks, we try to add the first and closest
                 * backedge. For instance if the a set is {1,4,7} (same block at index 1,4,7)
                 * we try to add a backedge from 4 to 2 with choices(1)
                 */

                val newBackEdges = for (
                    p <- indexPartition if (p.size > 1);
                    i = p.head min p.tail.head;
                    j = p.head max p.tail.head;
                    tgtItp = completeItp(i + 1);
                    srcItp = completeItp(j);
                    res = function.checkPrePost(
                        srcItp.unIndexed,
                        Trace(choices),
                        tgtItp.unIndexed
                    ) if res
                ) yield {
                    (j ~> (i + 1))(choices(i))
                }

                //  add the new edges to the linearAuto basis
                NFA(
                    linearAuto.getInit,
                    linearAuto.transitions ++ newBackEdges,
                    linearAuto.accepting
                )

            case Failure(f) =>
                itpLogger.error(s"Solver could note compute interpolants $f")
                sys.error(s"Solver could note compute interpolants $f")

        }

    }

}
