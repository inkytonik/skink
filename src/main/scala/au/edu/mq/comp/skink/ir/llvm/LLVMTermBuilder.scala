package au.edu.mq.comp.skink.ir.llvm

class LLVMTermBuilder(namer : LLVMNamer) {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{Array1, Array1Sort, EqualTerm, IntSort, BoolSort, Sort, Term}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, IntTerm}
    import au.edu.mq.comp.smtlib.theories.{ArrayExInt, ArrayExOperators, Core, IntegerArithmetics}
    import au.edu.mq.comp.smtlib.typedterms.TypedTerm
    import namer.{True => STrue, False => SFalse, _}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{show, layout, any}
    import org.scalallvm.assembly.AssemblySyntax._

    val logger = getLogger(this.getClass)

    // Version of LLVM PP show that avoids line-wrapping
    def longshow(n : ASTNode) : String =
        show(n, 1000)

    /*
     * Return terms that express the effect of an LLVM node, including of
     * phi insns given entry to the block from a particular previous block
     * (if there is one), and exit from this block using a particular branch.
     */
    def blockTerms(block : Block, optPrevBlock : Option[Block], branch : Int) : Vector[TypedTerm[BoolTerm, Term]] = {
        logger.info(s"blockTerms: block ${blockName(block)}")
        val phiEffects = block.optMetaPhiInstructions.map(i => phiInsnTerm(i, optPrevBlock))
        val effects = block.optMetaInstructions.map(insnTerm)
        val exitEffect = exitTerm(block.metaTerminatorInstruction, branch)
        val allEffects = phiEffects ++ effects :+ exitEffect
        allEffects.filter(_ != STrue())
    }

    def globalTerm(global : GlobalVariableDefinition) : TypedTerm[BoolTerm, Term] = {
        global match {
            case GlobalVariableDefinition(GlobalBinding(name), _, _, _, _, _, _, _, _, tipe, Init(value), _, _, _) =>
                equality(name, tipe, Const(value), tipe)
            case _ => sys.error(s"Invalid global variable definition ${show(global)}")
        }
    }

    /*
     * Return a term that expresses the effect of an LLVM phi instruction
     * given that control comes from a particular previous block (if any).
     */
    def phiInsnTerm(metaInsn : MetaPhiInstruction, optPrevBlock : Option[Block]) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.phiInstruction
        val term : TypedTerm[BoolTerm, Term] =
            optPrevBlock match {
                case Some(prevBlock) =>
                    val prevLabel = blockName(prevBlock)
                    insn match {
                        case insn @ Phi(Binding(to), tipe, preds) =>
                            // Bound phi result, find value
                            preds.find(_.label == prevLabel) match {
                                case Some(pred) =>
                                    equality(to, tipe, pred.value, tipe)
                                case None =>
                                    sys.error(s"phiInsnTerm: can't find $prevLabel in $insn")
                            }
                        case Phi(NoBinding(), _, _) =>
                            // No effect since result of phi is not bound
                            STrue()
                    }
                case None =>
                    // No previous block so phi insns don't make sense...
                    STrue()
            }
        logger.debug(s"phiInsnTerm:${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return a term that expresses the effect of an LLVM terminator instruction
     * that exits a block using a particular branch.
     * Exits or branches are integers >=0, typically 0 and 1 for an if-then-else, 0 for
     * a non-conditional exit.
     */
    def exitTerm(metaInsn : MetaTerminatorInstruction, branch : Int) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.terminatorInstruction
        val term =
            insn match {
                case Branch(label) if branch == 0 =>
                    STrue()

                case BranchCond(value, label1, label2) if branch == 0 =>
                    vtermB(value)

                case BranchCond(value, label1, label2) if branch == 1 =>
                    !vtermB(value)

                case insn =>
                    sys.error(s"exitTerm: can't handle branch $branch of $insn")
            }
        logger.debug(s"exitTerm: branch $branch of${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return a term that expresses the effect of a regular LLVM instruction.
     */
    def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        logger.info(s"term generation on insn ${layout(any(insn))}")
        val term =
            insn match {

                /*
                 * Ignore stack memory allocation.
                 */
                case _ : Alloca =>
                    STrue()

                /*
                 * Boolean binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(Binding(to), op, BoolT(), left, right) =>
                    val lterm = vtermB(left)
                    val rterm = vtermB(right)
                    val exp =
                        op match {
                            case _ : And => lterm & rterm
                            case _ : Or  => lterm | rterm
                            case _ : XOr => lterm xor rterm
                            case _ =>
                                sys.error(s"binary Boolean op ${show(op)} not handled")
                        }
                    ntermB(to) === exp

                /*
                 * Integer binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(Binding(to), op, IntT(_), left, right) =>
                    val lterm = vtermI(left)
                    val rterm = vtermI(right)
                    val exp =
                        op match {
                            case _ : Add  => lterm + rterm
                            case _ : Mul  => lterm * rterm
                            case _ : SDiv => lterm / rterm
                            case _ : SRem => lterm % rterm
                            case _ : Sub  => lterm - rterm
                            case _ =>
                                sys.error(s"binary integer op ${show(op)} not handled")
                        }
                    ntermI(to) === exp

                // Call to `assume`
                case Call(_, _, _, _, _, VerifierFunction(AssumeName()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                    tipe match {
                        case BoolT() => vtermB(arg)
                        case IntT(_) => !(vtermI(arg) === 0)
                        case _ =>
                            sys.error(s"insnTerm: unexpected type ${show(tipe)} in assume call")
                    }

                // Call to `nondet_X` where X is an unsigned type
                case Call(Binding(to), _, _, _, _, VerifierFunction(NondetFunctionName(UnsignedType())), Vector(), _) =>
                    ntermI(to) >= 0

                // Other calls to `nondet_X`
                case Call(Binding(to), _, _, _, _, VerifierFunction(NondetFunctionName(_)), Vector(), _) =>
                    STrue()

                case Call(_, _, _, _, _, IgnoredFunction(), _, _) =>
                    STrue()

                // Compare two Boolean values

                case Compare(Binding(to), ICmp(icond), BoolT(), left, right) =>
                    val lterm = vtermB(left)
                    val rterm = vtermB(right)
                    val exp =
                        icond match {
                            case EQ() => lterm === rterm
                            case NE() => !(lterm === rterm)
                            case _ =>
                                sys.error(s"Boolean comparison ${show(icond)} not handled")
                        }
                    ntermB(to) === exp

                // Compare two integer or pointer values

                case Compare(Binding(to), ICmp(icond), ComparisonType(), left, right) =>
                    val lterm = vtermI(left)
                    val rterm = vtermI(right)
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
                            case _ =>
                                sys.error(s"integer comparison ${show(icond)} not handled")
                        }
                    ntermB(to) === exp

                // Conversions

                case Convert(Binding(to), _, fromType, from, toType) =>
                    equality(to, toType, from, fromType)

                // Pointer dereference

                case insn @ GetElementPtr(Binding(to), _, _, _, ArrayElement(_, _), _) =>
                    sys.error(s"insnTerm: unsupported getelementptr insn ${longshow(insn)}")

                case _ : GetElementPtr =>
                    // We ignore these here, but the associations that they establish
                    // between their bound name and their arguments are expressed in
                    // the element properties of the name.
                    STrue()

                // Array loads and stores, just non-Boolean, integer elements for now

                case insn @ Load(Binding(to), _, IntegerT(_), _, ArrayElement(array, index), _) =>
                    ntermI(to) === arrayTermAt(insn, array).at(vtermAtI(insn, index))

                case insn @ Store(_, IntegerT(_), from, _, ArrayElement(array, index), _) =>
                    arrayTermAt(insn, array) === prevArrayTermAt(insn, array).store(vtermAtI(insn, index), vtermI(from))

                // Non-array loads and stores

                case Load(Binding(to), _, tipe, _, from, _) =>
                    equality(to, tipe, from, tipe)

                case Store(_, tipe, from, _, Named(to), _) =>
                    equality(to, tipe, from, tipe)

                case insn =>
                    sys.error(s"insnTerm: don't know the effect of${longshow(insn)}")

            }
        logger.debug(s"insnTerm:${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return an IntTerm that expresses an LLVM ik value, k > 0.
     */
    def vtermI(value : Value) : TypedTerm[IntTerm, Term] =
        value match {
            case Const(IntC(i)) =>
                Ints(i.toInt) //  warning: BigInt!!
            case Named(name) =>
                ntermI(name)
            case value =>
                sys.error(s"vtermI: unexpected value value")
        }

    /*
     * Return an IntTerm that expresses a value when referenced from node.
     */
    def vtermAtI(node : ASTNode, value : Value) : TypedTerm[IntTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtI(node, name)
            case _ =>
                vtermI(value)
        }

    /*
     * Return a BoolTerm that expresses an LLVM i1 value.
     */
    def vtermB(value : Value) : TypedTerm[BoolTerm, Term] =
        value match {
            case Const(FalseC()) =>
                SFalse()
            case Const(TrueC()) =>
                STrue()
            case Named(name) =>
                ntermB(name)
            case value =>
                sys.error(s"vtermB: unexpected value $value")
        }

    /*
     * Make an equality term between an LLVM name and an LLVM value. The
     * kind of equality depends on the type of the name. We mostly handle
     * integer and Boolean equalities, but also pointers as integers.
     */
    def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, EqualTerm] =
        (toType, fromType) match {
            case (BoolT(), BoolT()) =>
                ntermB(to) === vtermB(from)
            case (BoolT(), IntT(_)) =>
                ntermB(to) === !(vtermI(from) === 0)
            case (IntT(_), BoolT()) =>
                ntermI(to) === vtermB(from).ite(1, 0)
            case (IntT(_), IntT(_)) =>
                ntermI(to) === vtermI(from)
            case (PointerT(_, _), PointerT(_, _)) =>
                ntermI(to) === vtermI(from)
            case _ =>
                sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
        }

}
