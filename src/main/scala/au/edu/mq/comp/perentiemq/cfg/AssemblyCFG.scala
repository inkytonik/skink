package au.edu.mq.comp.perentiemq.cfg

/**
 * Consolidated construction, processing and verification of LLVM assembly CFGs.
 */
object AssemblyCFG extends AssemblyCFGBuilder {

    import org.kiama.==>
    import org.kiama.attribution.Decorators
    import org.kiama.relation.Tree
    import org.scalallvm.assembly.AssemblySyntax._
    import smtlib.parser.Terms._
    import smtlib.theories.{Core, Ints}
    import scala.collection.mutable

    /**
     * A trace entry is a block and an optional exit condition. If the
     * exit condition is present, then it describes how control flows
     * to the next block in a trace.
     */
    case class Entry (
        block : Block,
        optExitcond : Option[CFGExitCond[FunctionDefinition,Block]]
    )

    /**
     * A trace is just an ordered collection of trace entries.
     */
    case class Trace (entries : Vector[Entry])

    /**
     * Convert a trace into SMTlib terms that express the effect of the trace.
     */
    def traceToTerm (trace : Trace) : Vector[Term] = {

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
         * Make an SMTlib qualified identifier for a program variable named `s`.
         * The name is given a count suffix to reflect the fact that it references
         * a particular assigned or stored version of the base name in the trace.
         */
        def stringToIdentifier (node : Product, s : String) : QualifiedIdentifier = {
            val count = stores (node).getOrElse (s, 0)
            QualifiedIdentifier (Identifier (SSymbol (s"$s.$count")))
        }

        /**
         * Return an SMTlib term that expresses the effect of an LLVM node.
         */
        lazy val term : ASTNode => Term =
            attr {

                // Blocks

                case block : Block =>
                    Core.And (block.optInstructions.map (term) : _*)

                // Instructions

                case InsnMeta (insn, _) =>
                    term (insn)

                case Binary (to, op, _ : IntT, left, right) =>
                    val lterm = term (left)
                    val rterm = term (right)
                    val exp =
                        op match {
                            case _ : Add => Ints.Add (lterm, rterm)
                            case _ : Mul => Ints.Mul (lterm, rterm)
                            case _ : Sub => Ints.Sub (lterm, rterm)
                            case _ =>
                                println (s"binary int op $op not handled")
                                SNumeral (9999)
                        }
                    Core.Equals (term (to), exp)

                case Compare (to, ICmp (icond), _ : IntT, left, right) =>
                    val lterm = term (left)
                    val rterm = term (right)
                    val exp =
                        icond match {
                            case EQ ()  => Core.Equals (lterm, rterm)
                            case NE ()  => Core.Not (Core.Equals (lterm, rterm))
                            case UGT () => Ints.GreaterThan (lterm, rterm)
                            case UGE () => Ints.GreaterEquals (lterm, rterm)
                            case ULT () => Ints.LessThan (lterm, rterm)
                            case ULE () => Ints.LessEquals (lterm, rterm)
                            case SGT () => Ints.GreaterThan (lterm, rterm)
                            case SGE () => Ints.GreaterEquals (lterm, rterm)
                            case SLT () => Ints.LessThan (lterm, rterm)
                            case SLE () => Ints.LessEquals (lterm, rterm)
                        }
                    Core.Equals (term (to), exp)

                case Convert (to, _, _ : IntT, from, _ : IntT) =>
                    Core.Equals (term (to), term (from))

                case Load (to, _, tipe, _, from, _) =>
                    Core.Equals (term (to), term (from))

                case Store (_, tipe, from, _, to, _) =>
                    Core.Equals (term (to), term (from))

                // Bindings and names

                case Binding (name) =>
                    term (name)

                case name : Name =>
                    stringToIdentifier (name, render (name))

                // Values

                case Const (IntC (i)) =>
                    SNumeral (i)

                case Named (name) =>
                    term (name)

                case node =>
                    println (s"node not handled: $node")
                    Core.True ()

            }

        def exitcondToTerm (optExitcond : Option[CFGExitCond[FunctionDefinition,Block]]) : Term =
            optExitcond match {
                case Some (exitcond @ CFGChoice (s, value, _)) =>
                    Core.Equals (stringToIdentifier (exitcond, s), SNumeral (BigInt (value)))
                case _ =>
                    Core.True ()
            }

        def entryToTerm (entry : Entry) : Vector[Term] =
            Vector (term (entry.block), exitcondToTerm (entry.optExitcond))

        tree.root.entries.flatMap (entryToTerm)

    }

    /**
     * FIXME: dummy entry point. This is just here to provide a way to get
     * a trace from a CFG. It just starts at the entry block and follows
     * the control flow, always choosing the first exit condition. It includes
     * at most six entries.
     */
    def cfgToTerms (cfg : CFG[FunctionDefinition,Block]) : Vector[Term] = {

        import scala.annotation.tailrec

        val analyser = new CFGAnalyser (cfg)

        @tailrec
        def makeTrace (count : Int, b : CFGBlock[FunctionDefinition,Block], buf : Vector[Entry]) : Trace = {
            if (count <= 0)
                Trace (buf)
            else
                b.exitInfo.conditions match {
                    case cond +: _ =>
                        val next = analyser.target (cond).get
                        makeTrace (count - 1, next, buf :+ Entry (b.block.cross, Some (cond)))
                    case Vector () =>
                        Trace (buf :+ Entry (b.block.cross, None))
                }
        }

        val trace = makeTrace (6, cfg.blocks (0), Vector ())
        traceToTerm (trace)

    }

    /**
     * Verify the given CFG. The IR is assumed to have bene processed by
     * `prepareIRForVerification` before the CFG was constructed.
     */
    def verify (cfg : CFG[FunctionDefinition,Block], cfgAnalyser : CFGAnalyser) {

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

        // Dummy, will be replaced
        println (s"verified, not! $fname")
        println (cfgToTerms (cfg))

    }
}
