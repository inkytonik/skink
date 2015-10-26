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
import smtlib.util.Logics.{ getValues, isSat, isSatIncr, getInterpolants }

import scala.util.{ Try, Failure, Success }

import org.kiama.rewriting.Rewriter.collect

// import au.edu.mq.comp.perentiemq.refinement.InterpolantAutomaton.computeInterpolantAuto
// import com.typesafe.scalalogging.LazyLogging

import au.edu.mq.comp.perentiemq.cfg._
import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.Entry
import org.scalallvm.assembly.AssemblySyntax._

object TraceRefinement { //extends LazyLogging removing for now as they are two logback.xml files conflicting

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

  //  maximum number of iterations
  //  should define a proper scallop config
  // val MAX_ITERATION = 10

  import au.edu.mq.comp.perentiemq.PerentieMQConfig

  /**
   * Implement the refinement loop, returning an optional trace that if
   * present is feasible and demonstrates how the program is incorrect.
   */
  def traceRefinement[S1, L](ircfg: NFA[S1, L],
    traceToTerms: Seq[L] => Seq[Vector[TypedTerm]],
    blockName: CFGBlock[FunctionDefinition, Block] => String,
    isBlockEntry: L => Boolean,
    // maxIterations: Int,
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
          println(Console.GREEN_B + s"Refinement steps : ${maxIterations - remainingIterations}" + Console.RESET)
          Success(None)

        //  otherwise we investigate further.
        //  Is the trace spurious or not?
        case Some(entries) =>
          println(Console.RED_B + s"Found trace size ${entries.size}")
          // entries map println
          println(Console.RESET)
          val trace = entries
          // Encode the trace into an SSA formula to check feasibility
          // Each entry e in entries is mapped to a Vector[TypedTerm]
          // that encode the effect of the entry.
          // reduce each Vector(p1, p2, pk) to p1 & p2 & ... & pk
          // If later we want ot get interpolants, we need to partition
          // the terms this way.
          // val blockTerms: Seq[Vector[TypedTerm]] = traceToTerms(trace)
          val traceTerms: Seq[TypedTerm] =
            traceToTerms(trace).map(_.reduceLeft(_ & _))

          // println("Trace encoding --------------------")
          // traceTerms.zipWithIndex map (  x => println(x._2 + " : " + x._1.getTerm)) 
          // println("-----------------------------------")
          // val bTerms = blockTerms.map(_.reduceLeft(_ & _))
          // import org.kiama.output.PrettyPrinter.{ any, pretty }
          // val pp = bTerms2.map(_.toString)
          // println(s"trying terms ${pretty(any(pp)).layout}") 

          //  get a solver and check if the trace is
          //  is feasible or not
          val solver = SMTSolver(SMTInterpol, QFAUFLIAFullConfig).get

          // traceTerms map { case t => println(t.getNamedTerm) }
          solver.eval(Push(1))
          val res = if (config.incrSat())
            isSatIncr(traceTerms, withNaming = true)(solver)
          else
            isSat(traceTerms, withNaming = true)(solver)

          res match {
            // case Success((SatStatus, _)) =>
            case Success((SatStatus, _, _)) =>

              //  trace is feasible. Program is incorrect. build a failure trace
              val failTrace = makeFailureTrace(entries, traceTerms, solver)

              solver.eval(Exit())
              // logger.debug("trace was feasible")
              Success(Some(failTrace))

            // case Success((UnsatStatus, Some(nameMap))) =>
            case Success((UnsatStatus, Some(nameMap), Some(feasibleLength))) =>
              println(Console.RED_B + s"trace is infeasible term number ${feasibleLength - 1}" + Console.RESET)
              val newCulpritMap = if (config.incrSat()) {
                // record the condition that made the trace infeasible
                  println(s"Culprit is ${entries(feasibleLength -1)}")
                  culpritMap
              }
              else culpritMap
              // check result
              // val solver2 = SMTSolver(SMTInterpol, QFAUFLIAFullConfig).get
              // traceTerms map { case t => println(t.getNamedTerm) }
              // val res2 = isSat(traceTerms.take(feasibleLength))(solver2)
              // solver2.eval(Exit())

              // println(s"Result of check : $res2")
              // println(s"First infeasible after: $feasibleLength steps")
              // println(nameMap)
              // logger.debug("trace was infeasible")
              if (remainingIterations > 0) {
                // val i: Seq[TypedTerm] = getInterpolants(traceTerms)(solver).get
                //  compute a refinement, interpolant automaton
                //  
                // val ia = computeInterpolantAuto(i, trace, traceToTerms, maxIterations -remainingIterations)
                val ia = InterpolantAutomaton(
                  // trace,
                  trace.take(feasibleLength),
                  traceTerms.take(feasibleLength),
                  nameMap,
                  maxIterations - remainingIterations,
                  traceToTerms,
                  isBlockEntry)(solver)
                solver.eval(Pop(1))

                //  now compute an interpolant from the end

                //   
                solver.eval(Exit())

                // assert(ia.isFinal(ia.succ(ia.getInit, trace.take(feasibleLength))))

                println(Console.RED_B + s"Refining - step ${maxIterations - remainingIterations}" + Console.RESET)

                import reflect.io._
                import au.edu.mq.comp.automat.util.DotConverter.toDot
                import au.edu.mq.comp.dot.DOTPrettyPrinter.format
                // File(s"/tmp/ia-${maxIterations - remainingIterations}.dot").writeAll(format(toDot(ia)).layout)

                // assert((cfg - ia).isFinal((cfg - ia).succ((cfg - ia).getInit, trace.take(feasibleLength))))
                // File(s"/tmp/cfg-${MAX_ITERATION - remainingIterations}.dot").writeAll(format(toDot(toDetNFA(cfg - ia))).layout)

                // InterpolantAutomaton.logAuto(toDetNFA(cfg - ia),
                //   { x: Entry => InterpolantAutomaton.getBlockLabel(x) },
                //   { e: Entry => InterpolantAutomaton.getBlockLabel(e) },
                //   s"/tmp/cfg-${MAX_ITERATION - remainingIterations}.dot")
                import InterpolantAutomaton.{ getBlockLabel, logAuto }
                // refineRec(toDetNFA(cfg - ia), NFA[Set[Int], L](Set(), Set(), Set()), remainingIterations - 1)
                logAuto(toDetNFA(r + ia),
                  { x: Int => x.toString },
                  { e: L => getBlockLabel(e) },
                  s"/tmp/det-${maxIterations - remainingIterations}.dot")

                if (remainingIterations < maxIterations) {
                  logAuto(toDetNFA(r),
                    { x: Int => x.toString },
                    { e: L => getBlockLabel(e) },
                    s"/tmp/r-${maxIterations - remainingIterations}.dot")
                }

                logAuto(toDetNFA(ia),
                  { x: Int => x.toString },
                  { e: L => getBlockLabel(e) },
                  s"/tmp/ia-${maxIterations - remainingIterations}.dot")

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
