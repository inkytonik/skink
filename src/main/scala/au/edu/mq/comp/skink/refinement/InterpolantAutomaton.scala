
package au.edu.mq.comp.skink.verifier

package interpolant

import au.edu.mq.comp.smtlib.interpreters.Resources
import au.edu.mq.comp.smtlib.typedterms.{Commands}
import au.edu.mq.comp.smtlib.theories.{Core}
import au.edu.mq.comp.skink.Skink.getLogger
import au.edu.mq.comp.skink.ir.IRFunction
import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}

trait AddBackEdges extends Core with Resources {

    import au.edu.mq.comp.automat.edge.Implicits._
    import au.edu.mq.comp.skink.ir.Trace
    import au.edu.mq.comp.smtlib.solvers._
    import au.edu.mq.comp.smtlib.theories.PredefinedLogics._
    import au.edu.mq.comp.smtlib.configurations.Configurations._
    import scala.util.{Failure, Success, Try}
    import au.edu.mq.comp.smtlib.typedterms.TypedTerm
    import au.edu.mq.comp.smtlib.theories.BoolTerm
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.Term

    /**
     * Provide a list of new edges that preserve infeasibility.
     *
     * @param   function    The function to analyse
     * @param   choices     An infeasible path of size n in `function` given by a sequence
     *                      of choices
     * @param   preds       Am inductive interpolants of size n - 2 (initial predicate is True and
     *                      final must be False)
     *
     * @note
     */
    def computeSafeBackEdges(function : IRFunction, choices : Seq[Int], preds : Seq[TypedTerm[BoolTerm, Term]]) = {
        val itpLogger = getLogger(this.getClass, ".itp")
        itpLogger.info(s"Annotations: ${preds.map(_.termDef).map(showTerm(_))}")

        //  add the first and last trivial interpolants
        val completeItp = True() +: preds :+ False()

        //  Collect partition of indices according to block equivalence
        val indexPartition : Seq[Seq[Int]] = function.traceToRepetitions(Trace(choices))
        itpLogger.info(s"Partitions $indexPartition");
        itpLogger.info(s"Non-singleton partitions ${indexPartition.filter(_.size > 1)}");

        //  Compute candidate backEdges from the indexPartition
        //  for each partition with more than 2 elements, build the candidate min, max
        val candidatePairs = indexPartition.filter(_.size > 1) map (xl => (xl.min, xl.max))

        /**
         * Check if backedges can be added to the linear automaton
         * If there is a repetition of a block at index i and j, we
         * can try to add a backedge j -- choices(i) -> i + 1
         * For each set of repeated blocks, we try to add the first and closest
         * backedge. For instance if the a set is {1,4,7} (same block at index 1,4,7)
         * we try to add a backedge from 4 to 2 with choices(1)
         */
        val newBackEdges =
            for (
                (i, j) <- candidatePairs;
                // tgtItp = completeItp(i + 1);
                // srcItp = completeItp(j);
                x1 = completeItp(j).unIndexed;
                x2 = completeItp(i + 1).unIndexed;
                u = {
                    itpLogger.info(s"Checking backedge from $j to ${i + 1}")
                    itpLogger.info(s"Predicate at ${i + 1} is ${showTerm(x2.termDef)}")
                    itpLogger.info(s"Predicate at $j is ${showTerm(x1.termDef)}")
                };
                //  if computing interpolants is successful and checkPost inclusion
                //  is true add them to list
                res = using(new Z3 with QF_AUFLIA) {
                    implicit solver =>
                        function.checkPost(
                            x1,
                            Trace(choices),
                            index = j,
                            choice = choices(i),
                            x2
                        )
                };
                uu = {
                    itpLogger.info(s"Result of checkPost $res")
                };
                if (res == Success(true))
            ) yield {
                itpLogger.info(s"new backedge found from $j to ${i + 1} with choice $i")
                (j ~> (i + 1))(choices(i))
            }

        newBackEdges
    }
}

