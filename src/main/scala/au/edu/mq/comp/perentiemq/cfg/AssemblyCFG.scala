package au.edu.mq.comp.perentiemq.cfg

/**
 * Consolidated construction, processing and verification of LLVM assembly CFGs.
 */
object AssemblyCFG extends AssemblyCFGBuilder {

    import au.edu.mq.comp.perentiemq.PerentieMQConfig
    import org.kiama.relation.Tree
    import org.scalallvm.assembly.AssemblySyntax._
    import smtlib.util.TypedTerm

    /**
     * Return whether or not the named function is a special verifier
     * function.
     */
    def isVerifierFunction (name : String) : Boolean =
        name.startsWith ("__VERIFIER")

    /**
     * Return whether or not the named function is an LLVM intrinsic.
     */
    def isLLVMIntrinsic (name : String) : Boolean =
        name.startsWith ("llvm")

    /**
     * An alias for trace entries in an Assembly CFG.
     */
    type Entry = CFGEntry[FunctionDefinition,Block]

    /**
     * A trace is just an ordered collection of trace entries.
     */
    case class Trace (entries : Seq[Entry])

    /**
     * Convert a trace into terms that express the effect of the trace.
     */
    def traceToTerms (trace : Trace, types : Map[Name,Type]) : Seq[TypedTerm] = {

        import org.kiama.==>
        import org.kiama.attribution.Decorators
        import org.scalallvm.assembly.AssemblyPrettyPrinter
        import smtlib.parser.Terms.Sort
        import smtlib.theories.{Core, Ints}
        import smtlib.util.Implicits._

        val tree = new Tree[Product,Trace] (trace)
        val decorators = new Decorators (tree)

        import tree._
        import decorators._

        // Chain keeping track of stores to memory. Each assignment to a
        // local variable or store to memory location is counted so that
        // we can treat each such occurrence in SSA form.

        type StoreMap = Map[String,Int]

        lazy val stores : Chain[StoreMap] =
            chain (storesin)

        def bumpcount (m : StoreMap, name : Name) : StoreMap = {
            val s = render (name)
            val count = m.getOrElse (s, 0)
            m.updated (s, count + 1)
        }

        def storesin (in : Product => StoreMap) : Product ==> StoreMap = {
            case _ : Trace =>
                Map[String,Int] ()
            case n @ Binary (Binding (name), _, _, _, _) =>
                bumpcount (in (n), name)
            case n @ Compare (Binding (name), _, _, _, _) =>
                bumpcount (in (n), name)
            case n @ Load (Binding (name), _, _, _, _, _) =>
                bumpcount (in (n), name)
            case n @ Store (_, _, _, _, Named (name), _) =>
                bumpcount (in (n), name)
        }

        /**
         * Make the indexed name of a particular occurrence of a program variable
         * in a trace. The base variable name is given a numeric index to reflect
         * the fact that it references a particular assigned or stored version of
         * the base name in the trace. E.g., the first use gets "@1" and the
         * second gets "@2".
         */
        def nameToIndexedName (use : Product, s : String) : String = {
            val index = stores (use).getOrElse (s, 0)
            s"$s@$index"
        }

        /**
         * Extractor that recognises functions whose calls we want to ignore when
         * generating effect terms. Currently:
         *   - any LLVM intrinsic, such as llvm.stacksave
         *   - special verifier fns, such as __VERIFIER_nondet_int
         */
        object IgnoredFunction {
            def unapply (fn : Function) : Boolean =
                fn match {
                    case Function (Named (Global (s))) =>
                        isLLVMIntrinsic (s) || isVerifierFunction (s)
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
        lazy val prevBlockName : Product => Option[String] =
            attr {
                case tree.prev (CFGEntry (Block (BlockLabel (name), _, _, _, _), _)) =>
                    Some (name)
                case tree.parent (p) =>
                    prevBlockName (p)
                case _ =>
                    None
            }

        /**
         * Return the terms that express the effect of a phi instruction.
         * We find out the previous block from the trace and the effect
         * is to bind the result to the value in the instruction that is
         * associated with that previous block.
         */
        lazy val phiTerms : Phi => Vector[TypedTerm] =
            attr {
                case phi @ Phi (Binding (to), _, preds) =>
                    prevBlockName (phi) match {
                        case Some (source) =>
                            preds.collectFirst {
                                case PhiPredecessor (value, Label (Local (label))) if label == source =>
                                    value
                            } match {
                                case Some (value) =>
                                    Vector (nterm (to) === vterm (value))
                                case None =>
                                    sys.error (s"phiTerms: can't find previous block $source in preds: $phi")
                            }
                        case None =>
                            sys.error (s"phiTerms: phi insn in first block: $phi")
                    }
            }

        /**
         * Return terms that express the effect of an LLVM node.
         */
        lazy val terms : ASTNode => Vector[TypedTerm] =
            attr {

                // Blocks

                case block : Block =>
                    (block.optMetaPhiInstructions ++ block.optMetaInstructions).flatMap (terms)

                // Meta instructions

                case MetaPhiInstruction (insn, _) =>
                    terms (insn)

                case MetaInstruction (insn, _) =>
                    terms (insn)

                // Instructions

                case _ : Alloca =>
                    Vector ()

                case Binary (Binding (to), op, _ : IntT, left, right) =>
                    val lterm = vterm (left)
                    val rterm = vterm (right)
                    val exp : TypedTerm =
                        op match {
                            case _ : Add => lterm + rterm
                            case _ : Mul => lterm * rterm
                            case _ : Sub => lterm - rterm
                            case _ =>
                                println (s"binary int op $op not handled")
                                9999
                        }
                    Vector (nterm (to) === exp)

                case Call (_, _, _, _, _, Function (Named (Global ("__VERIFIER_assume"))),
                           Vector (ValueArg (_, _, arg)), _) =>
                    Vector (vterm (arg))

                case Call (_, _, _, _, _, IgnoredFunction (), _, _) =>
                    Vector ()

                case Compare (Binding (to), ICmp (icond), _ : IntT, left, right) =>
                    val lterm = vterm (left)
                    val rterm = vterm (right)
                    val exp =
                        icond match {
                            case EQ ()  => lterm === rterm
                            case NE ()  => ! (lterm === rterm)
                            case UGT () => lterm > rterm
                            case UGE () => lterm >= rterm
                            case ULT () => lterm < rterm
                            case ULE () => lterm <= rterm
                            case SGT () => lterm > rterm
                            case SGE () => lterm >= rterm
                            case SLT () => lterm < rterm
                            case SLE () => lterm <= rterm
                        }
                    Vector (nterm (to) === exp)

                case Convert (Binding (to), _, IntT (_), from, IntT (n)) if n == 1 =>
                    Vector (nterm (to) === ! (vterm (from) === 0))

                case Convert (Binding (to), _, _, from, _) =>
                    Vector (nterm (to) === vterm (from))

                case Load (Binding (to), _, tipe, _, from, _) =>
                    Vector (nterm (to) === vterm (from))

                case phi : Phi =>
                    phiTerms (phi)

                case Store (_, tipe, from, _, to, _) =>
                    Vector (vterm (to) === vterm (from))

                case node =>
                    println (s"terms not found for $node")
                    Vector ()

            }

        /**
         * Return a term that expresses an LLVM value.
         * FIXME: currently only does integer constants and names.
         */
        lazy val vterm : Value => TypedTerm = {
            attr {
                case Const (FalseC ()) =>
                    false
                case Const (IntC (i)) =>
                    i
                case Const (TrueC ()) =>
                    true
                case Named (name) =>
                    nterm (name)
                case value =>
                    sys.error (s"vterm: unexpected value $value")
            }
        }

        /**
         * Return the sort that should be used for variable name.
         * FIXME: currently only handled Booleans, integers and pointers to integers.
         */
        def typeToSort (tipe : Type) : Sort =
            tipe match {
                case IntT (n) if n == 1 =>
                    Core.BoolSort ()
                case IntT (_) =>
                    Ints.IntSort ()
                case PointerT (_, DefaultAddrSpace ()) =>
                    Ints.IntSort ()
                case _ =>
                    sys.error (s"variable type $tipe not supported")
            }

        /**
         * Return a term that expresses an LLVM name.
         */
        lazy val nterm : Name => TypedTerm = {
            attr {
                case name =>
                    TypedTerm (nameToIndexedName (name, render (name)),
                               typeToSort (types (name)))
            }
        }

        /**
         * Return a term that expresses the condition that must be true if
         * an exit condition is used to exit from a block. None is returned
         * if it's not a choice exit condition (so the condition is really
         * "true").
         */
        def exitcondToTerm (exitcond : CFGExitCond[FunctionDefinition,Block]) : Option[TypedTerm] =
            exitcond match {
                case CFGChoice (s, value, _) =>
                    val id = nameToIndexedName (exitcond, s)
                    value match {
                        case b : Boolean =>
                            val t = TypedTerm (id, Core.BoolSort ())
                            Some (if (b) t else ! t)
                        case i : Int =>
                            Some (TypedTerm (id, Ints.IntSort ()) === i)
                        case _ =>
                            sys.error (s"exitcondToTerm: unsupported value $value")
                    }
                case _ =>
                    None
            }

        /**
         * Return terms that express the effect of a trace entry, including
         * the transition to the next entry in the trace, if there is one.
         */
        def entryToTerm (entry : Entry) : Vector[TypedTerm] =
            terms (entry.block) ++ exitcondToTerm (entry.condition)

        // Return all of the terms arising from this trace
        tree.root.entries.flatMap (entryToTerm)

    }

    /**
     * Verify the given CFG. The IR is assumed to have been processed by
     * `prepareIRForVerification` before the CFG was constructed.
     */
    def verify (cfg : CFG[FunctionDefinition,Block], cfgAnalyser : CFGAnalyser, config : PerentieMQConfig) {

        import au.edu.mq.comp.automat.auto.{DetAuto, NFA}
        import au.edu.mq.comp.automat.lang.Lang
        import au.edu.mq.comp.automat.edge.Implicits._
        import org.kiama.rewriting.Rewriter.collect
        import org.scalallvm.assembly.Analyser
        import scala.annotation.tailrec
        import scala.util.{Failure, Success, Try}
        import smtlib.Interpreter
        import smtlib.interpreters.Configurations._
        import smtlib.interpreters.SMTSolver
        import smtlib.parser.Commands.{Exit, Reset}
        import smtlib.parser.CommandsResponses.{SatStatus, UnsatStatus}
        import smtlib.parser.Terms.QualifiedIdentifier
        import smtlib.util.Logics.{getValues, isSat}
        import smtlib.util.ValMap

        // Return if we don't want to verify this function
        val fname = functionName (cfgAnalyser.function (cfg))
        if (fname != "@main")
            return

        // Gather type information on variables in this CFG
        val funtree = new Tree[ASTNode,FunctionDefinition] (cfg.function.cross)
        val funanalyser = new Analyser (funtree)
        val types = funanalyser.typesOfFunction (cfg.function.cross)

        // Make the NFA for this CFG
        val cfganalyser = new CFGAnalyser (cfg)
        val nfa = cfganalyser.nfa (cfg)

        /**
         * Return an interpolant automata for a trace.
         * FIXME: for now this just returns the trivial automaton that
         * just accepts the trace. Will be replaced by something less
         * hacky...
         */
        def interpolantAutomata (trace : Trace) : NFA[Int,CFGEntry[FunctionDefinition,Block]] = {
            val numentries = trace.entries.length
            val init = (0 to numentries).toSet
            val edges = trace.entries.zipWithIndex.map {
                            case (entry, index) =>
                                (index ~> (index + 1)) (entry)
                        }.toSet
            val accepting = Set (numentries)
            val res = NFA (init, edges, accepting)
            println (res)
            res
        }

        /**
         * A feasible trace that leads to a program failure. `values`, if
         * present, reports on the values that lead to the failure. It
         * may contain entries for the identifiers in `ids` but may not
         * map them all.
         */
        case class FailureTrace (trace : Trace, ids : Seq[QualifiedIdentifier],
                                 values : Try[ValMap])

        /**
         * Implement the refinement loop, returning an optional trace that if
         * present is feasible and demonstrates how the program is incorrect.
         */
        def traceRefinement (nfa : CFGNFA) : Option[FailureTrace] = {

            def makeFailureTrace (trace : Trace, terms: Seq[TypedTerm], solver : Interpreter) : FailureTrace = {
                val getids = collect[Seq,QualifiedIdentifier] {
                                 case id @ (QualifiedIdentifier (_, Some (_))) =>
                                     id
                             }
                val ids = getids (terms).toSet.toSeq
                val values = ids match {
                                 case h +: t =>
                                     getValues (h, t) (solver)
                                 case _ =>
                                     Success (ValMap (Map.empty))
                             }
                FailureTrace (trace, ids, values)
            }

            // FIXME: want to put @tailrec but Scala compiler complains, not sure why...

            def refine[S] (dfa : DetAuto[S,Entry]) : Option[FailureTrace] =
                Lang (dfa).getAcceptedTraceAfter (List ()) match {

                    case None =>
                        None

                    case Some (entries) =>
                        val trace = Trace (entries)
                        val terms = traceToTerms (trace, types)

                        import org.kiama.output.PrettyPrinter.{any, pretty}
                        val pp = terms.map (_.toString)
                        println (s"trying terms ${pretty (any (pp)).layout}")

                        val solver = SMTSolver (SMTInterpol, QFLIASatModelConfig).get
                        isSat (terms) (solver) match {
                            case Success (SatStatus) =>
                                println ("trace was feasible")
                                val failure = makeFailureTrace (trace, terms, solver)
                                solver.eval (Exit ())
                                Some (failure)

                            case Success (UnsatStatus) =>
                                solver.eval (Exit ())
                                println ("trace was infeasible")
                                val tracenfa = interpolantAutomata (trace)
                                refine (dfa - tracenfa)

                            case status =>
                                sys.error (s"strange solver status: $status")
                        }

                }

            refine (nfa)
        }

        // Regexp for breaking verified names apart
        val Name = "(.*)@([0-9]+)".r

        /**
         * An ordering of qualified identifiers that breaks the name apart and
         * orders in increasing order of integer index and then name.
         */
        implicit object QIdOrdering extends scala.math.Ordering[QualifiedIdentifier] {
            def compare (a : QualifiedIdentifier, b : QualifiedIdentifier) : Int =
                (a.id.symbol.name, b.id.symbol.name) match {
                    case (Name (avar, aind), Name (bvar, bind)) =>
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
        def isUserLevelVariable (name : String) : Boolean = {
            val TempName = "%[0-9]+@[0-9]+".r
            name match {
                case TempName () =>
                    false
                case _ =>
                    true
            }
        }

        /**
         * Print a failure trace. This is a placeholder until we can
         * produce the appropriate output for the SV-COMP.
         */
        def printTrace (failure : FailureTrace) {
            println ("trace:")
            for (entry <- failure.trace.entries)
                println (s"  ${entry.block.optBlockLabel} ${entry.condition}")
            println ("values:")
            if (failure.values.isSuccess) {
                val values = failure.values.get
                for (qid <- failure.ids.sorted)
                    if (values.isDefinedAt (qid)) {
                        val i = qid.id.symbol.name
                        if (isUserLevelVariable (i)) {
                            val v = values.get (qid).get.getTerm
                            println (s"  $i = $v")
                        }
                    }
            }
        }

        // Run the verification
        traceRefinement (nfa) match {
            case None =>
                config.output.emitln ("program is correct")
            case Some (failure) =>
                config.output.emitln ("program is incorrect")
                printTrace (failure)
        }

    }
}
