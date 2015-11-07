package au.edu.mq.comp.perentiemq.refinement

import au.edu.mq.comp.automat.auto.{DetAuto, NFA}
import au.edu.mq.comp.automat.lang.Lang
import au.edu.mq.comp.automat.edge.Implicits._
import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.{Entry, Trace}
import au.edu.mq.comp.automat.edge.Edge
import smtlib.util.{TypedTerm}
import smtlib.interpreters.{GenericSolver}
import smtlib.parser.Terms.SSymbol
import au.edu.mq.comp.perentiemq.cfg.{CFGBlockEntry, CFGEntry, CFGExitCondEntry, CFGBlock, CFGChoice, CFGGoto}
import smtlib.util.Logics.{isSat, getInterpolants}
import scala.collection.mutable.ListBuffer

object PrettyPrint {
    import smtlib.util.{TypedTerm}
    import smtlib.interpreters.{GenericSolver}
    import smtlib.util.Logics.{getInterpolants}
    import scala.util.{Failure, Success}

    import org.scalallvm.assembly.AssemblySyntax._
    import au.edu.mq.comp.perentiemq.cfg.{CFGBlockEntry, CFGEntry, CFGExitCondEntry, CFGBlock, CFGChoice, CFGGoto}

    def getBlockLabel[L](b : L) : String = b match {
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
        }
    }

    def logAuto[L](a : NFA[Int, L], numToTerm : Int => String, labelToString : L => String, filename : String) {
        import reflect.io._
        import au.edu.mq.comp.automat.util.DotConverter.toDot
        import au.edu.mq.comp.dot.DOTPrettyPrinter.format
        import au.edu.mq.comp.dot.DOTSyntax.{Attribute, StringLit, Ident}

        val dotiAuto = toDot(
            a,
            nodeProp = {
            x : Int ⇒
                if (a.blocking.contains(x))
                    List(Attribute("shape", Ident("rectangle")), Attribute("label", StringLit(s"$x : ${numToTerm(x)}")))
                else
                    List(Attribute("label", StringLit(s"$x : ${numToTerm(x)}")))
        },
            nodeDotName = {
            x : Int ⇒ "N" + x.toString
        },
            labelDotName = {
            x : L => labelToString(x) //.toString
        },
            graphProp = {
            () => List(Attribute("rankdir", Ident("TB")))
        },
            graphDirective = {
            () => List(s"rank = source ; N0", s"rank = sink ; N${a.accepting.head}")
        }
        )
        File(filename).writeAll(format(dotiAuto).layout)
    }
}

/**
 * Build an interpolant automaton from a trace.
 */
object PrefixInterpolantAuto {
    import PrettyPrint._
    import LinearInterAuto.repeatedLabels
    /**
     * Make a simple linear automaton accepting a trace
     */
    // private def linearInterAuto[L](trace : Seq[L]) = {
    //     //  set of edges is given by the trace
    //     //  if the trace is t_1 t_2 ... t_k the automaton
    //     //  is 0 - t1 -> 1 - t_2 -> 2 - t_3 -> ..... - t_k -> k + 1
    //     import scala.language.postfixOps
    //     NFA[Int, L](
    //         Set(0),
    //         trace.zipWithIndex map {
    //             case (l, i) => Edge[Int, L](i, l, (i + 1))
    //         } toSet,
    //         accepting = Set(trace.size), //  set of final states
    //         blocking = Set(trace.size), //  set of blocking states
    //         name = "Linear interpolant automaton"
    //     )
    // }

    /**
     * Compute labels that are reapeated on a trace
     */
    // private def repeatedLabels[L](trace : Seq[L]) : Map[L, Seq[Int]] = {
    //     //  index each label and group them according to the label
    //     trace.zipWithIndex.groupBy(l => l._1) map {
    //         case x => (x._1, x._2.unzip._2)
    //     } filter (_._2.size > 1)
    // }

