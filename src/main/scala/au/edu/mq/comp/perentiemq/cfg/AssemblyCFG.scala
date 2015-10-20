package au.edu.mq.comp.perentiemq.cfg

/**
 * Consolidated construction, processing and verification of LLVM assembly CFGs.
 */
object AssemblyCFG extends AssemblyCFGBuilder {

  import au.edu.mq.comp.perentiemq.PerentieMQConfig
  import org.kiama.relation.Tree
  import org.scalallvm.assembly.AssemblySyntax._
  import org.scalallvm.assembly.{ElementProperty, Property, TypeProperty}
  import smtlib.util.TypedTerm

  /**
   * Return whether or not the named function is a special verifier
   * function.
   */
  def isVerifierFunction(name: String): Boolean =
    name.startsWith("__VERIFIER")

  /**
   * Return whether or not the named function is an LLVM intrinsic.
   */
  def isLLVMIntrinsic(name: String): Boolean =
    name.startsWith("llvm")

  /**
   * An alias for trace entries in an Assembly CFG.
   */
  type Entry = CFGEntry[FunctionDefinition, Block]

  /**
   * A trace is just an ordered collection of trace entries.
   */
  case class Trace(entries: Seq[Entry])

  /**
   * Convert a trace into terms that express the effect of the trace.
   */
  def traceToTerms(properties: Map[Name, Seq[Property]])(trace: Trace): Seq[Vector[TypedTerm]] = {

    import org.kiama.==>
    import org.kiama.attribution.Decorators
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import smtlib.parser.Terms.Sort
    import smtlib.theories.{ArraysEx, Core, Ints}
    import smtlib.util.Implicits._

    val tree = new Tree[Product, Trace](trace)
    val decorators = new Decorators(tree)

    import tree._
    import decorators._

    // Chain keeping track of stores to memory. Each assignment to a
    // local variable or store to memory location is counted so that
    // we can treat each such occurrence in SSA form.

    type StoreMap = Map[String, Int]

    lazy val stores: Chain[StoreMap] =
      chain(storesin)

    def bumpcount(m: StoreMap, name: Name): StoreMap = {
      val s = render(name)
      val count = m.getOrElse(s, 0)
      m.updated(s, count + 1)
    }

    def storesin(in: Product => StoreMap): Product ==> StoreMap = {
      case _: Trace =>
        Map[String, Int]()
      case n @ Binding(name) =>
        bumpcount(in(n), name)
      case n @ Store(_, tipe, from, _, ArrayElement(name, _), _) =>
        bumpcount(in(n), name)
      case n @ Store(_, _, _, _, Named(name), _) =>
        bumpcount(in(n), name)
    }

    /*
     * Make the indexed name of a particular occurrence of a program variable
     * in a trace.
     *
     * The base variable name is given a numeric index to reflect
     * the fact that it references a particular assigned or stored version of
     * the base name in the trace. E.g., the first use gets @1 and the
     * second gets @2.
     *
     * The `adjust` function is used to adjust the index if one is found.
     * E.g., a decrement by one function can be used here to get the previous
     * index.
     */
    def nameToIndexedName(use: Product, s: String, adjust: Int => Int = identity): String = {
      val index = stores(use).get(s).map(adjust).getOrElse(0)
      s"$s@$index"
    }

    /**
     * Extractor that recognises functions whose calls we want to ignore when
     * generating effect terms. Currently:
     *   - any LLVM intrinsic, such as llvm.stacksave
     *   - special verifier fns, such as __VERIFIER_nondet_int
     */
    object IgnoredFunction {
      def unapply(fn: Function): Boolean =
        fn match {
          case Function(Named(Global(s))) =>
            isLLVMIntrinsic(s) || isVerifierFunction(s)
          case _ =>
            false
        }
    }

    /**
     * Given a node in a trace, return the name of the previous block in
     * the trace. We look up from the node to get the current entry then
     * move to the previous entry and get its block name. If there is no
     * previous entry, return None.
     */
    lazy val prevBlockName: Product => Option[String] =
      attr {
        case tree.prev(entry) =>
          entry match {
            case CFGBlockEntry(Block(BlockLabel(name), _, _, _, _)) =>
              Some(name)
            case CFGExitCondEntry(_) =>
              prevBlockName(entry)
          }
        case tree.parent(p) =>
          prevBlockName(p)
        case _ =>
          None
      }

    /**
     * Return the terms that express the effect of a phi instruction.
     * We find out the previous block from the trace and the effect
     * is to bind the result to the value in the instruction that is
     * associated with that previous block.
     */
    lazy val phiTerms: Phi => Vector[TypedTerm] =
      attr {
        case phi @ Phi(Binding(to), _, preds) =>
          prevBlockName(phi) match {
            case Some(source) =>
              preds.collectFirst {
                case PhiPredecessor(value, Label(Local(label))) if label == source =>
                  value
              } match {
                case Some(value) =>
                  Vector(nterm(to) === vterm(value))
                case None =>
                  sys.error(s"phiTerms: can't find previous block $source in preds: $phi")
              }
            case None =>
              sys.error(s"phiTerms: phi insn in first block: $phi")
          }
      }

    /**
     * Extractor to match stores to array elements. Currently only looks for
     * array element references that have a zero index (to deref the array
     * pointer), followed by the actual index.
     * FIXME: there may well be other cases we should detect.
     */
    object ArrayElement {
      def unapply (value : Value) : Option[(Name,Value)] =
        value match {
          case Named (name) =>
            properties(name).collectFirst {
              case ElementProperty (Named (array),
                                    Vector (ElemIndex (IntT (_), Const (IntC (i))),
                                            ElemIndex (IntT (_), index)))
                       if i == 0 =>
                (array, index)
            }
          case _ =>
            None
        }
    }

    /**
     *
     * Return terms that express the effect of an LLVM node.
     */
    lazy val terms: ASTNode => Vector[TypedTerm] =
      attr {

        // Blocks

        case block: Block =>
          (block.optMetaPhiInstructions ++ block.optMetaInstructions).flatMap(terms)

        // Meta instructions

        case MetaPhiInstruction(insn, _) =>
          terms(insn)

        case MetaInstruction(insn, _) =>
          terms(insn)

        // Instructions

        case _: Alloca =>
          Vector()

        case Binary(Binding(to), op, _: IntT, left, right) =>
          val lterm = vterm(left)
          val rterm = vterm(right)
          val exp: TypedTerm =
            op match {
              case _: Add => lterm + rterm
              case _: Mul => lterm * rterm
              case _: Sub => lterm - rterm
              case _ =>
                println(s"binary int op $op not handled")
                9999
            }
          Vector(nterm(to) === exp)

        case Call(_, _, _, _, _, Function(Named(Global("__VERIFIER_assume"))),
          Vector(ValueArg(IntT(n), _, arg)), _) =>
          if (n == 1)
            Vector(vterm(arg))
          else
            Vector(!(vterm(arg) === 0))

        case Call(_, _, _, _, _, IgnoredFunction(), _, _) =>
          Vector()

        case Compare(Binding(to), ICmp(icond), _: IntT, left, right) =>
          val lterm = vterm(left)
          val rterm = vterm(right)
          val exp =
            icond match {
              case EQ() => lterm === rterm
              case NE() => !(lterm === rterm)
              case UGT() => lterm > rterm
              case UGE() => lterm >= rterm
              case ULT() => lterm < rterm
              case ULE() => lterm <= rterm
              case SGT() => lterm > rterm
              case SGE() => lterm >= rterm
              case SLT() => lterm < rterm
              case SLE() => lterm <= rterm
            }
          Vector(nterm(to) === exp)

        case Convert(Binding(to), _, IntT(_), from, IntT(n)) if n == 1 =>
          Vector(nterm(to) === !(vterm(from) === 0))

        case Convert(Binding(to), _, IntT(n), from, IntT(_)) if n == 1 =>
          Vector(nterm(to) === vterm(from).ifElse(1, 0))

        case Convert(Binding(to), _, _, from, _) =>
          Vector(nterm(to) === vterm(from))

        case _ : GetElementPtr =>
          // We ignore these here, but the associations that they establish
          // between their bound name and their arguments are expressed in
          // the element properties of the name.
          Vector()

        case Load(Binding(to), _, tipe, _, ArrayElement (array, index), _) =>
          Vector(nterm(to) === nterm(array).at(vterm(index)))

        case Load(Binding(to), _, tipe, _, from, _) =>
          Vector(nterm(to) === vterm(from))

        case phi: Phi =>
          phiTerms(phi)

        case Store(_, tipe, from, _, ArrayElement (array, index), _) =>
          Vector(nterm(array) === (prevnterm(array) += (vterm(index), vterm(from))))

        case Store(_, tipe, from, _, to, _) =>
          Vector(vterm(to) === vterm(from))

        case node =>
          println(s"terms not found for $node")
          Vector()

      }

    /*
     * Return a term that expresses an LLVM value.
     * FIXME: currently only does integer constants and names.
     */
    lazy val vterm: Value => TypedTerm = {
      attr {
        case Const(FalseC()) =>
          false
        case Const(IntC(i)) =>
          i
        case Const(TrueC()) =>
          true
        case Named(name) =>
          nterm(name)
        case value =>
          sys.error(s"vterm: unexpected value $value")
      }
    }

    /*
     * Return the sort that should be used for variable name.
     * FIXME: currently only handled Booleans, integers and pointers to integers.
     */
    def typeToSort(name : Name): Sort = {
      val optSort =
        properties(name).collectFirst {
          case TypeProperty (tipe) =>
            tipe match {
              case IntT(n) if n == 1 =>
                Core.BoolSort()
              case IntT(_) =>
                Ints.IntSort()
              case PointerT(ArrayT(_,IntT(_)), _) =>
                ArraysEx.ArraySort(Ints.IntSort(), Ints.IntSort())
              case PointerT(_, _) =>
                Ints.IntSort()
              case _ =>
                sys.error(s"variable type $tipe not supported")
            }
        }
      optSort.getOrElse (sys.error(s"can't find type property for variable $name"))
    }

    /**
     *
     */
    def varTerm (name : Name, id : String) : TypedTerm =
      TypedTerm(id, typeToSort(name))

    /*
     * Return a term that expresses an LLVM name.
     */
    lazy val nterm: Name => TypedTerm =
      attr {
        case name =>
          varTerm(name, nameToIndexedName(name, render(name)))
      }

    /*
     * As for `nterm` but uses the previous index. Useful for making terms
     * that define the new value of the name in terms of the old value.
     */
    lazy val prevnterm: Name => TypedTerm =
      attr {
        case name =>
          varTerm(name, nameToIndexedName(name, render(name), _ - 1))
      }

    /*
     * Return a term that expresses the condition that must be true if
     * an exit condition is used to exit from a block. None is returned
     * if it's not a choice exit condition (so the condition is really
     * "true").
     */
    def exitcondToTerm(exitcond: CFGExitCond[FunctionDefinition, Block]): Option[TypedTerm] =
      exitcond match {
        case CFGChoice(s, value, _) =>
          val id = nameToIndexedName(exitcond, s)
          value match {
            case b: Boolean =>
              val t = TypedTerm(id, Core.BoolSort())
              Some(if (b) t else !t)
            case i: Int =>
              Some(TypedTerm(id, Ints.IntSort()) === i)
            case _ =>
              sys.error(s"exitcondToTerm: unsupported value $value")
          }
        case CFGGoto(_) =>
          None
        // Some(TypedTerm(true))
        case _ =>
          sys.error(s"exitcondToTerm: unsupported type")
      }

    /*
     * Return terms that express the effect of a trace entry, including
     * the transition to the next entry in the trace, if there is one.
     */
    def entryToTerm(entry: Entry): Vector[TypedTerm] =
      entry match {
        case CFGBlockEntry(b) =>
          terms(b)
        case CFGExitCondEntry(c) =>
          exitcondToTerm(c).toVector
      }

    // Return all of the terms arising from this trace
    // tree.root.entries.flatMap(entryToTerm)

    val r = tree.root.entries.map(entryToTerm)
    // println("Store is")
    // stores(tree.root) map println
    r
  }

