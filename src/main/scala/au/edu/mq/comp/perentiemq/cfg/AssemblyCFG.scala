package au.edu.mq.comp.perentiemq.cfg

/**
 * Consolidated construction, processing and verification of LLVM assembly CFGs.
 */
object AssemblyCFG extends AssemblyCFGBuilder {

    import org.kiama.relation.Tree
    import org.scalallvm.assembly.AssemblySyntax._
    import smtlib.util.TypedTerm

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
    def traceToTerm (trace : Trace, types : Map[Name,Type]) : Seq[TypedTerm] = {

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
         * Return terms that express the effect of an LLVM node.
         */
        lazy val term : ASTNode => Vector[TypedTerm] =
            attr {

                // Blocks

                case block : Block =>
                    block.optInstructions.flatMap (term)

                // Instructions

                case InsnMeta (insn, _) =>
                    term (insn)

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

                case Convert (Binding (to), _, _ : IntT, from, _ : IntT) =>
                    Vector (nterm (to) === vterm (from))

                case Load (Binding (to), _, tipe, _, from, _) =>
                    Vector (nterm (to) === vterm (from))

                case Store (_, tipe, from, _, to, _) =>
                    Vector (vterm (to) === vterm (from))

                case _ =>
                    Vector ()

            }

        /**
         * Return a term that expresses an LLVM value.
         * FIXME: currently only does integer constants and names.
         */
        lazy val vterm : Value => TypedTerm = {
            attr {
                case Const (IntC (i)) =>
                    i
                case Named (name) =>
                    nterm (name)
                case _ =>
                    // FIXME: dummy
                    42
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
                case PointerT (IntT (_), DefaultAddrSpace ()) =>
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
                            Some (TypedTerm (id, Core.BoolSort ()) === b)
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
            term (entry.block) ++ exitcondToTerm (entry.condition)

        // Return all of the terms arising from this trace
        tree.root.entries.flatMap (entryToTerm)

    }

    /**
     * Verify the given CFG. The IR is assumed to have been processed by
     * `prepareIRForVerification` before the CFG was constructed.
     */
    def verify (cfg : CFG[FunctionDefinition,Block], cfgAnalyser : CFGAnalyser) {

        import au.edu.mq.comp.automat.lang.Lang
        import org.scalallvm.assembly.Analyser
        import scala.annotation.tailrec
        import smtlib.interpreters.Configurations._
        import smtlib.interpreters.SMTSolver
        import smtlib.parser.Commands.Exit
        import smtlib.util.Logics.isSat

        /**
         * The prefix used by the SV-COMP to signify special functions.
         */
        val SVCompVerifierPrefix = "@__VERIFIER"

        /**
         * Return whether or not the named function should be verified.
         */
        def isNotToBeVerified (name : String) : Boolean =
            name.startsWith (SVCompVerifierPrefix)

        // Return if we don't want to verify this function
        val fname = functionName (cfgAnalyser.function (cfg))
        if (isNotToBeVerified (fname))
            return

        // Gather type information variables in this CFG
        val funtree = new Tree[ASTNode,FunctionDefinition] (cfg.function.cross)
        val funanalyser = new Analyser (funtree)
        val types = funanalyser.typesOfFunction (cfg.function.cross)

        // An analyser for the CFG for use during trace generation
        val analyser = new CFGAnalyser (cfg)

        @tailrec
        def makeTrace (count : Int, b : CFGBlock[FunctionDefinition,Block], buf : Vector[Entry]) : Trace = {
            if (count <= 0)
                Trace (buf)
            else
                b.exitInfo.conditions match {
                    case cond +: _ =>
                        val next = analyser.target (cond).get
                        makeTrace (count - 1, next, buf :+ CFGEntry (b.block.cross, cond))
                    case Vector () =>
                        Trace (Vector ())
                }
        }

        val trace = makeTrace (6, cfg.blocks (0), Vector ())

        val terms = traceToTerm (trace, types)
        println (terms)

        val solver = SMTSolver (SMTInterpol, QFLIASatModelConfig).get
        val result = isSat (terms) (solver)
        println (result)
        solver.eval (Exit ())

    }
}