    /**
     * Get interpolants
     */
    private def interpolantsFor(namedTerms : Seq[(TypedTerm, SSymbol)])(implicit solver : GenericSolver) : Seq[TypedTerm] = {
        TypedTerm(true) +:
            getInterpolants(namedTerms)(solver).get.map(_.unIndex) :+
            TypedTerm(false)
    }

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
    def apply[L](
        trace : Seq[L],
        traceTerms : Seq[(TypedTerm, SSymbol)],
        k : Int,
        traceToTerms : Seq[L] => Seq[Vector[TypedTerm]],
        isBlockEntry : L => Boolean
    )(implicit solver : GenericSolver) : NFA[Int, L] = {

        import scala.language.postfixOps

        //  get the linear NFA from the trace
        val linearNFA = LinearInterAuto(trace)
        //  log the linear automaton
        // logAuto(
        //     linearNFA,
        //     { x : Int => x.toString },
        //     // { e: L => e.toString },
        //     { e : L => getBlockLabel(e) },
        //     s"/tmp/linear-auto-$k.dot"
        // )

        //  check if any repeated block, omit CFGChoice
        repeatedLabels(trace) match {
            // repeatedLabels(trace).filter(b => isBlockEntry(b._1)) match {

            case m if (m.size == 0) => linearNFA

            case m =>

                //  get the interpolants
                val i = interpolantsFor(traceTerms)(solver)

                //  try to add new edges

                //  if entry e appears in the trace at location k and j, k -- e -> k + 1
                //  and j -- e -> j + 1, and  k < j, 
                //  we can try to add an edge j  - e -> (k + 1)
                //  In theory we can try all the pairs for an entry but
                //  we restrict for now to all the pairs with first index as the
                //  first component
                val newEdges = new ListBuffer[Edge[Int, L]]()
                for ((entry, listIndex) <- m; k = listIndex.head; j <- listIndex.tail) {

                    //  check whether Post(Interpolant(j), entry) implies Interpolant(k + 1)
                    if (Semantics.checkPost(i(j), traceToTerms(Seq(entry)), i(k + 1))) {
                        newEdges += Edge[Int, L](j, entry, k + 1)
                    }
                }

                //  return the linear auto + the new edges
                val interpolantAuto = NFA[Int, L](
                    Set(0),
                    linearNFA.edges ++ newEdges,
                    Set(trace.size),
                    Set(trace.size),
                    name = s"Prefix interpolant automaton, iteration $k"
                )

                //  log the interpolant automaton

                // logAuto(
                //     interpolantAuto,
                //     { x : Int => i(x).unIndex.getTerm.toString },
                //     { e : L => getBlockLabel(e) },
                //     s"/tmp/prefix-interpolantAuto-$k.dot"
                // )

                interpolantAuto
        }

    }

}

object LinearInterAuto {
    /**
     * Make a simple linear automaton accepting a trace
     */
    def apply[L](trace : Seq[L]) = {
        //  set of edges is given by the trace
        //  if the trace is t_1 t_2 ... t_k the automaton
        //  is 0 - t1 -> 1 - t_2 -> 2 - t_3 -> ..... - t_k -> k + 1
        import scala.language.postfixOps
        NFA[Int, L](
            Set(0),
            trace.zipWithIndex map {
                case (l, i) => Edge[Int, L](i, l, (i + 1))
            } toSet,
            accepting = Set(trace.size), //  set of final states
            blocking = Set(trace.size), //  set of blocking states
            name = "Linear interpolant automaton"
        )
    }

    /**
     * Compute labels that are reapeated on a trace
     */
    def repeatedLabels[L](trace : Seq[L]) : Map[L, Seq[Int]] = {
        //  index each label and group them according to the label
        trace.zipWithIndex.groupBy(l => l._1) map {
            case x => (x._1, x._2.unzip._2)
        } filter (_._2.size > 1)
    }
}

/**
 * Build an interpolant automaton from a trace.
 */
object SuffixInterpolantAuto {
    import PrettyPrint._
    import LinearInterAuto.repeatedLabels
    /**
     * Make a simple linear automaton accepting a trace
     */
    // private def linearInterAuto[L](trace : Seq[L]) = {
    //     //  set of edges is given by the trace
    //     //  if the trace is t_1 t_2 ... t_k the automaton
    //     //  is 0 - t1 -> 1 - t_2 -> 2 - t_3 -> ..... - t_k -> k + 1
    //     import scala.language.postfixOps
    //     NFA[Int, L](
    //         Set(0),
    //         trace.zipWithIndex map {
    //             case (l, i) => Edge[Int, L](i, l, (i + 1))
    //         } toSet,
    //         accepting = Set(trace.size), //  set of final states
    //         blocking = Set(trace.size), //  set of blocking states
    //         name = "Linear interpolant automaton"
    //     )
    // }

    /**
     * Compute labels that are reapeated on a trace
     */
    // private def repeatedLabels[L](trace: Seq[L]): Map[L, Seq[Int]] = {
    //   //  index each label and group them according to the label
    //   trace.zipWithIndex.groupBy(l => l._1) map {
    //     case x => (x._1, x._2.unzip._2)
    //   } filter (_._2.size > 1)
    // }