  /**
   * Verify the given CFG. The IR is assumed to have been processed by
   * `prepareIRForVerification` before the CFG was constructed.
   */
  def verify(cfg: CFG[FunctionDefinition, Block], cfgAnalyser: CFGAnalyser, config: PerentieMQConfig) {

    import au.edu.mq.comp.automat.auto.{ NFA }
    import org.scalallvm.assembly.Analyser
    import scala.annotation.tailrec
    import scala.util.{ Try, Failure, Success }
    import au.edu.mq.comp.perentiemq.refinement.TraceRefinement.{ FailureTrace, traceRefinement }

    /*
     * The prefix used by the SV-COMP to signify special functions.
     */
    val SVCompVerifierPrefix = "@__VERIFIER"

    /*
     * Return whether or not the named function should be verified.
     */

    def isNotToBeVerified(name: String): Boolean =
      name.startsWith(SVCompVerifierPrefix)

    // Return if we don't want to verify this function
    val fname = functionName(cfgAnalyser.function(cfg))
    if (fname != "@main") {
      // if (isNotToBeVerified(fname))
      config.output.emitln("not a main")
      return
    }

    // Gather type information on variables in this CFG
    val funtree = new Tree[ASTNode, FunctionDefinition](cfg.function.cross)
    val funanalyser = new Analyser(funtree)
    val properties = funanalyser.propertiesOfFunction(cfg.function.cross)

    // Make the NFA for this CFG
    val cfganalyser = new CFGAnalyser(cfg)
    val nfa = cfganalyser.nfa(cfg)

    //  sanitise the CFGNFA

    //  sanitise the CFGNFA by removing the edges that do not have any effect
    //  LLVM instructions are either skip of it comes from a fake
    //  edge we introduce

    //  collect 'dummy' which are states that are source of an empty effect
    //  and record their successor in a Map
    val dummyStatesMap = (nfa.edges.filter {
      e => traceToTerms(properties)(Trace(Seq(e.lab))).flatten.isEmpty
    }).map(e => (e.src, e.tgt)).toMap

    //  now we remove each edge s2 - l -> dummyState(s2) with no effect and
    //  use the dummy states map to replace each incoming edge s1 - l -> s2
    //  (where s2 is dummy) by s1 - l -> dummyState(s2)
    import au.edu.mq.comp.automat.edge.Edge
    val nfa2 = NFA(nfa.init,
      (nfa.edges filterNot {
        e => traceToTerms(properties)(Trace(Seq(e.lab))).flatten.isEmpty
      }) map {
        case e if dummyStatesMap.isDefinedAt(e.tgt) => Edge(e.src, e.lab, dummyStatesMap(e.tgt))
        case e => e
      },
      nfa.accepting)

    import au.edu.mq.comp.dot.DOTPrettyPrinter.format
    import reflect.io._
    import au.edu.mq.comp.automat.lang.Lang

    // println(Console.MAGENTA_B)
    // val tt = Lang(nfa).getAcceptedTrace
    // tt.get map println
    // println(Console.GREEN_B)
    // println(tt.get.head.block)
    // println(tt.get.head.condition)
    // println(Console.RESET)

    // println(cfganalyser.toDot(nfa))
    File("/tmp/nfa-perentieMQ.dot").writeAll(format(cfganalyser.toDot(nfa)).layout)
    File("/tmp/nfa-perentieMQ-filtered.dot").writeAll(format(cfganalyser.toDot(nfa2)).layout)
    // Regexp for breaking verified names apart
    val Name = "(.*)@([0-9]+)".r

    import smtlib.parser.Terms.QualifiedIdentifier

    /**
     * An ordering of qualified identifiers that breaks the name apart and
     * orders in increasing order of integer index and then name.
     */
    implicit object QIdOrdering extends scala.math.Ordering[QualifiedIdentifier] {
      def compare(a: QualifiedIdentifier, b: QualifiedIdentifier): Int =
        (a.id.symbol.name, b.id.symbol.name) match {
          case (Name(avar, aind), Name(bvar, bind)) =>
            val ai = aind.toInt
            val bi = bind.toInt
            if (ai == bi)
              avar compare bvar
            else
              ai - bi
        }
    }
    /**
     * Return whether or not the given variable name is of interest
     * at the user level. At present we just ignore the temporary
     * variables since they are easy to spot.
     */
    def isUserLevelVariable(name: String): Boolean = {
      val TempName = "%[0-9]+@[0-9]+".r
      name match {
        case TempName() =>
          false
        case _ =>
          true
      }
    }

    /**
     * Print a failure trace. This is a placeholder until we can
     * produce the appropriate output for the SV-COMP.
     */
    def printTrace(failure: FailureTrace[Entry]) {
      println("trace:")
      for (entry <- failure.trace) {
        entry match {
          case CFGBlockEntry(b) =>
            println(s"  ${b.optBlockLabel}")
          case CFGExitCondEntry(c) =>
            println(s"  $c")
        }
      }
      println("values:")
      if (failure.values.isSuccess) {
        val values = failure.values.get
        for (qid <- failure.ids.sorted)
          if (values.isDefinedAt(qid)) {
            val i = qid.id.symbol.name
            if (isUserLevelVariable(i)) {
              val v = values.get(qid).get.getTerm
              println(s"  $i = $v")
            }
          }
      }
    }

    //  provides color if we are in the terminal (not in the scala SBT ... don't knwo why)
    traceRefinement(
      nfa2,
      { s: Seq[Entry] => traceToTerms(properties)(Trace(s)) },
      { b: CFGBlock[FunctionDefinition, Block] => b.toString },
      { b: Entry => b.isBlockEntry }) match {
        case Success(witnessTrace) => witnessTrace match {
          case None =>
            config.output.emitln("program is correct")
            println(Console.GREEN_B + "Program is correct" + Console.RESET)
          case Some(failTrace) =>
            config.output.emitln("program is incorrect")
            println(Console.MAGENTA_B + "Program is incorrect. Witness trace follows" + Console.RESET)
            printTrace(failTrace)
        }
        case Failure(e) => config.output.emitln(e.getMessage)
      }

  }
}