case class Interpolant(function : IRFunction, choices : Seq[Int], fromEnd : Boolean) extends AddBackEdges with Commands {

    require(choices.size >= 2, s"More than 2 choices are needed to compute interpolants")

    import au.edu.mq.comp.skink.ir.Trace
    import au.edu.mq.comp.smtlib.interpreters.{SMTLIB2Interpreter}
    import au.edu.mq.comp.smtlib.solvers._
    import au.edu.mq.comp.smtlib.interpreters.SMTSolver
    import au.edu.mq.comp.smtlib.interpreters.Resources
    import au.edu.mq.comp.smtlib.theories.PredefinedLogics._
    import au.edu.mq.comp.smtlib.configurations.Configurations._
    import scala.util.{Failure, Success, Try}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{Sat, UnSat, UnKnown, SatResponses}

    val itpLogger = getLogger(this.getClass, ".itp")

    lazy val predicateAnnotations = {

        itpLogger.info(s"Choices are $choices")

        //  From the sequence of choices, retrieve the sequence of terms that encodes the semantics
        //  of the trace
        val traceTerms = function.traceToTerms(Trace(choices))

        //  make NamedTerms with an index
        val namedTerms = for { (tt, n) ← traceTerms.zipWithIndex } yield tt.named("P" + n)

        //  depending on order we want use for the predicates we reverse namedTerms or not
        val orderedTerms = if (fromEnd) namedTerms.reverse else namedTerms
        itpLogger.info(s"ordered trace [$fromEnd] terms are: ${orderedTerms.map(_.termDef).map(showTerm(_)).mkString("\n")}")

        /**
         * the following returns n - 1 interpolants for n terms
         * To make n + 1 use True fr the first one, and False for the last one.
         */
        using(new Z3 with QF_AUFLIA with Interpolants) {
            implicit solver =>
                isSat(orderedTerms : _*) match {

                    //  should be UnSat()
                    case Success(UnSat()) =>
                        assert(orderedTerms.size >= 2)
                        itpLogger.info(s"Solver returned UnSat as expected")

                        //  now get interpolants
                        getInterpolants(orderedTerms.head, orderedTerms.tail.head, orderedTerms.drop(2) : _*) match {

                            case Success(inductiveItp) =>
                                Success(if (fromEnd) inductiveItp.reverse else inductiveItp)

                            case Failure(f) => Failure(f)
                        }

                    //  if not UnSat, log the result and exit
                    case Success(other) =>
                        itpLogger.error(s"Solver did not return UnSat while computing interpolants: $other")
                        sys.error(s"Computation of interpolant automaton failed. Solver returned $other")

                    case Failure(f) =>
                        itpLogger.error(s"Solver failed to determine sat-status in InterpolantAuto $f")
                        sys.error(s"Solver failed to determine sat-status in InterpolantAuto $f")
                }
        }
    }
}

object InterpolantAuto extends AddBackEdges {
    //  NFA
    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.edge.Implicits._
    import au.edu.mq.comp.skink.Skink.{getLogger, toDot}
    import au.edu.mq.comp.skink.ir.Trace

    val logger = getLogger(this.getClass)
    val itpLogger = getLogger(this.getClass, ".itp")
    val itpAutoLogger = getLogger(this.getClass, ".dot")

    /**
     * Make a linear interpolant automaton for the given trace choices.
     */
    def buildAutoForTrace(choices : Seq[Int]) : NFA[Int, Int] = {
        val transitions =
            for (i <- 0 until choices.length)
                yield (i ~> (i + 1))(choices(i))
        NFA(Set(0), transitions.toSet, Set(choices.length))
    }

    /**
     * If interpolants are available we can build an interpolant automaton.
     * For now does exactly what buildAutoForTrace deos
     */
    def buildInterpolantAuto(
        function : IRFunction,
        choices : Seq[Int],
        fromEnd : Boolean = false
    ) : NFA[Int, Int] = {

        import scala.util.{Failure, Success, Try}

        //  first build a linear automaton for the trace
        val linearAuto : NFA[Int, Int] = buildAutoForTrace(choices)
        itpLogger.info(s"Linear Interpolant automaton built")

        //  try to compute predicates for the infeasible trace
        val predicates = Interpolant(function, choices, fromEnd).predicateAnnotations

        predicates match {

            //  predicates (or interpolants) could be computed
            case Success(xitp) =>

                itpLogger.info(s"Predicates are: ${xitp.map(_.termDef).map(showTerm(_)).mkString("\n")}")
                //  compute back edges
                val newBackEdges = computeSafeBackEdges(function, choices, xitp)

                val itpAuto = NFA(
                    linearAuto.getInit,
                    linearAuto.transitions ++ newBackEdges,
                    linearAuto.accepting
                )
                //  dump the automaton if logger is enabled
                import au.edu.mq.comp.automat.util.Determiniser.toDetNFA
                itpAutoLogger.info(toDot(toDetNFA(itpAuto), "itp[" + fromEnd + "]"))
                itpAuto

            //  computation of predicates failed
            case Failure(f) =>
                itpLogger.warn(s"Solver could note compute interpolants $f")
                linearAuto
        }
    }
}
