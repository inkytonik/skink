package au.edu.mq.comp.perentiemq.refinement

import au.edu.mq.comp.automat.auto.{ DetAuto, NFA }
import au.edu.mq.comp.automat.lang.Lang
import au.edu.mq.comp.automat.edge.Implicits._
import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.{ Entry, Trace }
// import au.edu.mq.comp.automat.edge.Implicits._
import au.edu.mq.comp.automat.edge.Edge
import smtlib.util.{ TypedTerm }
import smtlib.interpreters.{ GenericSolver }
import smtlib.parser.Terms.SSymbol
import au.edu.mq.comp.perentiemq.cfg.{ CFGBlockEntry, CFGEntry, CFGExitCondEntry, CFGBlock, CFGChoice, CFGGoto }
import smtlib.util.Logics.{ isSat, getInterpolants }
import scala.collection.mutable.ListBuffer

/**
 * Build an interpolant automaton from a trace.
 */
object InterpolantAutomaton {

  /**
   * Compute an interpolanta automaton
   *
   * @param trace An infeasible trace.
   * @param traceToTerms An mapping that can produce the SSA form of
   * a sequence of entries
   * @param  solver An SMT solver. The last command issued to the solver
   * is CheckSat, resulted in UNSAT. The SSA terms that correspond to the trace
   * has been pushed to the solver
   * @param isBlockEntry Determines whether an element of the trace has sied effecs
   * or not. Typically, CFGBlockEntry do and CFGChoice don't
   * @param L is the type of the elements in a trace. Should be Entry.
   * @return An interpolant automaton that accepts trace and other infeasible
   * traces.
   */
  def apply[L](trace: Seq[L],
    traceTerms: Seq[TypedTerm],
    traceTermsNameMap : Map[TypedTerm, SSymbol],
    k: Int,
    traceToTerms: Seq[L] => Seq[Vector[TypedTerm]],
    isBlockEntry: L => Boolean,
    backward: Boolean = false)(implicit solver: GenericSolver): NFA[Int, L] = {

    import scala.language.postfixOps

    //  build a single trace acceptor

    //  `trace` is UNSAT and the solver is in the state 
    //  it was after the last CheckSat which produced UNSAT
    //  First build a linear automaton that accepts trace only
    val singleTraceAcceptor = NFA[Int, L](
      Set(0),
      (if (backward) trace.reverse else trace).zipWithIndex map {
        case k => Edge[Int, L](k._2, k._1, (k._2 + 1))
      } toSet,
      Set(trace.size), 
      Set(trace.size),
      name = s"${if (backward) "Reverse " else ""}Linear automaton, iteration $k")

    //  log the linear automaton

    logAuto(singleTraceAcceptor,
      { x: Int => x.toString },
      // { e: L => e.toString },
      { e: L => getBlockLabel(e) },
      s"/tmp/${if (backward) "Rev-" else ""}linear-auto-$k.dot")

    //  determine repeated CFGBlockEntry blocks 

    //  CFGChoice are not to be considered as they have no side effects
    val tNames: Seq[(L, Int)] = (if (backward) trace.reverse else trace).zipWithIndex.filter(b => isBlockEntry(b._1))
    //  Group the entries and compute the indices at which they occur
    //  Each entry in trace is mapped to the set of indices it appears
    //  in trace
    val blockEnt: Map[L, Seq[(L, Int)]] = tNames.groupBy(l => l._1)
    val q = blockEnt map {
      case x => (x._1, x._2.unzip._2)
    } toList
    //  l contains the repeated blocks
    val l = q filter (_._2.size > 1)

    if (l.isEmpty) {
      //  if empty no repetition, we return the singleTraceAcceptor
      singleTraceAcceptor
    } else {

      //  compute interpolants

      //  We should check that the logic and solver support it 
       // DEBUG
      // val i0: Seq[TypedTerm] =
      //   TypedTerm(true) +:
      //     getInterpolants(traceTermsNameMap)(solver).get :+
      //     TypedTerm(false)
      // println("---------------------------------------")
      // i0 map { x => println(x.getTerm) }
      // println("---------------------------------------")
      val i: Seq[TypedTerm] =
        TypedTerm(true) +:
          (
            if (backward)
              getInterpolants(traceTerms, traceTermsNameMap)(solver).get.map(_.unIndex).reverse.map(!_)
            else
              getInterpolants(traceTerms, traceTermsNameMap)(solver).get.map(_.unIndex)
          ) :+
          TypedTerm(false)


      //  try to add new edges

      //  if entry e appears in the trace at location k and j, k -- e -> k + 1
      //  and j -- e -> j + 1, and  k < j, 
      //  we can try to add an edge j  - e -> (k + 1)
      //  In theory we can try all the pairs for an entry but
      //  we restrict for now to all the pairs with first index as the
      //  first component
      val newEdges = new ListBuffer[Edge[Int, L]]()
      // println(s"--{$k}--")
      for ((entry, listIndex) <- l; k = listIndex.head; j <- listIndex.tail) {

        //  check whether Post(Interpolant(j), entry) implies Interpolant(k + 1)
        // println(s"$entry")
        // println(s"($backward) Checking Post($j:${i(j).getTerm}) via ${getBlockLabel(entry)} implies ${k+1}:${i(k+1).getTerm}")
        if (Semantics.checkPost(i(j), traceToTerms(Seq(entry)), i(k+1))) {
          // println(s"Included, adding edge $j to ${k+1}")
          newEdges += Edge[Int, L](j, entry, k + 1)
        }
      }

      //  interpolant automaton

      val interpolantAuto = NFA[Int, L](
        Set(0),
        singleTraceAcceptor.edges ++ newEdges,
        Set(trace.size),
        Set(trace.size),
        name = s"${if (backward) "Reverse " else ""}Interpolant automaton, iteration $k")

      //  log the interpolant automaton

      logAuto(interpolantAuto,
        { x: Int => i(x).unIndex.getTerm.toString },
        { e: L => getBlockLabel(e) },
        s"/tmp/interpolantAuto${if (backward) "-rev" else ""}-$k.dot")

      interpolantAuto
    }
  }

