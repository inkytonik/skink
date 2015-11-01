package au.edu.mq.comp.perentiemq.refinement

import au.edu.mq.comp.automat.auto.{ DetAuto, NFA }
import au.edu.mq.comp.automat.util.Determiniser.toDetNFA

import au.edu.mq.comp.automat.lang.Lang
import au.edu.mq.comp.automat.edge.Implicits._

import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.{ traceToTerms }

import smtlib.util.{ TypedTerm, ValMap }
import smtlib.interpreters.{ SMTSolver, GenericSolver }
import smtlib.interpreters.Configurations._
import smtlib.util.Logics.isSat
import smtlib.parser.CommandsResponses.{ SatStatus, UnsatStatus, GetInterpolantsResponseSuccess }
import smtlib.parser.Commands.{ Exit, Reset, Pop, Push }
import smtlib.parser.Terms.QualifiedIdentifier
import smtlib.util.Logics.{ getValues, isSat, getInterpolants }

import scala.util.{ Try, Failure, Success }

import org.kiama.rewriting.Rewriter.collect

// import au.edu.mq.comp.perentiemq.refinement.InterpolantAutomaton.computeInterpolantAuto
// import com.typesafe.scalalogging.LazyLogging

import au.edu.mq.comp.perentiemq.cfg._
import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.Entry
import org.scalallvm.assembly.AssemblySyntax._

object TraceRefinement { //extends LazyLogging removing for now as they are two logback.xml files conflicting


  val stringToSolver = Map("Z3" -> Z3, "SMTInterpol" -> SMTInterpol, "CVC4" -> CVC4)

  /**
   * A feasible trace that leads to a program failure. `values`, if
   * present, reports on the values that lead to the failure. It
   * may contain entries for the identifiers in `ids` but may not
   * map them all.
   */
  case class FailureTrace[L](trace: Seq[L], ids: Seq[QualifiedIdentifier],
    values: Try[ValMap])

  def makeFailureTrace[L](trace: Seq[L], terms: Seq[TypedTerm], solver: GenericSolver): FailureTrace[L] = {
    val getids = collect[Seq, QualifiedIdentifier] {
      case id @ (QualifiedIdentifier(_, Some(_))) =>
        id
    }
    val ids = getids(terms).toSet.toSeq
    val values = ids match {
      case h +: t =>
        getValues(h, t)(solver)
      case _ =>
        Success(ValMap(Map.empty))
    }
    FailureTrace(trace, ids, values)
  }

  import au.edu.mq.comp.perentiemq.PerentieMQConfig



