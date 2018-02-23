package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import org.bitbucket.franck44.scalasmt.theories.{
    ArrayExBV,
    ArrayExInt,
    ArrayExOperators,
    ArrayExReal,
    BitVectors,
    Core,
    FPBitVectors,
    IntegerArithmetics,
    RealArithmetics
}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm
import org.scalallvm.assembly.Analyser

class LLVMTermBuilder(funAnalyser : Analyser, namer : LLVMNamer, config : SkinkConfig)
        extends ArrayExBV with ArrayExInt with ArrayExOperators with ArrayExReal
        with BitVectors with Core with FPBitVectors with IntegerArithmetics
        with QuantifiedTerm with RealArithmetics {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper.{Trunc => TruncName, _}
    import au.edu.mq.comp.skink.{BitIntegerMode, BitRealMode, MathIntegerMode, MathRealMode}
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{
        BitVectorSort,
        BoolSort,
        EqualTerm,
        FPBitVectorSort,
        FPFloat16,
        FPFloat32,
        FPFloat64,
        FPFloat128,
        FPBVToSBV,
        FPBVToUBV,
        IntSort,
        QIdTerm,
        RealSort,
        RNA,
        RNE,
        RoundingMode,
        RoundingModeSort,
        RTN,
        RTP,
        RTZ,
        SimpleQId,
        Sort,
        SortId,
        SSymbol,
        SymbolId,
        Term
    }
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BoolTerm, BVTerm, FPBVTerm, IndexTerm, IntTerm, RealTerm, RMFPBVTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import namer.{ArrayElement, ArrayElementC, indexOf, termid}
    import org.scalallvm.assembly.Analyser.{defaultBlockName, unescape}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import org.scalallvm.assembly.AssemblySyntax.{False => FFalse, True => FTrue, _}

    val logger = getLogger(this.getClass)

    // Cached numeric modes and architecture
    val integerMode = config.integerMode()
    val realMode = config.realMode()
    val architecture = config.architecture()

    // Rounding mode variable term for floating-point bit vector operations
    implicit var FPBVRoundingMode : TypedTerm[RMFPBVTerm, Term] =
        varTermRM(show(fprmodeName), 0)

    /**
     * Return a term that expresses the effects of the global variable
     * initialisers of a program.
     */
    def initTerm(program : Program) : TypedTerm[BoolTerm, Term] = {
        val itemTerms = combineTerms(program.items.map(itemTerm))
        val term =
            if (config.realMode() == BitRealMode()) {
                val fpterm = varTermRM(show(fprmodeName), 0) === ctermRM(RNE())
                if (itemTerms == True()) fpterm else fpterm & itemTerms
            } else
                itemTerms
        logger.info(s"initTerm: ${showTerm(term.termDef)}")
        term
    }

    /**
     * Return a term to express the effect of a top-level item, not including
     * function definitions. Currently only handles initialisation of global
     * integer variables and zero-initialised global integer arrays.
     */
    def itemTerm(item : Item) : TypedTerm[BoolTerm, Term] = {
        val term = item match {
            case InitGlobalVar(name, tipe, constantValue) =>
                val id = show(name)
                val index = namer.defaultIndexOf(id)
                (tipe, constantValue) match {
                    case (IntT(_) | RealT(_), _) =>
                        equality(name, tipe, Const(constantValue), tipe)
                    case (ArrayT(_, elemtype @ (IntT(_) | RealT(_))), ZeroC()) =>
                        val i =
                            integerMode match {
                                case BitIntegerMode() =>
                                    BVs("i", config.architecture())
                                case MathIntegerMode() =>
                                    Ints("i")
                            }
                        forall(SSymbol("i")) {
                            elemtype match {
                                case IntT(size) =>
                                    integerMode match {
                                        case BitIntegerMode() =>
                                            val bits = size.toInt
                                            arrayTermIBV(id, bits, index).at(i) === 0.withBits(bits)
                                        case MathIntegerMode() =>
                                            arrayTermI(id, index).at(i) === 0
                                    }
                                case RealT(_) =>
                                    arrayTermR(id, index).at(i) === 0
                            }
                        }
                    case (ArrayT(_, elemtype @ (IntT(_) | RealT(_))), ArrayC(elems)) =>
                        combineTerms(elems.zipWithIndex.map {
                            case (Element(_, constantValue), i) =>
                                elemtype match {
                                    case IntT(size) =>
                                        integerMode match {
                                            case BitIntegerMode() =>
                                                val bits = size.toInt
                                                arrayTermIBV(id, bits, index).at(i.withBits(config.architecture())) === ctermIBV(constantValue, bits)
                                            case MathIntegerMode() =>
                                                arrayTermI(id, index).at(i) === ctermI(constantValue)
                                        }
                                    case RealT(_) =>
                                        arrayTermR(id, index).at(i) === ctermR(constantValue)
                                }
                        })
                    case (ArrayT(_, IntT(size)), c : StringC) =>
                        val chars = unescape(c).zipWithIndex
                        integerMode match {
                            case BitIntegerMode() =>
                                val bits = size.toInt
                                combineTerms(chars.map {
                                    case (char, i) =>
                                        arrayTermIBV(id, bits, index).at(i.withBits(config.architecture())) === ctermIBV(IntC(char.toInt), bits)
                                })
                            case MathIntegerMode() =>
                                combineTerms(chars.map {
                                    case (char, i) =>
                                        arrayTermI(id, index).at(i) === ctermI(IntC(char.toInt))
                                })
                        }
                    case _ =>
                        sys.error(s"itemTerm: no support for global ${show(tipe)} variable initialisation to ${show(constantValue)}")
                }
            case _ =>
                // Other items don't contribute to the program semantics
                True()
        }
        if (term != True())
            logger.info(s"itemTerm:${longshow(item)}-> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return terms that express the effect of an LLVM node, including of
     * phi insns given entry to the block from a particular previous block
     * (if there is one), and exit from this block using a particular choice.
     */
    def blockTerms(block : Block, optPrevBlock : Option[Block], choice : Int) : Vector[TypedTerm[BoolTerm, Term]] = {
        logger.info(s"blockTerms: block ${funAnalyser.blockName(block)}")
        val phiEffects = block.optMetaPhiInstructions.map(i => phiInsnTerm(i, optPrevBlock))
        val effects = block.optMetaInstructions.map(insnTerm)
        val exitEffect = exitTerm(block.metaTerminatorInstruction, choice)
        val allEffects = phiEffects ++ effects :+ exitEffect
        allEffects.filter(_ != True())
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
                    val prevLabel = Label(Local(funAnalyser.blockName(prevBlock)))
                    insn match {
                        case insn @ Phi(Binding(to), tipe, preds) =>
                            // Bound phi result, find value
                            preds.find(_.label == prevLabel) match {
                                case Some(pred) =>
                                    equality(to, tipe, pred.value, tipe)
                                case None =>
                                    sys.error(s"phiInsnTerm: can't find ${show(prevLabel)} in ${longshow(insn)}")
                            }
                        case Phi(NoBinding(), _, _) =>
                            // No effect since result of phi is not bound
                            True()
                    }
                case None =>
                    // No previous block so phi insns don't make sense...
                    sys.error(s"phiInsnTerm: found ${longshow(insn)} but have no previous block")
            }
        logger.debug(s"phiInsnTerm: ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Return a term that expresses the effect of an LLVM terminator instruction
     * that exits a block using a particular choice.
     * Exits or choices are integers >=0, typically 0 and 1 for an if-then-else, 0 for
     * a non-conditional exit.
     */
    def exitTerm(metaInsn : MetaTerminatorInstruction, choice : Int) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.terminatorInstruction
        val term =
            insn match {
                case Branch(_) if choice == 0 =>
                    True()

                case BranchCond(value, _, _) if choice == 0 =>
                    vtermB(value)

                case BranchCond(value, _, _) if choice == 1 =>
                    !vtermB(value)

                case Switch(IntegerT(size), value, _, cases) if choice == cases.length =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            combineTerms(cases.map { case Case(_, v, _) => !(vtermIBV(value, bits) === vtermIBV(v, bits)) })
                        case MathIntegerMode() =>
                            combineTerms(cases.map { case Case(_, v, _) => !(vtermI(value) === vtermI(v)) })
                    }

                case Switch(IntegerT(size), value, _, cases) if choice < cases.length =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            vtermIBV(value, bits) === vtermIBV(cases(choice).value, bits)
                        case MathIntegerMode() =>
                            vtermI(value) === vtermI(cases(choice).value)
                    }

                case _ : Ret | RetVoid() if choice == 0 =>
                    True()

                case insn =>
                    sys.error(s"exitTerm: can't handle choice $choice of ${longshow(insn)}")
            }
        logger.debug(s"exitTerm: choice $choice of ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /*
     * Throw an error that `op` applied to `left` and `right` cannot be handled.
     * Prefix is prepended to the message.
     */
    def opError[T](prefix : String, left : Value, op : ASTNode, right : Value) : TypedTerm[T, Term] =
        sys.error(s"$prefix op ${show(op)} ${show(left)} ${show(right)} not handled")

    /**
     * Generate a term that gets the integer value of the current rounding mode.
     */
    def fegetround(bits : Int) : TypedTerm[BVTerm, Term] = {
        val mode = ntermRM(fprmodeName)
        (mode === ctermRM(RNE())).ite(
            0.withBits(bits), // FE_TONEAREST
            (mode === ctermRM(RTN())).ite(
                0x400.withBits(bits), // FE_DOWNWARD
                (mode === ctermRM(RTP())).ite(
                    0x800.withBits(bits), // FE_UPWARD
                    (mode === ctermRM(RTZ())).ite(
                        0xc00.withBits(bits), // FE_TOWARDZERO
                        -1.withBits(bits) // no correspondence or indeterminable
                    )
                )
            )
        )
    }

    /**
     * Generate a term that sets the value of the current rounding mode based on
     * the integer argument. See `fegetround` for the correspondence. As per the
     * library spec, if the new mode is not recognised then no change is made.
     * If the argument is a constant, short-circuit the dynamic check.
     */
    def fesetround(insn : Instruction, bits : Int, arg1 : Value, bits1 : Int) : TypedTerm[BoolTerm, Term] = {
        val modeVar = ntermAtRM(insn, fprmodeName)
        val prevModeVar = prevNtermAtRM(insn, fprmodeName)
        val mode =
            arg1 match {
                case Const(IntC(i)) =>
                    i.toInt match {
                        case 0     => ctermRM(RNE()) // FE_TONEAREST
                        case 0x400 => ctermRM(RTN()) // FE_DOWNWARD
                        case 0x800 => ctermRM(RTP()) // FE_UPWARD
                        case 0xc00 => ctermRM(RTZ()) // FE_TOWARDZERO
                        case _     => prevModeVar
                    }
                case _ =>
                    val aterm = vtermIBV(arg1, bits1)
                    (aterm === 0.withBits(bits)).ite( // FE_TONEAREST
                        ctermRM(RNE()),
                        (aterm === 0x400.withBits(bits)).ite( // FE_DOWNWARD
                            ctermRM(RTN()),
                            (aterm === 0x800.withBits(bits)).ite( // FE_UPWARD
                                ctermRM(RTP()),
                                (aterm === 0xc00.withBits(bits)).ite( // FE_TOWARDZERO
                                    ctermRM(RTZ()),
                                    prevModeVar
                                )
                            )
                        )
                    )
            }
        FPBVRoundingMode = ntermAtRM(insn, fprmodeName)
        modeVar === mode
    }

    /**
     * The copysign() function returns x with its sign changed to y's.
     * copysign(x, y) returns a NaN (with y's sign) if x is a NaN.
     * if (isNaN x) then NaN else if (isNegative x) -1 * y else y.
     * Assumes that the result and the two terms are of the same type
     * (hence size).
     */
    def copysign(term1 : TypedTerm[FPBVTerm, Term], term2 : TypedTerm[FPBVTerm, Term],
        bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val (exp, sig) = fpexpsig(bits)
        let {
            val x = BoundedVar("x", term1)
            val y = BoundedVar("y", term2)
            x.isNaN.ite(
                y.isNegative.ite(
                    -NaN(exp, sig),
                    NaN(exp, sig)
                ),
                x.isNegative.ite(
                    y.isNegative.ite(x, -x),
                    y.isNegative.ite(-x, x)
                )
            )
        }
    }

    /**
     * Convert a floating-point size to exponent and significand sizes (in that order).
     */
    def fpexpsig(bits : Int) : (Int, Int) = {
        bits match {
            case 16  => (5, 11)
            case 32  => (8, 24)
            case 64  => (11, 53)
            case 80  => (15, 65)
            case 128 => (15, 113)
            case _   => sys.error(s"fpexpsig: unsupported bit size $bits")
        }
    }

    /*
     * Cast a floating-point bitvector term to a given number of bits.
     */
    def fpbvcast(term : TypedTerm[FPBVTerm, Term], bits : Int) : TypedTerm[FPBVTerm, Term] = {
        val (exp, sig) = fpexpsig(bits)
        term.toFPBV(exp, sig)
    }

    /*
     * Return a term for a given sized floating-point decimal constant.
     */
    def fpdecconst(f : String, bits : Int) : TypedTerm[FPBVTerm, Term] =
        bits match {
            case 32 => f.toFloat.asFloat32
            case 64 => f.toDouble.asFloat64
            case _  => sys.error(s"fpconst: unsupported bit size $bits")
        }

    /**
     * Pad a string with '0' characters on the left up to length. If `s` is
     * already longer than the length, it is returned.
     */
    def padLeftTo(s : String, length : Int) : String =
        "0" * (length - s.length) + s

    /**
     * Make a floating-point bitvector representation of a hexadecimal literal
     * string. The literal is first left-padded to the length given by srcbits
     * divided by four. It is an error if it is already longer than that. The
     * literal is then converted into a srcbits long number, then cast to
     * tgtbits.
     */
    def fphexconst(s : String, srcbits : Int, tgtbits : Int) : TypedTerm[FPBVTerm, Term] = {
        val length = srcbits / 4
        if (s.length <= length) {
            val num = padLeftTo(s, length)
            val (exp, sig) = fpexpsig(srcbits)
            fpbvcast(BVs("#x" + num).toFPBV(exp, sig), tgtbits)
        } else
            sys.error(s"fpliteral: literal $s is larger than expected $length characters")
    }

    /*
     * Return a term equivalent to running "fpclassify" on an argument.
     */
    def fpclassify(aterm : TypedTerm[FPBVTerm, Term], bits : Int) : TypedTerm[BVTerm, Term] =
        let {
            val x = BoundedVar("x", aterm)
            x.isNaN.ite(
                0.withBits(bits), // FP_NAN
                x.isInfinite.ite(
                    1.withBits(bits), // FP_INFINITE,
                    x.isZero.ite(
                        2.withBits(bits), // FP_ZERO,
                        x.isSubNormal.ite(
                            3.withBits(bits), // FP_SUBNORMAL,
                            x.isNormal.ite(
                                4.withBits(bits), // FP_NORMAL,
                                -1.withBits(bits) // Should never happen??
                            )
                        )
                    )
                )
            )
        }

    /**
     * Convert a floating-point bitvector into a signed integer bitvector.
     * FIXME: should be in Scala SMT?
     */
    def fpToSignedInt(op1 : TypedTerm[FPBVTerm, Term], bits : Int)(implicit rm : TypedTerm[RMFPBVTerm, Term]) : TypedTerm[BVTerm, FPBVToSBV] =
        TypedTerm[BVTerm, FPBVToSBV](
            op1.typeDefs,
            FPBVToSBV(bits.toString, rm.termDef, op1.termDef)
        )

    /*
     * Return a term that expresses the effect of a regular LLVM instruction.
     */
    def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        val term =
            insn match {

                /*
                 * Ignore stack memory allocation.
                 */
                case _ : Alloca =>
                    True()

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
                                opError[BoolTerm]("Boolean", left, op, right)
                        }
                    ntermB(to) === exp

                /*
                 * Integer binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(_, _, _, Const(UndefC()), _) =>
                    True()

                case Binary(_, _, _, _, Const(UndefC())) =>
                    True()

                case Binary(Binding(to), op, IntT(size), left, right) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            val lterm = vtermIBV(left, bits)
                            val rterm = vtermIBV(right, bits)
                            val exp =
                                op match {
                                    case _ : Add  => lterm + rterm
                                    case _ : And  => lterm and rterm
                                    case _ : AShR => lterm ashr rterm
                                    case _ : LShR => lterm >> rterm
                                    case _ : Mul  => lterm * rterm
                                    case _ : Or   => lterm or rterm
                                    case _ : SDiv => lterm sdiv rterm
                                    case _ : ShL  => lterm << rterm
                                    case _ : SRem => lterm srem rterm
                                    case _ : Sub  => lterm - rterm
                                    case _ : UDiv => lterm / rterm
                                    case _ : URem => lterm % rterm
                                    case _ : XOr  => lterm xor rterm
                                    case _ =>
                                        opError[BVTerm]("bitvector integer", left, op, right)
                                }
                            ntermIBV(to, bits) === exp
                        case MathIntegerMode() =>
                            val lterm = vtermI(left)
                            val rterm = vtermI(right)
                            val exp =
                                op match {
                                    case _ : Add => lterm + rterm
                                    case _ : And =>
                                        right match {
                                            case Const(IntC(i)) =>
                                                powerOfTwo((i + 1).toInt) match {
                                                    case -1 =>
                                                        opError[IntTerm]("math integer", left, op, right)
                                                    case _ =>
                                                        lterm % (i + 1).toInt
                                                }
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : AShR | _ : LShR =>
                                        // FIXME: LShrR version is not right for negative numbers?
                                        right match {
                                            case Const(IntC(i)) =>
                                                lterm / Math.pow(2, i.toDouble).toInt
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : Mul => lterm * rterm
                                    case _ : Or =>
                                        // FIXME: correct for negative lterm?
                                        right match {
                                            case Const(IntC(i)) if i == 1 =>
                                                (lterm % 2 === 0).ite(lterm + 1, lterm)
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : ShL =>
                                        right match {
                                            case Const(IntC(i)) =>
                                                lterm * Math.pow(2, i.toDouble).toInt
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ : SDiv => lterm / rterm
                                    case _ : SRem => lterm % rterm
                                    case _ : Sub  => lterm - rterm
                                    case _ : UDiv => lterm / rterm
                                    case _ : URem => lterm % rterm
                                    case _ : XOr =>
                                        right match {
                                            case Const(IntC(i)) if i == -1 =>
                                                lterm * -1 - 1
                                            case _ =>
                                                opError[IntTerm]("math integer", left, op, right)
                                        }
                                    case _ =>
                                        opError[IntTerm]("math integer", left, op, right)
                                }
                            ntermI(to) === exp
                    }

                /*
                 * Floating-point binary operation (`left` `op` `right` into `to`).
                 */
                case Binary(Binding(to), FAdd(_), tipe, left, Const(FloatC("0"))) =>
                    ntermR(to) === vtermR(left)

                case Binary(Binding(to), op, RealT(bits), left, right) =>
                    realMode match {
                        case BitRealMode() =>
                            val lterm = fpbvcast(vtermRBV(left, bits), 64)
                            val rterm = fpbvcast(vtermRBV(right, bits), 64)
                            val exp =
                                op match {
                                    case _ : FAdd => lterm + rterm
                                    case _ : FDiv => lterm / rterm
                                    case _ : FMul => lterm * rterm
                                    case _ : FSub => lterm - rterm
                                    case _ =>
                                        opError[FPBVTerm]("float", left, op, right)
                                }
                            ntermRBV(to, bits) === fpbvcast(exp, bits)
                        case MathRealMode() =>
                            val lterm = vtermR(left)
                            val rterm = vtermR(right)
                            val exp =
                                op match {
                                    case _ : FAdd => lterm + rterm
                                    case _ : FDiv => lterm / rterm
                                    case _ : FMul => lterm * rterm
                                    case _ : FSub => lterm - rterm
                                    case _ =>
                                        opError[RealTerm]("float", left, op, right)
                                }
                            ntermR(to) === exp
                    }

                // Call to `assume`
                case Call(_, _, _, _, _, VerifierFunction(Assume()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                    tipe match {
                        case BoolT() => vtermB(arg)
                        case IntT(size) =>
                            integerMode match {
                                case BitIntegerMode() =>
                                    val bits = size.toInt
                                    !(vtermIBV(arg, bits) === 0.withUBits(bits))
                                case MathIntegerMode() =>
                                    !(vtermI(arg) === 0)
                            }
                        case _ =>
                            sys.error(s"insnTerm: unexpected type ${show(tipe)} in assume call")
                    }

                // Call to `nondet_X` where X is an unsigned type
                case NondetFunctionCall(Binding(to), UnsignedType(bits)) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            ntermIBV(to, bits) uge 0.withBits(bits)
                        case MathIntegerMode() =>
                            ntermI(to) >= 0
                    }

                // Other calls to `nondet_X`
                case NondetFunctionCall(_, _) =>
                    True()

                // Memory allocations can't fail
                case MemoryAllocFunctionCall(Binding(to)) =>
                    !(ntermI(to) === 0)

                // Handle library function calls if possible, ignoring by default
                // Only ones that we can handle should make it here. The rest are 
                // trapped when we see if inlining worked

                case LibFunctionCall0(Binding(to), IntT(size), name) =>
                    realMode match {
                        case BitRealMode() =>
                            name match {
                                case FEGetRound() =>
                                    val bits = size.toInt
                                    ntermIBV(to, bits) === fegetround(bits)
                                case _ =>
                                    True()
                            }
                        case _ =>
                            True()
                    }

                case LibFunctionCall1(Binding(to), IntT(size), name, arg1, IntT(size1)) =>
                    realMode match {
                        case BitRealMode() =>
                            name match {
                                case FESetRound() =>
                                    val bits = size.toInt
                                    val bits1 = size1.toInt
                                    fesetround(insn, bits, arg1, bits1)
                                case _ =>
                                    True()
                            }
                        case _ =>
                            True()
                    }

                case LibFunctionCall1(Binding(to), tipe, name, arg1, RealT(bits1)) =>
                    realMode match {
                        case BitRealMode() =>
                            val aterm1 = vtermRBV(arg1, bits1)
                            val bits =
                                tipe match {
                                    case IntegerT(bits) => bits
                                    case RealT(bits)    => bits
                                    case _ =>
                                        sys.error(s"insnTerm: LibFunctionCall1 unsupported return type $tipe")
                                }
                            name match {
                                case Ceil() =>
                                    ntermRBV(to, bits) === aterm1.roundToI(ctermRM(RTP()))
                                case FAbs() =>
                                    ntermRBV(to, bits) === aterm1.abs
                                case Floor() =>
                                    ntermRBV(to, bits) === aterm1.roundToI(ctermRM(RTN()))
                                case FPClassify() =>
                                    ntermIBV(to, bits) === fpclassify(aterm1, bits)
                                case IsInf() =>
                                    ntermIBV(to, bits) === aterm1.isInfinite.ite(1.withBits(bits), 0.withBits(bits))
                                case IsNan() =>
                                    ntermIBV(to, bits) === aterm1.isNaN.ite(1.withBits(bits), 0.withBits(bits))
                                case RInt() =>
                                    ntermRBV(to, bits) === aterm1.roundToI
                                case Round() =>
                                    ntermRBV(to, bits) === aterm1.roundToI(ctermRM(RNA()))
                                case SignBit() =>
                                    ntermIBV(to, bits) === aterm1.isNegative.ite(1.withBits(bits), 0.withBits(bits))
                                case TruncName() =>
                                    ntermRBV(to, bits) === aterm1.roundToI(ctermRM(RTZ()))
                                case _ =>
                                    True()
                            }
                        case MathRealMode() =>
                            name match {
                                case FAbs() =>
                                    ntermR(to) === absR(vtermR(arg1))
                                case _ =>
                                    True()
                            }
                    }

                case LibFunctionCall2(Binding(to), RealT(bits), name, arg1, RealT(bits1),
                    arg2, RealT(bits2)) =>
                    realMode match {
                        case BitRealMode() =>
                            val aterm1 = vtermRBV(arg1, bits1)
                            val aterm2 = vtermRBV(arg2, bits2)
                            name match {
                                case CopySign() =>
                                    ntermRBV(to, bits) === copysign(aterm1, aterm2, bits)
                                case FDim() =>
                                    ntermRBV(to, bits) === (aterm1 > aterm2).ite(aterm1 - aterm2, fpdecconst("0", bits))
                                case FMax() =>
                                    ntermRBV(to, bits) === aterm1.max(aterm2)
                                case FMin() =>
                                    ntermRBV(to, bits) === aterm1.min(aterm2)
                                case FMod() | Remainder() =>
                                    ntermRBV(to, bits) === aterm1 % aterm2
                                case _ =>
                                    True()
                            }
                        case MathRealMode() =>
                            True()
                    }

                // Compare two Boolean values

                case Compare(_, _, _, Const(UndefC()), _) =>
                    True()

                case Compare(_, _, _, _, Const(UndefC())) =>
                    True()

                case Compare(Binding(to), ICmp(icond), BoolT(), left, right) =>
                    val lterm = vtermB(left)
                    val rterm = vtermB(right)
                    val exp =
                        icond match {
                            case EQ() => lterm === rterm
                            case NE() => !(lterm === rterm)
                            case _ =>
                                opError[BoolTerm]("Boolean comparison", left, icond, right)
                        }
                    ntermB(to) === exp

                // Compare two integer or pointer values

                case Compare(Binding(to), ICmp(icond), ComparisonType(bits), left, right) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val lterm = vtermIBV(left, bits)
                            val rterm = vtermIBV(right, bits)
                            val exp =
                                icond match {
                                    case EQ()  => lterm === rterm
                                    case NE()  => !(lterm === rterm)
                                    case UGT() => lterm ugt rterm
                                    case UGE() => lterm uge rterm
                                    case ULT() => lterm ult rterm
                                    case ULE() => lterm ule rterm
                                    case SGT() => lterm sgt rterm
                                    case SGE() => lterm sge rterm
                                    case SLT() => lterm slt rterm
                                    case SLE() => lterm sle rterm
                                    case _ =>
                                        opError[BoolTerm]("bitvector integer comparison", left, icond, right)
                                }
                            ntermB(to) === exp
                        case MathIntegerMode() =>
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
                                        opError[BoolTerm]("math integer comparison", left, icond, right)
                                }
                            val cmp = ntermB(to) === exp
                            icond match {
                                case UGT() | UGE() | ULT() | ULE() =>
                                    (lterm >= 0) & (rterm >= 0) & cmp
                                case _ =>
                                    cmp
                            }
                    }

                // Compare two floating-point values

                case Compare(Binding(to), FCmp(fcond), ComparisonType(bits), left, right) =>
                    realMode match {
                        case BitRealMode() =>
                            val lterm = fpbvcast(vtermRBV(left, bits), 64)
                            val rterm = fpbvcast(vtermRBV(right, bits), 64)
                            val unordered = lterm.isNaN | rterm.isNaN
                            val ordered = !unordered
                            val exp =
                                fcond match {
                                    case FFalse() => False()
                                    case FOEQ()   => ordered & lterm.fpeq(rterm)
                                    case FOGT()   => ordered & lterm > rterm
                                    case FOGE()   => ordered & lterm >= rterm
                                    case FOLT()   => ordered & lterm < rterm
                                    case FOLE()   => ordered & lterm <= rterm
                                    case FONE()   => ordered & !(lterm.fpeq(rterm))
                                    case FORD()   => ordered
                                    case FUEQ()   => unordered | lterm.fpeq(rterm)
                                    case FUGT()   => unordered | lterm > rterm
                                    case FUGE()   => unordered | lterm >= rterm
                                    case FULT()   => unordered | lterm < rterm
                                    case FULE()   => unordered | lterm <= rterm
                                    case FUNE()   => unordered | !(lterm.fpeq(rterm))
                                    case FUNO()   => unordered
                                    case FTrue()  => True()
                                    case _ =>
                                        opError[BoolTerm]("bitvector real comparison", left, fcond, right)
                                }
                            ntermB(to) === exp
                        case MathRealMode() =>
                            val lterm = vtermR(left)
                            val rterm = vtermR(right)
                            val exp =
                                fcond match {
                                    case FFalse() => False()
                                    case FOEQ()   => lterm === rterm
                                    case FOGT()   => lterm > rterm
                                    case FOGE()   => lterm >= rterm
                                    case FOLT()   => lterm < rterm
                                    case FOLE()   => lterm <= rterm
                                    case FONE()   => !(lterm === rterm)
                                    case FORD()   => True()
                                    case FTrue()  => True()
                                    case _ =>
                                        opError[BoolTerm]("math real comparison", left, fcond, right)
                                }
                            ntermB(to) === exp
                    }

                // Conversions

                case Convert(Binding(to), _, IntT(_), Const(UndefC()), IntT(_)) =>
                    True()

                case Convert(Binding(to), op, fromType @ IntT(fromSize), from, toType @ IntT(toSize)) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val toBits = toSize.toInt
                            val fromBits = fromSize.toInt
                            val bitsDiff = toBits - fromBits
                            if (bitsDiff == 0)
                                equality(to, toType, from, fromType)
                            else {
                                val toTerm =
                                    if (toBits == 1)
                                        ntermB(to).ite(1.withUBits(toBits), 0.withUBits(toBits))
                                    else
                                        ntermIBV(to, toBits)
                                val fromTerm =
                                    if (fromBits == 1)
                                        vtermB(from).ite(1.withUBits(fromBits), 0.withUBits(fromBits))
                                    else
                                        vtermIBV(from, fromBits)
                                op match {
                                    case SExt() =>
                                        if (bitsDiff > 0)
                                            toTerm === (fromTerm sext bitsDiff)
                                        else
                                            sys.error(s"insnTerm: shrinking sext insn ${longshow(insn)}")
                                    case Trunc() =>
                                        if (bitsDiff > 0)
                                            sys.error(s"insnTerm: growing trunc insn ${longshow(insn)}")
                                        else
                                            toTerm === fromTerm.extract(toBits - 1, 0)
                                    case ZExt() =>
                                        if (bitsDiff > 0)
                                            toTerm === (fromTerm zext bitsDiff)
                                        else
                                            sys.error(s"insnTerm: shrinking zext insn ${longshow(insn)}")
                                    case _ =>
                                        equality(to, toType, from, fromType)
                                }
                            }
                        case MathIntegerMode() =>
                            equality(to, toType, from, fromType)
                    }

                case Convert(Binding(to), op, fromType @ RealT(fromBits), from, toType @ IntT(toSize)) =>
                    realMode match {
                        case BitRealMode() =>
                            val toBits = toSize.toInt
                            op match {
                                case Bitcast() | FPToSI() =>
                                    ntermIBV(to, toBits) === fpToSignedInt(vtermRBV(from, fromBits), toBits)
                                case _ =>
                                    equality(to, toType, from, fromType)
                            }
                        case MathRealMode() =>
                            equality(to, toType, from, fromType)
                    }

                case Convert(Binding(to), op, fromType @ IntT(fromSize), from, toType @ RealT(toBits)) =>
                    realMode match {
                        case BitRealMode() =>
                            val fromBits = fromSize.toInt
                            op match {
                                // FIXME: need Scala SMT support
                                // case SIToFP() =>
                                //     ntermRBV(to, toBits) === signedIntToFP(vtermRBV(from, fromBits), toBits)
                                case _ =>
                                    equality(to, toType, from, fromType)
                            }
                        case MathRealMode() =>
                            equality(to, toType, from, fromType)
                    }

                case Convert(Binding(to), op, fromType @ RealT(fromBits), from, toType @ RealT(toBits)) =>
                    realMode match {
                        case BitRealMode() =>
                            val bitsDiff = toBits - fromBits
                            if (bitsDiff == 0)
                                equality(to, toType, from, fromType)
                            else {
                                val toTerm = ntermRBV(to, toBits)
                                val fromTerm = vtermRBV(from, fromBits)
                                op match {
                                    case FPExt() =>
                                        if (bitsDiff > 0)
                                            toTerm === fpbvcast(fromTerm, toBits)
                                        else
                                            sys.error(s"insnTerm: shrinking fpext insn ${longshow(insn)}")
                                    case FPTrunc() =>
                                        if (bitsDiff > 0)
                                            sys.error(s"insnTerm: growing fptrunc insn ${longshow(insn)}")
                                        else
                                            toTerm === fpbvcast(fromTerm, toBits)
                                    case _ =>
                                        equality(to, toType, from, fromType)
                                }
                            }
                        case MathRealMode() =>
                            equality(to, toType, from, fromType)
                    }

                case Convert(Binding(to), _, fromType, from, toType) =>
                    equality(to, toType, from, fromType)

                // Pointer dereference

                // We ignore getelementptr insns that have an "array element" as the target.
                // The element properties are accessed when the target is used in another insn.
                case GetElementPtr(Binding(to), _, _, _, _, _) if namer.elementProperty(to).isDefined =>
                    True()

                // Otherwise, fail on getelementptr insns since we don't want to draw any
                // invalid conclusions
                case _ : GetElementPtr =>
                    sys.error(s"insnTerm: unsupported getelementptr insn ${longshow(insn)}")

                // Select (inline choice)

                case Select(Binding(to), SelectI1T(), from, BoolT(), value1, BoolT(), value2) =>
                    ntermB(to) === vtermB(from).ite(vtermB(value1), vtermB(value2))

                case Select(Binding(to), SelectI1T(), from, IntegerT(size1), value1, IntegerT(size2), value2) if size1 == size2 =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size1.toInt
                            ntermIBV(to, bits) === vtermB(from).ite(vtermIBV(value1, bits), vtermIBV(value2, bits))
                        case MathIntegerMode() =>
                            ntermI(to) === vtermB(from).ite(vtermI(value1), vtermI(value2))
                    }

                case Select(Binding(to), SelectI1T(), from, RealT(bits1), value1, RealT(bits2), value2) if bits1 == bits2 =>
                    realMode match {
                        case BitRealMode() =>
                            ntermRBV(to, bits1) === vtermB(from).ite(vtermRBV(value1, bits1), vtermRBV(value2, bits1))
                        case MathRealMode() =>
                            ntermR(to) === vtermB(from).ite(vtermR(value1), vtermR(value2))
                    }

                // Array loads and stores, just non-Boolean, integer and float elements for now

                case insn @ Load(Binding(to), _, IntegerT(size), _, ArrayElement(array, index), _) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            ntermIBV(to, bits) === arrayTermAtIBV(insn, bits, array).at(vtermAtIBV(insn, architecture, index))
                        case MathIntegerMode() =>
                            ntermI(to) === arrayTermAtI(insn, array).at(vtermAtI(insn, index))
                    }

                case insn @ Load(Binding(to), _, FloatT(), _, ArrayElement(array, index), _) =>
                    realMode match {
                        case BitRealMode() =>
                            sys.error("insnTerm: floating-point bit-vector load not yet supported")
                        case MathRealMode() =>
                            ntermR(to) === arrayTermAtR(insn, array).at(vtermAtI(insn, index))
                    }

                case insn @ Store(_, IntegerT(size), from, _, ArrayElement(array, index), _) =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            arrayTermAtIBV(insn, bits, array) === prevArrayTermAtIBV(insn, bits, array).store(vtermAtIBV(insn, architecture, index), vtermIBV(from, bits))
                        case MathIntegerMode() =>
                            arrayTermAtI(insn, array) === prevArrayTermAtI(insn, array).store(vtermAtI(insn, index), vtermI(from))
                    }

                case insn @ Store(_, FloatT(), from, _, ArrayElement(array, index), _) =>
                    realMode match {
                        case BitRealMode() =>
                            sys.error("insnTerm: floating-point bit-vector store not yet supported")
                        case MathRealMode() =>
                            arrayTermAtR(insn, array) === prevArrayTermAtR(insn, array).store(vtermAtI(insn, index), vtermR(from))
                    }

                // Non-array loads and stores

                case Load(Binding(to), _, tipe, _, from, _) =>
                    equality(to, tipe, from, tipe)

                case Store(_, tipe, from, _, Named(to), _) =>
                    equality(to, tipe, from, tipe)

                case insn =>
                    sys.error(s"insnTerm: don't know the effect of ${longshow(insn)}")

            }
        logger.debug(s"insnTerm: ${longshow(insn)} -> ${showTerm(term.termDef)}")
        term
    }

    /**
     * Make an integer ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermIBV(id : String, bits : Int, index : Int) : TypedTerm[ArrayTerm[BVTerm], Term] =
        ArrayBV1(termid(id), architecture, bits).indexed(index)

    /**
     * Make an integer ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermI(id : String, index : Int) : TypedTerm[ArrayTerm[IntTerm], Term] =
        ArrayInt1(termid(id)).indexed(index)

    /**
     * Make a real ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermR(id : String, index : Int) : TypedTerm[ArrayTerm[RealTerm], Term] =
        ArrayReal1(termid(id)).indexed(index)

    /**
     * Return a bit vector array term that expresses a name when referenced from node.
     */
    def arrayTermAtIBV(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermIBV(show(name), bits, indexOf(node, show(name)))

    /**
     * Return an integer array term that expresses a name when referenced from node.
     */
    def arrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), indexOf(node, show(name)))

    /**
     * Return a real array term that expresses a name when referenced from node.
     */
    def arrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), indexOf(node, show(name)))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtIBV(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermIBV(show(name), bits, scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Return a real term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Make a Boolean term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermB(id : String, index : Int) : TypedTerm[BoolTerm, Term] =
        new VarTerm(termid(id), BoolSort(), Some(index))

    /**
     * Make a bit vector term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermIBV(id : String, bits : Int, index : Int) : TypedTerm[BVTerm, Term] =
        new VarTerm(termid(id), BitVectorSort(bits.toString), Some(index))

    /**
     * Make an integer term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermI(id : String, index : Int) : TypedTerm[IntTerm, Term] =
        new VarTerm(termid(id), IntSort(), Some(index))

    /**
     * Make a floating-point rounding-mode term for the named variable where `id` is
     * the base name identifier and index it.
     */
    def varTermRM(id : String, index : Int) : TypedTerm[RMFPBVTerm, Term] =
        new VarTerm(termid(id), RoundingModeSort(), Some(index))

    /**
     * Make a bit vector term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermRBV(id : String, bits : Int, index : Int) : TypedTerm[FPBVTerm, Term] = {
        val sort =
            bits match {
                case 16 => FPFloat16()
                case 32 => FPFloat32()
                case 64 => FPFloat64()
                case 80 =>
                    val (exp, sig) = fpexpsig(80)
                    FPBitVectorSort(exp.toString, sig.toString)
                case 128 => FPFloat128()
                case _   => sys.error(s"valTermRBV: unsupported bit size $bits")
            }
        new VarTerm(termid(id), sort, Some(index))
    }

    /**
     * Make a real term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermR(id : String, index : Int) : TypedTerm[RealTerm, Term] =
        new VarTerm(termid(id), RealSort(), Some(index))

    /**
     * Return a Boolean term that expresses a name when referenced from node.
     */
    def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
        varTermB(show(name), indexOf(node, show(name)))

    /**
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtIBV(node : ASTNode, bits : Int, name : Name) : TypedTerm[BVTerm, Term] =
        varTermIBV(show(name), bits, indexOf(node, show(name)))

    /**
     * Return an integer term that expresses a name when referenced from node.
     */
    def ntermAtI(node : ASTNode, name : Name) : TypedTerm[IntTerm, Term] =
        varTermI(show(name), indexOf(node, show(name)))

    /**
     * Return an rounding mode term that expresses the previous name when referenced
     * from node.
     */
    def prevNtermAtRM(node : Product, name : Name) : TypedTerm[RMFPBVTerm, Term] =
        varTermRM(show(name), indexOf(node, show(name)) - 1)

    /**
     * Return a rounding mode term that expresses a name when referenced from node.
     */
    def ntermAtRM(node : ASTNode, name : Name) : TypedTerm[RMFPBVTerm, Term] =
        varTermRM(show(name), indexOf(node, show(name)))

    /**
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtRBV(node : ASTNode, bits : Int, name : Name) : TypedTerm[FPBVTerm, Term] =
        varTermRBV(show(name), bits, indexOf(node, show(name)))

    /**
     * Return a real term that expresses a name when referenced from node.
     */
    def ntermAtR(node : ASTNode, name : Name) : TypedTerm[RealTerm, Term] =
        varTermR(show(name), indexOf(node, show(name)))

    /**
     * Return a Boolean term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermB(name : Name) : TypedTerm[BoolTerm, Term] =
        ntermAtB(name, name)

    /**
     * Return a bit vector term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermIBV(name : Name, bits : Int) : TypedTerm[BVTerm, Term] =
        ntermAtIBV(name, bits, name)

    /**
     * Return an integer term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermI(name : Name) : TypedTerm[IntTerm, Term] =
        ntermAtI(name, name)

    /**
     * Return an rounding mode term that expresses a name when referenced from node.
     */
    def ntermRM(name : Name) : TypedTerm[RMFPBVTerm, Term] =
        ntermAtRM(name, name)

    /**
     * Return a bit vector term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermRBV(name : Name, bits : Int) : TypedTerm[FPBVTerm, Term] =
        ntermAtRBV(name, bits, name)

    /**
     * Return a real term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermR(name : Name) : TypedTerm[RealTerm, Term] =
        ntermAtR(name, name)

    /**
     * Return a BoolTerm that expresses an LLVM i1 value.
     */
    def vtermB(value : Value) : TypedTerm[BoolTerm, Term] =
        value match {
            case Const(c) =>
                ctermB(c)
            case Named(name) =>
                ntermB(name)
            case value =>
                sys.error(s"vtermB: unexpected value $value")
        }

    /**
     * Return an integer term that expresses a value when referenced from node.
     */
    def vtermAtIBV(node : ASTNode, bits : Int, value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtIBV(node, bits, name)
            case _ =>
                vtermIBV(value, bits)
        }

    /**
     * Return an integer term that expresses a value when referenced from node.
     */
    def vtermAtI(node : ASTNode, value : Value) : TypedTerm[IntTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtI(node, name)
            case _ =>
                vtermI(value)
        }

    /**
     * Return a bit vector term that expresses a value when referenced from node.
     */
    def vtermAtRBV(node : ASTNode, bits : Int, value : Value) : TypedTerm[FPBVTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtRBV(node, bits, name)
            case _ =>
                vtermRBV(value, bits)
        }

    /**
     * Return a real term that expresses a value when referenced from node.
     */
    def vtermAtR(node : ASTNode, value : Value) : TypedTerm[RealTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtR(node, name)
            case _ =>
                vtermR(value)
        }

    /**
     * Return a bit vector term that expresses an LLVM in value with n > 1.
     */
    def vtermIBV(value : Value, bits : Int) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(c) =>
                ctermIBV(c, bits)
            case Named(name) =>
                ntermIBV(name, bits)
            case value =>
                sys.error(s"vtermIBV: unexpected value $value")
        }

    /**
     * Return an integer term that expresses an LLVM `in` value with n > 1.
     */
    def vtermI(value : Value) : TypedTerm[IntTerm, Term] =
        value match {
            case Const(c) =>
                ctermI(c)
            case Named(name) =>
                ntermI(name)
            case value =>
                sys.error(s"vtermI: unexpected value $value")
        }

    /**
     * Return a bit vector term that expresses an LLVM floating-point value.
     */
    def vtermRBV(value : Value, bits : Int) : TypedTerm[FPBVTerm, Term] =
        value match {
            case Const(c) =>
                ctermRBV(c, bits)
            case Named(name) =>
                ntermRBV(name, bits)
            case value =>
                sys.error(s"vtermRBV: unexpected value $value")
        }

    /**
     * Return a real term that expresses an LLVM floating-point value.
     */
    def vtermR(value : Value) : TypedTerm[RealTerm, Term] =
        value match {
            case Const(c) =>
                ctermR(c)
            case Named(name) =>
                ntermR(name)
            case value =>
                sys.error(s"vtermR: unexpected value $value")
        }

    /**
     * Return a Boolean term that exprinsesses an LLVM Boolean constant value.
     */
    def ctermB(constantValue : ConstantValue) : TypedTerm[BoolTerm, Term] =
        constantValue match {
            case FalseC() =>
                False()
            case IntC(i) =>
                if (i == 0) False() else True()
            case TrueC() =>
                True()
            case ZeroC() =>
                False()
            case value =>
                sys.error(s"ctermB: unexpected constant value $constantValue")
        }

    /**
     * Return a bit vector term that exprinsesses an LLVM integer constant value.
     */
    def ctermIBV(constantValue : ConstantValue, bits : Int) : TypedTerm[BVTerm, Term] =
        constantValue match {
            case IntC(i) =>
                i.toInt.withBits(bits)
            case NullC() | ZeroC() =>
                0.withBits(bits)
            case value =>
                sys.error(s"ctermIBV: unexpected constant value $constantValue")
        }

    /**
     * Return an integer term that expresses an LLVM integer constant value.
     */
    def ctermI(constantValue : ConstantValue) : TypedTerm[IntTerm, Term] =
        constantValue match {
            case IntC(i) =>
                i.toInt
            case FalseC() | NullC() | ZeroC() =>
                0
            case TrueC() =>
                1
            case ArrayElementC(name, Const(IntC(index))) =>
                arrayTermAtI(name, name).at(index.toInt)
            case value =>
                sys.error(s"ctermI: unexpected constant value $constantValue")
        }

    /**
     * Return a bit vector term that exprinsesses an LLVM floating-point constant value.
     */
    def ctermRBV(constantValue : ConstantValue, bits : Int) : TypedTerm[FPBVTerm, Term] =
        constantValue match {
            case FloatC(f) =>
                if (f.startsWith("0xK"))
                    fphexconst(f.drop(3), 80, bits)
                else if (f.startsWith("0x"))
                    fphexconst(f.drop(2), 64, bits)
                else
                    fpdecconst(f, bits)
            case UndefC() =>
                fpdecconst("0", bits)
            case value =>
                sys.error(s"ctermRBV: unexpected constant value $constantValue")
        }

    /**
     * Return a rounding mode term that exprinsesses a constant rounding mode.
     */
    def ctermRM(mode : RoundingMode) : TypedTerm[RMFPBVTerm, Term] =
        RMs(mode)

    /**
     * Return a real term that expresses an LLVM floating-point constant value.
     */
    def ctermR(constantValue : ConstantValue) : TypedTerm[RealTerm, Term] =
        constantValue match {
            case FloatC(f) =>
                if (f.startsWith("0x"))
                    java.lang.Double.longBitsToDouble(java.lang.Long.parseUnsignedLong(f.drop(2), 16))
                else
                    f.toDouble
            case UndefC() =>
                0 // Dummy
            case value =>
                sys.error(s"ctermR: unexpected constant value $constantValue")
        }

    /**
     * Make an equality term between an LLVM name and an LLVM value. The
     * kind of equality depends on the type of the name. We mostly handle
     * integer, real and Boolean equalities, but also pointers as integers.
     */
    def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, EqualTerm] =
        if (from == Const(UndefC()))
            True() === True()
        else
            (toType, fromType) match {
                case (BoolT(), BoolT()) =>
                    ntermB(to) === vtermB(from)
                case (RealT(bits), RealT(_)) =>
                    realMode match {
                        case BitRealMode() =>
                            ntermRBV(to, bits) === vtermRBV(from, bits)
                        case MathRealMode() =>
                            ntermR(to) === vtermR(from)
                    }
                case _ =>
                    integerMode match {
                        case BitIntegerMode() =>
                            (toType, fromType) match {
                                case (BoolT(), IntT(size)) =>
                                    val bits = size.toInt
                                    ntermB(to) === !(vtermIBV(from, size.toInt) === 0.withUBits(bits))
                                case (IntT(size), BoolT()) =>
                                    val bits = size.toInt
                                    ntermIBV(to, bits) === vtermB(from).ite(1.withUBits(bits), 0.withUBits(bits))
                                case (IntT(toSize), IntT(fromSize)) if toSize == fromSize =>
                                    val bits = toSize.toInt
                                    ntermIBV(to, bits) === vtermIBV(from, bits)
                                case (PointerT(IntT(toSize), _), PointerT(IntT(fromSize), _)) if toSize == fromSize =>
                                    val bits = toSize.toInt
                                    ntermIBV(to, bits) === vtermIBV(from, bits)
                                case _ =>
                                    sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
                            }
                        case MathIntegerMode() =>
                            (toType, fromType) match {
                                case (BoolT(), IntT(_)) =>
                                    ntermB(to) === !(vtermI(from) === 0)
                                case (IntT(_), BoolT()) =>
                                    ntermI(to) === vtermB(from).ite(1, 0)
                                case (BoolT(), RealT(_)) =>
                                    ntermB(to) === !(vtermR(from) === 0)
                                case (RealT(_), BoolT()) =>
                                    ntermR(to) === vtermB(from).ite(1, 0)
                                case (IntT(_), IntT(_)) =>
                                    ntermI(to) === vtermI(from)
                                case (PointerT(IntT(_), _), PointerT(IntT(_), _)) =>
                                    ntermI(to) === vtermI(from)
                                case (RealT(_), IntT(_)) =>
                                    ntermR(to) === vtermR(from)
                                case (IntT(_), RealT(_)) =>
                                    ntermR(to) === vtermR(from)
                                case _ =>
                                    sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
                            }
                    }
            }

    /**
     * Combine terms via conjunction, dealing with case where there are no
     * terms so effect is "true". Any true terms in the sequence are removed.
     */
    def combineTerms(terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] =
        if (terms.isEmpty)
            True()
        else
            terms.reduceLeft((l, r) => if (r == True()) l else l & r)

}
