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

  import org.scalallvm.assembly.AssemblySyntax._
  import au.edu.mq.comp.perentiemq.cfg.{ CFGBlockEntry, CFGEntry, CFGExitCondEntry, CFGBlock, CFGChoice, CFGGoto }

  private def getBlockLabel[L](b: L): String = b match {
    case CFGBlockEntry(Block(BlockLabel(name), _, _, _, _)) =>
      name
    case CFGBlockEntry(Block(NoLabel(), _, _, _, _)) =>
      "<no label>"
    case CFGBlockEntry(Block(ImplicitLabel(k), _, _, _, _)) =>
      "%" + k.toString

    case CFGExitCondEntry(c) => c match {
      case CFGChoice(name, choice, tgt) =>
        s"$name is $choice"
      case CFGGoto(tgt) => s"Goto($tgt)"
      // s"C(${c.target})"
    }
  }

  private def logAuto[L](a: NFA[Int, L], numToTerm: Int => TypedTerm, labelToString: L => String, filename: String) {
    import reflect.io._
    import au.edu.mq.comp.automat.util.DotConverter.toDot
    import au.edu.mq.comp.dot.DOTPrettyPrinter.format
    import au.edu.mq.comp.dot.DOTSyntax.{ Attribute, StringLit, Ident }

    val dotiAuto = toDot(a,
      nodeProp = {
        x: Int ⇒ List(Attribute("label", StringLit(s"$x : ${numToTerm(x).unIndex.getTerm.toString}")))
      },
      nodeDotName = {
        x: Int ⇒ "N" + x.toString
      },
      labelDotName = {
        x: L => labelToString(x) //.toString
      })
    File(filename).writeAll(format(dotiAuto).layout)
  }

  def computeInterpolantAuto[L](i: Seq[TypedTerm], t: Seq[L], traceToTerms: Seq[L] => Seq[Vector[TypedTerm]], k: Int): NFA[Int, L] = {
    println("---------------------------------")
    println("Trace is:")
    ((0 to t.size - 1) zip (t map getBlockLabel)) map { case (i, t) => println(s"$i : $t") }
    println("Interpolants are :")
    ((0 to i.size + 1) zip (TypedTerm(true) +: (i.map(_.unIndex)) :+ TypedTerm(false))) map {
      case (i, p) => println(s"I_$i : ${p.getTerm}")
    }
    //  get the block entries in the trace t
    val blockEntries = t.filter(_.isInstanceOf[CFGBlockEntry[_, _]])

    //  debug: build a linear automaton with trace and interpolants as labels
    //  
    val numToTerm = ((0 to i.size + 1) zip (TypedTerm(true) +: (i.map(_.unIndex)) :+ TypedTerm(false))).toMap
    val bb = (0 to t.size - 1) zip (1 to t.size)
    val iAuto = NFA[Int, String](
      Set(0),
      ((bb zip t) map { case ((src, tgt), l) => (src ~> tgt)(getBlockLabel(l)) }).toSet,
      Set(i.size + 1))
    logAuto(iAuto, numToTerm, { e: String => e }, s"/tmp/interpolantAuto-$k.dot")

    //  compute repeated entry blocks and the indices at which they appear
    //  
    val tNames = ((t zip (0 to t.size - 1)).filter(_._1.isInstanceOf[CFGBlockEntry[_, _]]))
    // map { b => (getBlockLabel(b._1), b._2) } 
    val blockEnt = tNames.groupBy(l => l._1) map {
      case (x, k) => (x, k.map(_._2))
    }
    // println("Entry repetitions are")
    // blockEnt map println
    //  determine repetitions and check post-condition
    import scala.collection.mutable.ListBuffer
    val newEdges = new ListBuffer[Edge[Int, L]]()
    blockEnt foreach {
      case (e, k) if k.size > 1 =>
        // println(getBlockLabel(e) + " is repeated " + k.size)
        //  printout the post conditions to be checked
        //  first instance we assume we take all the pairs (i,j) with i the first
        //  index in k, and j ranging over the tail of k
        k.tail foreach {
          case x =>
            println(s"Have to check Post(I_${x}, ${getBlockLabel(e)}) subseteq I_${k.head + 1}")
            val b = Semantics.checkPost(numToTerm(x), traceToTerms(Seq(e)), numToTerm(k.head + 1))
            println("Post included ? " + b)
            if (b)
              newEdges += Edge[Int, L](x, e, k.head + 1)
        }
      case _ => ()
    }
    // println("new edges")
    // newEdges map println
    //  create the interpolant autoamton
    val iAuto2 = NFA[Int, L](
      Set(0),
      ((bb zip t) map { case ((src, tgt), l) => (src ~> tgt)(l) }).toSet ++ newEdges.toSet,
      Set(i.size + 1))
    logAuto(iAuto2, numToTerm, { e: L => getBlockLabel(e) }, s"/tmp/interpolantAuto-augmented-$k.dot")

    println("---------------------------------")
    iAuto2
  }

}

// nodeProp: S ⇒ List[Attribute] = { s: S ⇒ List[Attribute]() },
//                    nodeDotName: S ⇒ String = { s: S ⇒ s.toString },
//                    labelDotName: L ⇒ String = { l: L ⇒ l.toString } ): DotSpec = {

// val nfa1Dot: DotSpec = toDot( nfa1 )
//    //  print automaton in a file
//    File( "/tmp/nfa1.dot" ).writeAll( format( nfa1Dot ).layout )

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
    val indexMap: Map[TypedTerm, Set[Int]] = flattenEntry.getIndexMap
    val minmap = (srcP.getVars map { x => (TypedTerm(x), indexMap.getOrElse(TypedTerm(x), Set(0)).min) }).toMap
    val maxmap = (srcP.getVars map { x => (TypedTerm(x), indexMap.getOrElse(TypedTerm(x), Set(0)).max) }).toMap
    //  compute indexing for srcP
    // println(flattenEntry.getVars)
    // println(minmap)
    // println(maxmap)
    // println("Entry term is : " + entry)
    //  build indexed srcP
    val t = srcP index { case v if minmap.isDefinedAt(v) => minmap(v) }
    // println(t)
    val p = tgtP index { case v if minmap.isDefinedAt(v) => maxmap(v) }
    // println(p)
    //  check whether srcP and entry and !tgtP is SAT
    import smtlib.interpreters.{ SMTSolver, GenericSolver }
    import smtlib.util.Logics.isSat
    import scala.util.{ Try, Failure, Success }
    import smtlib.parser.CommandsResponses.{ SatStatus, UnsatStatus, GetInterpolantsResponseSuccess }
    import smtlib.interpreters.Configurations._
    import smtlib.parser.Commands.{ Exit, Reset }

    val solver = SMTSolver(Z3, QFLIAFullConfig).get
    val answer = isSat(t & flattenEntry & !p)(solver)
    solver.eval(Exit())
    answer match {
      case Success(SatStatus) => false
      case Success(UnsatStatus) => true
      case status =>
        sys.error(s"strange solver status: $status")
    }
    // true
  }

  /**
   * Generate SSA form TypedTerm for Entry block
   *
   */
  // def toSSA[L](traceToTerms: Seq[L] => Seq[Vector[TypedTerm]])(e: Entry) = {
  //   traceToTerms(Trace(e))
  // }
}

