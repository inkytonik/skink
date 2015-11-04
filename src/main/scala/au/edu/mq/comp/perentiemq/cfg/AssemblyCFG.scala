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
     * Convenience method for reporting UNKNOWN results.
     */
    def reportUnknown(config : PerentieMQConfig, message : String) {
        config.output.emitln(s"UNKNOWN\n$message")
    }

    /**
     * Return whether or not the named function is a special verifier
     * function.
     */
    def isVerifierFunction(name : String) : Boolean =
        name.startsWith("__VERIFIER")

    /**
     * Return whether or not the named function is an LLVM intrinsic.
     */
    def isLLVMIntrinsic(name : String) : Boolean =
        name.startsWith("llvm")

    /**
     * Return whether or not the named function is a memory allcoation function.
     */
    def isMemoryAllocFunction(name : String) : Boolean =
        List("alloca", "calloc", "free", "malloc") contains name

    /**
     * An alias for trace entries in an Assembly CFG.
     */
    type Entry = CFGEntry[FunctionDefinition, Block]

    /**
     * A trace is just an ordered collection of trace entries.
     */
    case class Trace(entries : Seq[Entry])

    /**
     * Convert a trace into terms that express the effect of the trace.
     */
    def traceToTerms(properties : Map[Name, Seq[Property]])(trace : Trace) : Seq[Vector[TypedTerm]] = {

        import org.kiama.==>
        import org.kiama.attribution.Decorators
        import org.scalallvm.assembly.AssemblyPrettyPrinter
        import scala.annotation.tailrec
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

        lazy val stores : Chain[StoreMap] =
            chain(storesin)

        def bumpcount(m : StoreMap, name : Name) : StoreMap = {
            val s = render(name)
            val count = m.getOrElse(s, 0)
            m.updated(s, count + 1)
        }

        def storesin(in : Product => StoreMap) : Product ==> StoreMap = {
            case _ : Trace =>
                Map[String, Int]()
            case n @ Binding(name) =>
                bumpcount(in(n), name)
            case n @ Store(_, tipe, from, _, ArrayElement(name, _), _) =>
                // println(s"Bumping for $n")
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
        def nameToIndexedName(use : Product, s : String, adjust : Int => Int = identity) : String = {
            val index = stores(use).get(s).map(adjust).getOrElse(0)
            s"$s@$index"
        }

        /*
         * Extractor that recognises functions whose calls we want to ignore when
         * generating effect terms. Currently:
         *   - any LLVM intrinsic, such as llvm.stacksave
         *   - special verifier fns, such as __VERIFIER_nondet_int
         */
        object IgnoredFunction {
            def unapply(fn : Function) : Boolean =
                fn match {
                    case Function(Named(Global(s))) =>
                        isLLVMIntrinsic(s) || isVerifierFunction(s)
                    // || isMemoryAllocFunction(s)
                    case _ =>
                        false
                }
        }

        /*
         * Get the array element property for name, if there is one.
         */
        def elementProperty(name : Name) : Option[(Name, Value)] =
            properties(name).collectFirst {
                case ElementProperty(Named(array),
                    Vector(ElemIndex(IntT(_), Const(IntC(i))),
                        ElemIndex(IntT(_), index))) if i == 0 =>
                    (array, index)
                case ElementProperty(Named(array),
                    Vector(ElemIndex(IntT(_), index))) =>
                    (array, index)
            }

        /**
         * Extractor to match stores to array elements. Currently only looks for
         * array element references that have a zero index (to deref the array
         * pointer), followed by the actual index.
         * FIXME: there may well be other cases we should detect.
         */
        object ArrayElement {
            def unapply(value : Value) : Option[(Name, Value)] =
                value match {
                    case Named(name) =>
                        elementProperty(name)
                    case _ =>
                        None
                }
        }

        /**
         * Matcher for assumption function names.
         */
        object AssumeName {
            def unapply(name : Name) : Boolean =
                name == Global("__VERIFIER_assume")
        }

        /**
         * Matcher for nondet function names. Successful matches return the
         * identifier of the type that is returned by the matched function.
         */
        object NondetFunctionName {
            def unapply(name : Name) : Option[String] = {
                val NondetName = "__VERIFIER_nondet_(.+)$".r
                name match {
                    case Global(NondetName(tipe)) =>
                        Some(tipe)
                    case _ =>
                        None
                }
            }
        }

        /**
         * Matcher for types that we support comparisons between.
         */
        object ComparisonType {
            def unapply(tipe : Type) : Boolean =
                tipe match {
                    case _ : IntT | _ : PointerT =>
                        true
                    case _ =>
                        false
                }
        }

        /*
         *
         * Return terms that express the effect of an LLVM node.
         */
        lazy val terms : ASTNode => Vector[TypedTerm] =
            attr {

                // Blocks

                case block : Block =>
                    (block.optMetaPhiInstructions ++ block.optMetaInstructions).flatMap(terms)

                // Meta instructions

                case MetaPhiInstruction(insn, _) =>
                    terms(insn)

                case MetaInstruction(insn, _) =>
                    terms(insn)

                // Instructions

                // Franck: I think the following instruction should define a term as a store
                // %13 = %11
                // Alloca(Binding(Local(13)),NotInAlloca(),IntT(32),NumElements(IntT(64),Named(Local(11))),Align(16))

                // case Alloca(Binding(to),_,_,NumElements(_, from),_) =>
                //    Vector(nterm(to) === vterm(from))

                case _ : Alloca =>
                    Vector()

                case Binary(Binding(to), op, _ : IntT, left, right) =>
                    val lterm = vterm(left)
                    val rterm = vterm(right)
                    val (exp, signed) : (TypedTerm, Boolean) =
                        op match {
                            case _ : Add  => (lterm + rterm, true)
                            case _ : And  => (lterm & rterm, true)
                            case _ : Mul  => (lterm * rterm, true)
                            case _ : Or   => (lterm | rterm, true)
                            case _ : SDiv => (lterm / rterm, true)
                            case _ : SRem => (lterm % rterm, true)
                            case _ : Sub  => (lterm - rterm, true)
                            case _ : UDiv => (lterm / rterm, false)
                            case _ : URem => (lterm % rterm, false)
                            case _ : XOr  => (lterm ^ rterm, true)
                            case _ =>
                                sys.error(s"binary int op $op not handled")
                        }
                    val eqterm = nterm(to) === exp
                    if (signed) Vector(eqterm) else Vector(eqterm, nterm(to) >= 0)

                case Call(_, _, _, _, _, VerifierFunction(AssumeName()),
                    Vector(ValueArg(IntT(size), Vector(), arg)), _) =>
                    if (size == 1)
                        Vector(vterm(arg))
                    else
                        Vector(!(vterm(arg) === 0))

                case Call(Binding(to), _, _, _, _, VerifierFunction(NondetFunctionName(tipe)), Vector(), _) =>
                    tipe match {
                        case "size_t" | "u32" | "uchar" | "uint" | "ulong" | "unsigned" | "ushort" =>
                            Vector(nterm(to) >= 0)
                        case _ =>
                            Vector()
                    }

                case Call(_, _, _, _, _, IgnoredFunction(), _, _) =>
                    Vector()

                case Compare(Binding(to), ICmp(icond), ComparisonType(), left, right) =>
                    val lterm = vterm(left)
                    val rterm = vterm(right)
                    val exp =
                        icond match {
                            case EQ()  => lterm === rterm
                            case NE()  => !(lterm === rterm)
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

                case Convert(Binding(to), _, IntT(m), from, IntT(n)) if m == n =>
                    Vector(nterm(to) === vterm(from))

                case Convert(Binding(to), _, IntT(_), from, IntT(n)) if n == 1 =>
                    Vector(nterm(to) === !(vterm(from) === 0))

                case Convert(Binding(to), _, IntT(n), from, IntT(_)) if n == 1 =>
                    Vector(nterm(to) === vterm(from).ifElse(1, 0))

                case Convert(Binding(to), _, _, from, _) =>
                    Vector(nterm(to) === vterm(from))

                case insn @ GetElementPtr(Binding(to), _, _, _, ArrayElement(_, _), _) =>
                    sys.error(s"unsupported getelementptr insn $insn")

                case _ : GetElementPtr =>
                    // We ignore these here, but the associations that they establish
                    // between their bound name and their arguments are expressed in
                    // the element properties of the name.
                    Vector()

                case insn @ Load(Binding(to), _, tipe, _, ArrayElement(array, index), _) =>
                    Vector(nterm(to) === ntermAt(insn, array).at(vtermAt(insn, index)))

                case Load(Binding(to), _, tipe, _, from, _) =>
                    Vector(nterm(to) === vterm(from))

                case phi : Phi =>
                    Vector()

                case insn @ Store(_, tipe, from, _, ArrayElement(array, index), _) =>
                    // println(s"Using rule 1 for $insn")
                    Vector(ntermAt(insn, array) === (prevnTermAt(insn, array) +=
                        (vtermAt(insn, index), vterm(from))))

                case e @ Store(_, tipe, from, _, to, _) =>
                    // println(s"Using rule 2 for $e")
                    Vector(vterm(to) === vterm(from))

                case node =>
                    sys.error(s"terms not found for $node")

            }

        /*
         * Make a term for the named variable where `id` is the base name identifier.
         */
        def varTerm(name : Name, id : String) : TypedTerm =
            TypedTerm(id, typeToSort(name))

        /*
         * Return a term that expresses a name when referenced from node.
         */
        def ntermAt(node : ASTNode, name : Name) : TypedTerm =
            varTerm(name, nameToIndexedName(node, render(name)))

        /*
         * Return a term that expresses the previous version of a name when
         * referenced from node.
         */
        def prevnTermAt(node : ASTNode, name : Name) : TypedTerm =
            varTerm(name, nameToIndexedName(node, render(name), _ - 1))

        /*
         * Return a term that expresses an LLVM name when referenced from
         * that name node.
         */
        def nterm(name : Name) : TypedTerm =
            ntermAt(name, name)

        /*
         * Return a term that expresses an LLVM value.
         * FIXME: currently only does integer constants and names.
         */
        lazy val vterm : Value => TypedTerm = {
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
         * Return a term that expresses a value when referenced from node.
         */
        def vtermAt(node : ASTNode, value : Value) : TypedTerm =
            value match {
                case Named(name) =>
                    ntermAt(node, name)
                case _ =>
                    vterm(value)
            }

        /*
         * Return the sort that should be used for variable name.
         * FIXME: currently only handled Booleans, integers and pointers to integers.
         */
        def typeToSort(name : Name) : Sort = {
            val optSort =
                properties(name).collectFirst {
                    case TypeProperty(tipe) =>
                        tipe match {
                            case IntT(n) if n == 1 =>
                                Core.BoolSort()
                            case IntT(_) =>
                                Ints.IntSort()
                            case PointerT(ArrayT(_, IntT(_)), _) =>
                                ArraysEx.ArraySort(Ints.IntSort(), Ints.IntSort())
                            case PointerT(_, _) =>
                                if (elementProperty(name).isEmpty)
                                    Ints.IntSort()
                                else
                                    ArraysEx.ArraySort(Ints.IntSort(), Ints.IntSort())
                            case SymbolicArrayT(_, _) =>
                                ArraysEx.ArraySort(Ints.IntSort(), Ints.IntSort())
                            case _ =>
                                sys.error(s"typeToSort: variable type $tipe for $name not supported")
                        }
                }
            optSort.getOrElse(sys.error(s"can't find type property for variable $name"))
        }

        /*
         * Return a term that expresses the condition that must be true if
         * an exit condition is used to exit from a block. None is returned
         * if it's not a choice exit condition (so the condition is really
         * "true").
         */
        def exitcondToTerm(exitcond : CFGExitCond[FunctionDefinition, Block]) : Option[TypedTerm] =
            exitcond match {
                case CFGChoice(s, value, _) =>
                    val id = nameToIndexedName(exitcond, s)
                    value match {
                        case b : Boolean =>
                            val t = TypedTerm(id, Core.BoolSort())
                            Some(if (b) t else !t)
                        case i : Int =>
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
        def entryToTerm(entry : Entry) : Vector[TypedTerm] =
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

    def runVerification(program : Program, cfg : CFG[FunctionDefinition, Block],
        cfgAnalyser : CFGAnalyser, config : PerentieMQConfig) {

        import au.edu.mq.comp.automat.auto.{NFA}
        import au.edu.mq.comp.automat.util.Dominator.{tarjanPostDom, postDomFrontier, prettyPrint, prettyPrint2}

        import au.edu.mq.comp.perentiemq.cfg.Witness.printWitness
        import org.scalallvm.assembly.Analyser
        import scala.annotation.tailrec
        import scala.util.{Try, Failure, Success}
        import au.edu.mq.comp.perentiemq.refinement.TraceRefinement.{FailureTrace, traceRefinement}
        import au.edu.mq.comp.dot.DOTPrettyPrinter.format
        import reflect.io._

        // Return if we don't want to verify this function
        val fname = functionName(cfgAnalyser.function(cfg))
        if (fname != "@main")
            return

        // Gather type information on variables in this CFG
        val function = cfg.function.cross
        val funtree = new Tree[ASTNode, FunctionDefinition](function)
        val funanalyser = new Analyser(funtree)
        val properties = funanalyser.propertiesOfFunction(cfg.function.cross)
        // Make the NFA for this CFG
        val cfganalyser = new CFGAnalyser(cfg)
        val nfa = AssemblyCFG.nfa(cfg)

        File("/tmp/nfa-perentieMQ.dot").writeAll(format(AssemblyCFG.toDot(nfa)).layout)

        //  sanitise the CFGNFA

        //  sanitise the CFGNFA by removing the edges that do not have any effect
        //  LLVM instructions are either skip of it comes from a fake
        //  edge we introduce

        //  collect 'dummy' which are states that are source of an empty effect
        //  and record their successor in a Map
        val dummyStatesMap = (nfa.edges.filter {
            e => traceToTerms(properties)(Trace(Seq(e.lab))).flatten.isEmpty
        }).map(e => (e.src, e.tgt)).toMap

        //  function to compute successors of dummys
        //  a dummy may have a successor which is a dummy, so we need to
        //  compute the successor recursively
        //
        def getSucc(s : String) : String = {
            if (dummyStatesMap.isDefinedAt(s)) {
                if (dummyStatesMap(s) == s)
                    //  loop on same node with no effect
                    s
                else
                    getSucc(dummyStatesMap(s))
            } else s
        }

        // println(dummyStatesMap)
        //  now we remove each edge s2 - l -> dummyState(s2) with no effect and
        //  use the recursive getSucc to replace each incoming edge
        //  s1 - l -> dummyState(s2) by s1 - l -> getSucc(s2)

        import au.edu.mq.comp.automat.edge.Edge
        val nfa2 = NFA(
            nfa.init,
            (nfa.edges filterNot {
                e => traceToTerms(properties)(Trace(Seq(e.lab))).flatten.isEmpty
            }) map {
                case e if dummyStatesMap.isDefinedAt(e.tgt) =>
                    val newtgt = getSucc(e.tgt)
                    val newlab : Entry = e.lab match {
                        case CFGExitCondEntry(CFGChoice(v, e, _)) =>
                            CFGExitCondEntry(CFGChoice(v, e, newtgt))
                        case lab =>
                            lab
                    }
                    Edge(e.src, newlab, getSucc(e.tgt))
                case e => e
            },
            nfa.accepting
        )

        // nfa2.edges map println

        import au.edu.mq.comp.automat.lang.Lang

        // println(Console.MAGENTA_B)
        // val tt = Lang(nfa).getAcceptedTrace
        // tt.get map println
        // println(Console.GREEN_B)
        // println(tt.get.head.block)
        // println(tt.get.head.condition)
        // println(Console.RESET)

        // println(cfganalyser.toDot(nfa))
        File("/tmp/nfa-perentieMQ-filtered.dot").writeAll(format(AssemblyCFG.toDot(nfa2)).layout)
        // Regexp for breaking verified names apart
        val Name = "(.*)@([0-9]+)".r

        import au.edu.mq.comp.dot.DOTSyntax.DotSpec

        //  now dump the immediate post dominators
        val postDomTree = tarjanPostDom(nfa2)
        val domDot : DotSpec = prettyPrint(nfa2.accepting.head, postDomTree)
        File("/tmp/dominators.dot").writeAll(format(domDot).layout)

        val postDomFront = postDomFrontier(nfa2, postDomTree)
        val domFrontDot : DotSpec = prettyPrint2(nfa2.accepting.head, postDomFront)
        File("/tmp/dominatorFrontier.dot").writeAll(format(domFrontDot).layout)

        import smtlib.parser.Terms.QualifiedIdentifier

        /*
         * An ordering of qualified identifiers that breaks the name apart and
         * orders in increasing order of integer index and then name.
         */
        implicit object QIdOrdering extends scala.math.Ordering[QualifiedIdentifier] {
            def compare(a : QualifiedIdentifier, b : QualifiedIdentifier) : Int =
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

        /*
         * Return whether or not the given variable name is of interest
         * at the user level, i.e., isn't a temporary. In the case of a
         * successful match, we also return the basename of the variable.
         * E.g., `%i@1` returns `%i`.
         */
        def isUserLevelVariable(name : String) : Option[String] = {
            val BaseName = "[@%](.+)@[0-9]+".r
            val TempName = "[@%][0-9]+@[0-9]+".r
            name match {
                case TempName() =>
                    None
                case BaseName(base) =>
                    Some(base)
                case _ =>
                    None
            }
        }

        /*
         * Print the defining position of a given variable.
         */
        def printDefiningPosition(name : String) {
            funanalyser.definingPosition(program, function, name) match {
                case Some(position) =>
                    print(s" at ${position.source.optName.get}:${position.line}:${position.column}")
                case None =>
                    print(s" at unknown position")
            }
        }

        /*
         * Print a failure trace. This is a placeholder until we can
         * produce the appropriate output for the SV-COMP.
         */
        def printTrace(failure : FailureTrace[Entry]) {
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
                        isUserLevelVariable(i) match {
                            case Some(base) =>
                                val v = values.get(qid).get.getTerm
                                print(s"  $base = $v")
                                printDefiningPosition(base)
                                println
                            case None =>
                            // Do nothing
                        }
                    }
            }
        }

        /*
         * Add an entry for the error block to the trace so it is included
         * in witnesses etc. We look for the final choice entry in the trace
         * then extract its destination (e.g., block %.error.14). That tells us the
         * error block that we would go to.
         */
        def appendErrorBlock(failTrace : FailureTrace[Entry]) : FailureTrace[Entry] =
            failTrace.trace.lastOption match {
                case Some(CFGExitCondEntry(CFGChoice(_, _, target))) =>
                    cfganalyser.resolveByName(target)(cfg) match {
                        case Some(errorBlock) =>
                            val errorEntry = CFGBlockEntry[FunctionDefinition, Block](errorBlock.block.cross)
                            failTrace.copy(trace = failTrace.trace :+ errorEntry)
                        case None =>
                            sys.error(s"appendErrorBlock: no error block $target found")
                    }
                case entry =>
                    sys.error(s"appendErrorBlock: can't find final choice entry, got $entry")
            }

        // println(s"${Console.GREEN}Starting analysis${Console.RESET}")

        //  if CFG does not contain an accepting trace we exit as we should have an error
        //  location
        Lang(nfa2).getAcceptedTrace match {
            case None =>
                //  CFG is empty
                reportUnknown(config, "CFG does not contain error location")
            case _ =>
                //  provides color if we are in the terminal (not in the scala SBT ... don't knwo why)
                traceRefinement(
                    nfa2,
                    { s : Seq[Entry] => traceToTerms(properties)(Trace(s)) },
                    { b : CFGBlock[FunctionDefinition, Block] => b.toString },
                    { b : Entry => b.isBlockEntry },
                    config
                ) match {
                        case Success(witnessTrace) => witnessTrace match {
                            case None =>
                                // println(s"${Console.GREEN}Program is correct${Console.RESET}")
                                config.output.emitln("TRUE")
                            case Some(failTrace) =>
                                val errorTrace = appendErrorBlock(failTrace)
                                // println(s"${Console.RED}Program is incorrect. Witness trace follows${Console.RESET}")
                                config.output.emitln("FALSE")
                                // printTrace(errorTrace)
                                printWitness(config, program, function, funanalyser, errorTrace)
                        }
                        case Failure(e) =>
                            reportUnknown(config, s"Refinement failure\n${e.getMessage}")
                    }
        }

    }

    /**
     * Verify the given CFG. The IR is assumed to have been processed by
     * `prepareIRForVerification` before the CFG was constructed.
     */
    def verify(program : Program, cfg : CFG[FunctionDefinition, Block],
        cfgAnalyser : CFGAnalyser, config : PerentieMQConfig) {
        try {
            runVerification(program, cfg, cfgAnalyser, config)
        } catch {
            case e : java.lang.Exception =>
                reportUnknown(config, s"Exception\n${e.getMessage}")
        }
    }

}