  /**
   * Implement the refinement loop, returning an optional trace that if
   * present is feasible and demonstrates how the program is incorrect.
   */
  def traceRefinement[S1, L](ircfg: NFA[S1, L],
    traceToTerms: Seq[L] => Seq[Vector[TypedTerm]],
    blockName: CFGBlock[FunctionDefinition, Block] => String,
    isBlockEntry: L => Boolean,
    config: PerentieMQConfig): Try[Option[FailureTrace[L]]] = {

    val maxIterations = config.maxIterations()

    // FIXME: want to put @tailrec but Scala compiler complains, not sure why...
    // Franck: because getAcceptedTrace itself contains a tailrec?
    import scala.annotation.tailrec
    def refineRec[S, S2](cfg: NFA[S, L], r: DetAuto[S2, L],
      remainingIterations: Int,
      culpritMap: Map[CFGBlock[FunctionDefinition, Block], Int]): Try[Option[FailureTrace[L]]] =
      (Lang(cfg) \ Lang(r)).getAcceptedTrace match {

        //  if None, the program is correct

        case None =>
          // println(s"Refinement steps : ${Console.GREEN}${maxIterations - remainingIterations}${Console.RESET}" )
          Success(None)

        //  otherwise we investigate further.
        //  Is the trace spurious or not?

        case Some(trace) =>
          // println( s"Found trace with  ${Console.YELLOW}${trace.size}${Console.RESET} steps")
          // trace map println
          // println(Console.RESET)

          // Encode the trace into an SSA formula to check feasibility
          // Each entry e in entries is mapped to a Vector[TypedTerm]
          // that encode the effect of the entry.
          // reduce each Vector(p1, p2, pk) to p1 & p2 & ... & pk
          // If later we want ot get interpolants, we need to partition
          // the terms this way.

          val traceTerms: Seq[TypedTerm] =
            traceToTerms(trace).map(_.reduceLeft(_ & _))

          // println("Trace encoding --------------------")
          // traceTerms.zipWithIndex map (x => println(x._2 + s" ${InterpolantAutomaton.getBlockLabel(trace(x._2))}" + " : " + x._1.getTerm))
          // println("-----------------------------------")

          //  get a solver and check if the trace is
          //  is feasible or not
          val solver = SMTSolver(stringToSolver(config.solver()), QFAUFLIAFullConfig, config.solverTimeOut()).get

          // traceTerms map { case t => println(t.getNamedTerm) }
          solver.eval(Push(1))

          isSat(traceTerms, withNaming = true)(solver) match {

            //  feasible trace

            case Success((SatStatus, _, _)) =>

              //  trace is feasible. Program is incorrect. build a failure trace
              val failTrace = makeFailureTrace(trace, traceTerms, solver)

              solver.eval(Exit())
              // logger.debug("trace was feasible")
              Success(Some(failTrace))

            //  infeasible trace 
            case Success((UnsatStatus, Some(namedTerms), Some(feasibleLength))) =>
              // println(s"infeasible after step number ${Console.YELLOW}${feasibleLength - 1}${Console.RESET}")
              val newCulpritMap = if (config.trackValues()) {
                // record the condition that made the trace infeasible
                // println(s"Culprit is ${trace(feasibleLength - 1)}")
                culpritMap
              } else culpritMap

              if (remainingIterations > 0) {

                //  refine
                // println(s"Refining - step ${Console.YELLOW}${maxIterations - remainingIterations}${Console.RESET}")

                val ia = InterpolantAutomaton(
                  trace.take(feasibleLength),
                  namedTerms,
                  maxIterations - remainingIterations,
                  traceToTerms,
                  isBlockEntry)(solver)

                solver.eval(Pop(1))
                solver.eval(Exit())


                import reflect.io._
                import au.edu.mq.comp.automat.util.DotConverter.toDot
                import au.edu.mq.comp.dot.DOTPrettyPrinter.format

                //  log results

                import InterpolantAutomaton.{ getBlockLabel, logAuto }

                // logAuto(toDetNFA(r + ia),
                //   { x: Int => x.toString },
                //   { e: L => getBlockLabel(e) },
                //   s"/tmp/det-${maxIterations - remainingIterations}.dot")

                // if (remainingIterations < maxIterations) {
                //   logAuto(toDetNFA(r),
                //     { x: Int => x.toString },
                //     { e: L => getBlockLabel(e) },
                //     s"/tmp/r-${maxIterations - remainingIterations}.dot")
                // }

                // logAuto(toDetNFA(ia),
                //   { x: Int => x.toString },
                //   { e: L => getBlockLabel(e) },
                //   s"/tmp/ia-${maxIterations - remainingIterations}.dot")

                // logAuto(toDetNFA(iaReverse),
                //  { x: Int => x.toString },
                //  { e: L => getBlockLabel(e) },
                //  s"/tmp/iaR-${maxIterations - remainingIterations}.dot")

                // File(s"/tmp/det-${maxIterations - remainingIterations}.dot").writeAll(format(toDot(toDetNFA(r + ia))).layout)
                // File(s"/tmp/r-${maxIterations - remainingIterations}.dot").writeAll(format(toDot(toDetNFA(r))).layout)
                // File(s"/tmp/detia-${maxIterations - remainingIterations}.dot").writeAll(format(toDot(toDetNFA(ia))).layout)
                refineRec(cfg, toDetNFA(r + ia), remainingIterations - 1, newCulpritMap)
                // refineRec(cfg, r + InterpolantAutomaton(trace),remainingIterations - 1)
              } else {
                //  we ran out resources
                solver.eval(Exit())
                Failure(new Exception(s"Maximum number of iterations reached"))
              }

            case status =>
              Failure(new Exception(s"[refineRec] strange solver status: $status"))
            // sys.error(s"strange solver status: $status")
          }
      }

    refineRec(ircfg, NFA[Set[Int], L](Set(), Set(), Set()), config.maxIterations(), Map())
  }
}
