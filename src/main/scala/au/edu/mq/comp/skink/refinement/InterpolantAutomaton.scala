
package au.edu.mq.comp.skink.verifier

package interpolant

import org.bitbucket.franck44.scalasmt.interpreters.Resources
import org.bitbucket.franck44.scalasmt.typedterms.{Commands}
import org.bitbucket.franck44.scalasmt.theories.{Core}
import au.edu.mq.comp.skink.Skink.getLogger
import au.edu.mq.comp.skink.ir.IRFunction
import au.edu.mq.comp.skink.ir.{Trace, Choice}
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}

trait AddBackEdges extends Core with Resources {

    import org.bitbucket.franck44.automat.edge.Implicits._
    import org.bitbucket.franck44.scalasmt.configurations.SolverConfig
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import scala.util.{Failure, Success}
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term

    private def generatePairs(xl : Seq[Int]) : List[List[(Int, Int)]] = xl match {
        case l if (l.size < 2) => Nil
        case a :: xa           => xa.map((a, _)) :: generatePairs(xa)
    }

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
    def computeSafeBackEdges(function : IRFunction, choices : Seq[Choice], preds : Seq[TypedTerm[BoolTerm, Term]]) = {
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
        val candidatePairs =
            indexPartition.filter(_.size > 1).map(_.toList).map(generatePairs(_)).flatten.flatten

        itpLogger.info(s"candidate pairs $candidatePairs")

        // FIXME: remove
        def solverFromName(name : String) : SolverConfig = {
            org.bitbucket.franck44.scalasmt.configurations.AppConfig.config.find(_.name == name) match {
                case Some(sc) =>
                    sc
                case None =>
                    sys.error(s"TraceRefinement: can't find solver called $name in config file")
            }
        }

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
                x1 = completeItp(j).unIndexed;
                x2 = completeItp(i + 1).unIndexed;
                u = {
                    itpLogger.info(s"Checking backedge from $j to ${i + 1}")
                    itpLogger.info(s"Predicate at ${i + 1} is ${showTerm(x2.termDef)}")
                    itpLogger.info(s"Predicate at $j is ${showTerm(x1.termDef)}")
                };
                //  if computing interpolants is successful and checkPost inclusion
                //  is true add them to list
                res = using(new SMTSolver(solverFromName("Z3"))) {
                    implicit solver =>
                        function.checkPost(
                            x1,
                            Trace(choices),
                            index = j,
                            choice = choices(i).branchId,
                            x2
                        )
                };
                uu = {
                    itpLogger.info(s"Result of checkPost $res")
                    res match {
                        case Success(_) =>
                        case Failure(_) => sys.error(s"Result of checkPost $res")
                    }
                };
                if (res == Success(true))
            ) yield {
                itpLogger.info(s"new backedge found from $j to ${i + 1} with choice $i")
                (j ~> (i + 1))(choices(i))
            }

        newBackEdges
    }
}

case class Interpolant(function : IRFunction, choices : Seq[Choice], fromEnd : Boolean) extends AddBackEdges with Commands {

    require(choices.size >= 2, s"More than 2 choices are needed to compute interpolants")

    import au.edu.mq.comp.skink.ir.Trace
    import org.bitbucket.franck44.scalasmt.configurations.{SMTInit, SolverConfig}
    import org.bitbucket.franck44.scalasmt.configurations.SMTOptions._
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import scala.util.{Failure, Success}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.UnSat

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
        using(new SMTSolver("Z3", new SMTInit(List(INTERPOLANTS)))) {
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
    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.automat.edge.Implicits._
    import au.edu.mq.comp.skink.Skink.{getLogger, toDot}

    val logger = getLogger(this.getClass)
    val itpLogger = getLogger(this.getClass, ".itp")
    val itpAutoLogger = getLogger(this.getClass, ".dot")

    /**
     * Make a linear interpolant automaton for the given trace choices.
     */
    def buildAutoForTrace(choices : Seq[Choice]) : NFA[Int, Choice] = {
        val transitions =
            for (i <- 0 until choices.length)
                yield (i ~> (i + 1))(choices(i))
        NFA(Set(0), transitions.toSet, Set(choices.length), Set(choices.length))
    }

    /**
     * If interpolants are available we can build an interpolant automaton.
     * For now does exactly what buildAutoForTrace deos
     */
    def buildInterpolantAuto(
        function : IRFunction,
        choices : Seq[Choice],
        iteration : Int,
        fromEnd : Boolean = false
    ) : NFA[Int, Choice] = {

        import scala.util.{Failure, Success}

        //  first build a linear automaton for the trace
        val linearAuto = buildAutoForTrace(choices)
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
                    linearAuto.accepting,
                    linearAuto.accepting
                )
                //  dump the automaton if logger is enabled
                import org.bitbucket.franck44.automat.util.Determiniser.toDetNFA
                itpAutoLogger.info(toDot(toDetNFA(itpAuto)._1, s"itp $iteration [" + fromEnd + "]"))
                itpAuto

            //  computation of predicates failed
            case Failure(f) =>
                itpLogger.warn(s"Solver could not compute interpolants $f")
                NFA(
                    linearAuto.getInit,
                    linearAuto.transitions,
                    linearAuto.accepting,
                    linearAuto.accepting
                )
        }
    }
}