  import smtlib.util.{ TypedTerm }
  import smtlib.interpreters.{ GenericSolver }
  import smtlib.util.Logics.{ getInterpolants }
  import scala.util.{ Failure, Success }

  import org.scalallvm.assembly.AssemblySyntax._
  import au.edu.mq.comp.perentiemq.cfg.{ CFGBlockEntry, CFGEntry, CFGExitCondEntry, CFGBlock, CFGChoice, CFGGoto }

  def getBlockLabel[L](b: L): String = b match {
    case CFGBlockEntry(Block(BlockLabel(name), _, _, _, _)) =>
      name
    case CFGBlockEntry(Block(NoLabel(), _, _, _, _)) =>
      "%0"
    case CFGBlockEntry(Block(ImplicitLabel(k), _, _, _, _)) =>
      "%" + k.toString

    case CFGExitCondEntry(c) => c match {
      case CFGChoice(name, choice, tgt) =>
        s"$name is $choice"
      case CFGGoto(tgt) => s"Goto($tgt)"
      // s"C(${c.target})"
    }
  }

  def logAuto[L](a: NFA[Int, L], numToTerm: Int => String, labelToString: L => String, filename: String) {
    import reflect.io._
    import au.edu.mq.comp.automat.util.DotConverter.toDot
    import au.edu.mq.comp.dot.DOTPrettyPrinter.format
    import au.edu.mq.comp.dot.DOTSyntax.{ Attribute, StringLit, Ident }

    val dotiAuto = toDot(a,
      nodeProp = {
        x: Int ⇒ if (a.blocking.contains(x))
             List(Attribute("shape", Ident("rectangle")),Attribute("label", StringLit(s"$x : ${numToTerm(x)}")))
             else 
            List(Attribute("label", StringLit(s"$x : ${numToTerm(x)}")))
      },
      nodeDotName = {
        x: Int ⇒ "N" + x.toString
      },
      labelDotName = {
        x: L => labelToString(x) //.toString
      },
      graphProp = {
        () => List(Attribute("rankdir", Ident("TB")))
      },
      graphDirective = {
        () => List(s"rank = source ; N0", s"rank = sink ; N${a.accepting.head}")
      })
    File(filename).writeAll(format(dotiAuto).layout)
  }

}

/**
 * Pre/post condition computation
 *
 */
object Semantics {
  import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.traceToTerms
  import smtlib.util.TypedTerm

  def checkPost(srcP: TypedTerm, entry: Seq[Vector[TypedTerm]], tgtP: TypedTerm): Boolean = {
    //  get the index range in entry
    val flattenEntry = (entry.head).reduceLeft(_ & _)
    assert(entry.size == 1)

    val indexMap: Map[TypedTerm, Set[Int]] = flattenEntry.getIndexMap

    val minmap = (srcP.getVars map { x => (TypedTerm(x), indexMap.getOrElse(TypedTerm(x), Set(0)).min) }).toMap
    val maxmap = (srcP.getVars map { x => (TypedTerm(x), indexMap.getOrElse(TypedTerm(x), Set(0)).max) }).toMap
    //  compute indexing for srcP
    // println(Console.MAGENTA_B + "checking Post for")
    // println(srcP.getTerm)
    
    // println(tgtP.getTerm)
    // println(Console.GREEN_B)

    // println(flattenEntry.getVars)
    // println(minmap)
    // println(maxmap)
    // println("Entry term is : " + flattenEntry.getTerm)
    //  build indexed srcP
    // println(Console.RESET)
    val t = srcP index { case v if minmap.isDefinedAt(v) => minmap(v) }
    // println(t.getTerm)
    val p = tgtP index { case v if minmap.isDefinedAt(v) => maxmap(v) }
    // println(p.getTerm)
    //  check whether srcP and entry and !tgtP is SAT
    import smtlib.interpreters.{ SMTSolver, GenericSolver }
    import smtlib.util.Logics.isSat
    import scala.util.{ Try, Failure, Success }
    import smtlib.parser.CommandsResponses.{ SatStatus, UnsatStatus, GetInterpolantsResponseSuccess }
    import smtlib.interpreters.Configurations._
    import smtlib.parser.Commands.{ Exit, Reset }

    val solver = SMTSolver(Z3, QFAUFLIAFullConfig).get
    val answer = isSat(t & flattenEntry & !p)(solver)
    // println(Console.RED_B + "Result included or not " + answer + Console.RESET)
    solver.eval(Exit())
    answer match {
      case Success((SatStatus, _, _)) => false
      case Success((UnsatStatus, _, _)) => true
      case status =>
        sys.error(s"[CheckPost] strange solver status: $status")
    }
    // true
  }

}