    /**
     * Get interpolants
     */
    // private def interpolantsFor(namedTerms : Seq[(TypedTerm, SSymbol)])(implicit solver : GenericSolver) : Seq[TypedTerm] = {
    //     TypedTerm(true) +:
    //         getInterpolants(namedTerms)(solver).get.map(_.unIndex) :+
    //         TypedTerm(false)
    // }

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
    def apply[L](
        trace : Seq[L],
        suffixLength : Int,
        traceTerms : Seq[(TypedTerm, SSymbol)],
        k : Int,
        traceToTerms : Seq[L] => Seq[Vector[TypedTerm]],
        isBlockEntry : L => Boolean
    )(implicit solver : GenericSolver) : NFA[Int, L] = {

        import scala.language.postfixOps

        //  get the linear NFA from the trace
        val linearNFA = LinearInterAuto(trace)
        //  log the linear automaton
        // logAuto(
        //     linearNFA,
        //     { x : Int => x.toString },
        //     // { e: L => e.toString },
        //     { e : L => getBlockLabel(e) },
        //     s"/tmp/linear-auto-$k.dot"
        // )

        //  check if any repeated block, omit CFGChoice
        repeatedLabels(trace) match {

            //  in this case we may indicate that no new reason has been found
            //  to avoid using the same automaton twice
            //
            case m if (m.size == 0) => linearNFA

            case m =>
                //  get the interpolants for the rerverse trace 
                val reverseInterpolants = getInterpolants(traceTerms)(solver).get.map(_.unIndex).reverse

                //  we have to 1) complement each interpolant to get an
                //  interpolant for the forward trace and 2) pad with true interpolants
                //  the prefix
                //  we have (trace.length - suffixLength) * True, then each i in reverseInterpolants
                //  complemented and then False
                val i = List.fill(trace.size - suffixLength + 1)(TypedTerm(true)) ++
                    (reverseInterpolants map { x => !x }) :+ TypedTerm(false)

                //  try to add new edges
                // println(s"size of trace = ${trace.size}, suffixLength = $suffixLength, size of i = ${i.size}")
                //  if entry e appears in the trace at location k and j, k -- e -> k + 1
                //  and j -- e -> j + 1, and  k < j, 
                //  we can try to add an edge j  - e -> (k + 1)
                //  In theory we can try all the pairs for an entry but
                //  we restrict for now to all the pairs with first index as the
                //  first component
                val newEdges = new ListBuffer[Edge[Int, L]]()
                for ((entry, listIndex) <- m; k = listIndex.head; j <- listIndex.tail) {

                    //  check whether Post(Interpolant(j), entry) implies Interpolant(k + 1)
                    if (Semantics.checkPost(i(j), traceToTerms(Seq(entry)), i(k + 1))) {
                        newEdges += Edge[Int, L](j, entry, k + 1)
                    }
                }

                //  return the linear auto + the new edges
                val interpolantAuto = NFA[Int, L](
                    Set(0),
                    linearNFA.edges ++ newEdges,
                    Set(trace.size),
                    Set(trace.size),
                    name = s"Suffix nterpolant automaton, iteration $k"
                )
                //  log the interpolant automaton

                // logAuto(
                //     interpolantAuto,
                //     { x : Int => i(x).unIndex.getTerm.toString },
                //     { e : L => getBlockLabel(e) },
                //     s"/tmp/suffix-interpolantAuto-$k.dot"
                // )

                interpolantAuto
        }

    }

}

/**
 * Pre/post condition computation
 *
 */
object Semantics {
    import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.traceToTerms
    import smtlib.util.TypedTerm

    def checkPost(srcP : TypedTerm, entry : Seq[Vector[TypedTerm]], tgtP : TypedTerm) : Boolean = {
        //  get the index range in entry
        val flattenEntry = (entry.head).reduceLeft(_ & _)
        assert(entry.size == 1)

        val indexMap : Map[TypedTerm, Set[Int]] = flattenEntry.getIndexMap

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
        import smtlib.interpreters.{SMTSolver, GenericSolver}
        import smtlib.util.Logics.isSat
        import scala.util.{Try, Failure, Success}
        import smtlib.parser.CommandsResponses.{SatStatus, UnsatStatus, GetInterpolantsResponseSuccess}
        import smtlib.interpreters.Configurations._
        import smtlib.parser.Commands.{Exit, Reset}

        val solver = SMTSolver(Z3, QFAUFLIAFullConfig).get
        val answer = isSat(t & flattenEntry & !p)(solver)
        // println(Console.RED_B + "Result included or not " + answer + Console.RESET)
        solver.eval(Exit())
        answer match {
            case Success((SatStatus, _, _))   => false
            case Success((UnsatStatus, _, _)) => true
            case status =>
                sys.error(s"[CheckPost] strange solver status: $status")
        }
    }

}

