package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import org.bitbucket.franck44.scalasmt.theories.{
    ArrayExBV,
    ArrayExInt,
    ArrayExOperators,
    ArrayExReal,
    BitVectors,
    Core,
    IntegerArithmetics,
    RealArithmetics
}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm
import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax.Program

class LLVMTermBuilder(program : Program, funAnalyser : Analyser,
    namer : LLVMNamer, config : SkinkConfig)
        extends Attribution with ArrayExBV with ArrayExInt with ArrayExOperators
        with ArrayExReal with BitVectors with Core with IntegerArithmetics
        with QuantifiedTerm with RealArithmetics {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.{BitIntegerMode, MathIntegerMode}
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BitVectorSort, EqualTerm, IntSort, BoolSort, RealSort, SSymbol, Term}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BoolTerm, BVTerm, IntTerm, RealTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import namer.{ArrayElement, ArrayElementC, indexOf, termid}
    import org.scalallvm.assembly.Analyser.{defaultBlockName, unescape}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import org.scalallvm.assembly.AssemblySyntax.{False => FFalse, True => FTrue, _}

    val logger = getLogger(this.getClass)

    // Cached integer mode and architecture
    val integerMode = config.integerMode()
    val architecture = config.architecture()

    /**
     * Return a term that expresses the effects of the global variable
     * initialisers of a program.
     */
    def initTerm(program : Program) : TypedTerm[BoolTerm, Term] = {
        val term = combineTerms(program.items.map(itemTerm))
        logger.info(s"initTerm: ${showTerm(term.termDef)}")
        term
    }

    /**
     * Return a term to express the effect of a top-level item, not including
     * function definitions. Currently only handles initialisation of global
     * variables.
     */
    def itemTerm(item : Item) : TypedTerm[BoolTerm, Term] = {
        val term = item match {
            case InitGlobalVar(name, tipe, constantValue) =>
                val num =
                    tipe match {
                        case ArrayT(num, _) => num.toInt
                        case _              => 1
                    }
                allocate(name, tipe, Const(IntC(num))) &
                    store(name, tipe, Const(constantValue))
            case _ =>
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
                            combineTerms(cases.map { case Case(_, v, _) => !(vtermBV(value, bits) === vtermBV(v, bits)) })
                        case MathIntegerMode() =>
                            combineTerms(cases.map { case Case(_, v, _) => !(vtermI(value) === vtermI(v)) })
                    }

                case Switch(IntegerT(size), value, _, cases) if choice < cases.length =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size.toInt
                            vtermBV(value, bits) === vtermBV(cases(choice).value, bits)
                        case MathIntegerMode() =>
                            vtermI(value) === vtermI(cases(choice).value)
                    }

                case _ : Ret | RetVoid() | Unreachable() if choice == 0 =>
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

    // FIXME: move these to ScalaLLVM?

    /*
     * Return a type definition by name if there is one.
     */
    def lookupType(name : Name) : Option[Type] =
        program.items.collectFirst {
            case TypeDefinition(n, tipe) if name == n =>
                tipe
        }

    /*
     * Return the number of bits in the representation of a type.
     */
    def numBits(tipe : Type) : Int =
        tipe match {
            case ArrayT(num, tipe)   => num.toInt * numBits(tipe)
            case FloatT()            => 32
            case DoubleT()           => 64
            case IntT(n)             => n.toInt
            case StructT(fieldTypes) => fieldTypes.map(numBits(_)).sum
            case NameT(name) =>
                lookupType(name) match {
                    case Some(tipe) => numBits(tipe)
                    case None       => sys.error(s"numBits: can't find type $name")
                }
            case _ =>
                sys.error(s"numBits: unsupported type ${show(tipe)}")
        }

    /*
     * Return the number of bytes in the representation of a type.
     */
    def numBytes(tipe : Type) : Int = {
        val bits = numBits(tipe)
        if (bits % 8 != 0)
            sys.error(s"numBytes: non-byte size number of bits $bits")
        bits / 8
    }

    // FIXME: end of Scala LLVM stuff

    /*
     * Return a term that expresses allocation of memory of `num` elements each
     * of type `tipe`. In bit mode `to` will be defined to be the starting address
     * of a new memory chunk unrelated to any previously allocated. In math mode
     * this operation has no effect.
     */
    def allocate(to : Name, tipe : Type, num : Value) : TypedTerm[BoolTerm, Term] =
        integerMode match {
            case BitIntegerMode() =>
                offsetTerm(to) === 0.withUBits(32)
            case MathIntegerMode() =>
                True()
        }

    /*
     * Make a term representing the offset of a variable that holds
     * a memory address.
     */
    def offsetTerm(name : Name) : TypedTerm[BVTerm, Term] =
        ntermBV(suffixName(name, "$o"), architecture)

    /*
     * Get the base and offset terms for an address.
     */
    def baseAndOffset(addr : Value) : (TypedTerm[ArrayTerm[BVTerm], Term], TypedTerm[BVTerm, Term]) =
        addr match {
            case Named(name) =>
                (arrayTermAtBV(name, 8, name), offsetTerm(name))
            case Const(GetElementPtrC(_, bt1, tipe @ PointerT(bt2, _), NameC(name), indices)) if bt1 == bt2 =>
                (arrayTermAtBV(name, 8, name), offset(tipe, name, indices))
            case _ =>
                sys.error(s"baseAndOffset: unsupported address $addr")
        }

    /*
     * Return a term that expresses a load of a value given type from
     * address `from` into variable `to`. In bit mode we select the bytes
     * at the offset of `from` in its memory chunk and concatenate them
     * into a `tipe` value. In math mode we fall back on equating `from`
     * and `to`.
     */
    def load(to : Name, tipe : Type, from : Value) : TypedTerm[BoolTerm, Term] =
        integerMode match {
            case BitIntegerMode() =>
                val bytes = numBytes(tipe)
                val (base, offset) = baseAndOffset(from)
                val exp =
                    (0 until bytes - 1).foldLeft[TypedTerm[BVTerm, Term]](
                        base.select(offset + (bytes - 1).withUBits(architecture))
                    ) {
                            case (a, i) =>
                                val off = if (i == bytes - 2) offset else offset + (bytes - i - 2).withUBits(architecture)
                                base.select(off).concat(a)
                        }
                ntermBV(to, bytes * 8) === exp
            case MathIntegerMode() =>
                equality(to, tipe, from, tipe)
        }

    /*
     * Get zero-indexed byte `i` from an integer constant `n` of
     * size `bytes`.
     */
    def getIntByte(n : BigInt, bytes : Int, i : Int) : Byte =
        ((n >> (bytes - i - 1) * 8) & 0xff).toByte

    /*
     * Return the bytes of a constant array element.
     */
    def constElemBytes(element : Element) : Vector[Byte] =
        element match {
            case Element(tipe : IntT, IntC(n)) =>
                val bytes = numBytes(tipe)
                Vector.tabulate(bytes)(getIntByte(n, bytes, _))
            case _ =>
                sys.error(s"constElemBytes: unsupported element $element")
        }

    /*
     * The bytes of an array constant.
     */
    val constArrayBytes : ArrayC => Vector[Byte] =
        attr {
            case ArrayC(elements) =>
                elements.flatMap(constElemBytes)
        }

    /*
     * The bytes of a string constant.
     */
    val stringBytes : StringC => Vector[Byte] =
        attr {
            case string =>
                unescape(string).map(_.toByte)
        }

    /*
     * Make a term to get zero-indexed byte `i` from a value of size `bytes`
     * optimising for the case where the `from` value is a constant.
     */
    def getByte(from : Value, bytes : Int, i : Int) : TypedTerm[BVTerm, Term] =
        from match {
            case Const(a : ArrayC) =>
                constArrayBytes(a)(i).withBits(8)
            case Const(IntC(n)) =>
                getIntByte(n.toInt, bytes, i).withBits(8)
            case Const(a : StringC) =>
                stringBytes(a)(i).withBits(8)
            case _ =>
                val shift = (bytes - i - 1) * 8
                val n = vtermBV(from, bytes * 8)
                val b = if (shift == 0) n else n >> shift.withBits(32)
                b.extract(7, 0)
        }

    /*
     * Return a term that expresses storing `from` a value of a given type in
     * to the location specified by the address`to`. In bit mode we get the
     * chunk to which `to` refers and store the bytes of `from` into that
     * chunk at the offset of `to`. In math mode we fall back on equating
     * `from` and `to`.
     */
    def store(to : Name, tipe : Type, from : Value) : TypedTerm[BoolTerm, Term] =
        integerMode match {
            case BitIntegerMode() =>
                val bytes = numBytes(tipe)
                val base = offsetTerm(to)
                val exp =
                    (0 until bytes).foldLeft(prevArrayTermAtBV(to, 8, to)) {
                        case (a, i) =>
                            a.store(
                                if (i == 0) base else base + i.withUBits(32),
                                getByte(from, bytes, i)
                            )
                    }
                arrayTermAtBV(to, 8, to) === exp
            case MathIntegerMode() =>
                equality(to, tipe, from, tipe)
        }

    /*
     * Return a term for an array element offset for a given element type
     * and index value. Optimises if the index is a constant.
     */
    def arrayElemOffset(tipe : Type, value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(IntC(n)) =>
                (n.toInt * numBytes(tipe)).withUBits(architecture)
            case _ =>
                vtermBV(value, architecture) * numBytes(tipe).withUBits(architecture)
        }

    /*
     * Return a term for a structure field offset given the sequence of field
     * types in the structure type and the zero-based index of the field we
     * are interested in.
     */
    def structFieldOffset(fieldTypes : Seq[Type], index : Int) : TypedTerm[BVTerm, Term] =
        fieldTypes.take(index).map(numBytes(_)).sum.withUBits(architecture)

    /*
     * Given a type and a value that is an offset into that type, return
     * the type of the element referred to by the offset and a term that
     * expresses the offset from the base of the containing type. For an
     * array type the value is a zero-based index and indexes an array
     * element. For a structure type it's a zero-based field name and
     * indexes a field.
     */
    def elemTypeOffset(tipe : Type, value : Value) : (Type, TypedTerm[BVTerm, Term]) =
        tipe match {
            case ArrayT(_, elemType) =>
                (elemType, arrayElemOffset(elemType, value))
            case PointerT(elemType, _) =>
                (elemType, arrayElemOffset(elemType, value))
            case NameT(name) =>
                lookupType(name) match {
                    case Some(tipe) =>
                        elemTypeOffset(tipe, value)
                    case None =>
                        sys.error(s"elemTypeOffset: can't find type $name")
                }
            case StructT(fieldTypes) =>
                value match {
                    case Const(IntC(v)) =>
                        if (v >= 0 && v < fieldTypes.size)
                            (fieldTypes(v.toInt), structFieldOffset(fieldTypes, v.toInt))
                        else
                            sys.error(s"elemTypeOffset: type ${show(tipe)} doesn't have a field $v")
                    case _ =>
                        sys.error(s"elemTypeOffset: non-constant field $value requested of type ${show(tipe)}")
                }
            case _ =>
                sys.error(s"elemTypeOffset: unsupported type ${show(tipe)}")
        }

    /*
     * Return a term that calculates a memory offset given a starting type
     * and address value, plus indices that express a sequence of indexing
     * operations a'la LLVM's `getelementptr` instruction.
     */
    def offset(tipe : Type, name : Name, indices : Seq[ElemIndex]) : TypedTerm[BVTerm, Term] =
        indices.foldLeft((offsetTerm(name), tipe)) {
            case ((a, t), ElemIndex(_, v)) =>
                val (etype, eoff) = elemTypeOffset(t, v)
                v match {
                    case Const(IntC(n)) if n == 0 =>
                        (a, etype)
                    case _ =>
                        (a + eoff, etype)
                }
        }._1

    /*
     * Return a term that expresses that `to` will hold the memory address
     * calculated by a `getelementptr` operation (maybe from an instruction
     * but also can occur as a constant expression). In math mode this
     * operation specifies no effect.
     */
    def getelementptr(to : Name, tipe : Type, from : Value, indices : Seq[ElemIndex]) : TypedTerm[BoolTerm, Term] =
        integerMode match {
            case BitIntegerMode() =>
                val (base, offset) = baseAndOffset(from)
                arrayTermAtBV(to, 8, to) === base & offsetTerm(to) === offset
            case MathIntegerMode() =>
                True()
        }

    /*
     * Return a term that expresses the effect of a regular LLVM instruction.
     */
    def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        val term =
            insn match {

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
                            val lterm = vtermBV(left, bits)
                            val rterm = vtermBV(right, bits)
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
                            ntermBV(to, bits) === exp
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

                case Binary(Binding(to), op, RealT(_), left, right) =>
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

                // Call to `assume`
                case Call(_, _, _, _, _, VerifierFunction(AssumeName()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                    tipe match {
                        case BoolT() => vtermB(arg)
                        case IntT(size) =>
                            integerMode match {
                                case BitIntegerMode() =>
                                    val bits = size.toInt
                                    !(vtermBV(arg, bits) === 0.withUBits(bits))
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
                            ntermBV(to, bits) uge 0.withBits(bits)
                        case MathIntegerMode() =>
                            ntermI(to) >= 0
                    }

                // Other calls to `nondet_X`
                case NondetFunctionCall(_, _) =>
                    True()

                // Absolute value calls convert to the op
                case AbsoluteValueFunctionCall(Binding(to), arg) =>
                    ntermR(to) === absR(vtermR(arg))

                // Memory allocations can't fail
                case MemoryAllocFunctionCall(Binding(to), _) =>
                    !(ntermI(to) === 0)

                case Call(_, _, _, _, _, IgnoredFunction(_), _, _) =>
                    True()

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
                            val lterm = vtermBV(left, bits)
                            val rterm = vtermBV(right, bits)
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

                case Compare(Binding(to), FCmp(fcond), ComparisonType(_), left, right) =>
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
                                opError[BoolTerm]("real comparison", left, fcond, right)
                        }
                    ntermB(to) === exp

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
                                        ntermBV(to, toBits)
                                val fromTerm =
                                    if (fromBits == 1)
                                        vtermB(from).ite(1.withUBits(fromBits), 0.withUBits(fromBits))
                                    else
                                        vtermBV(from, fromBits)
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

                case Convert(Binding(to), _, fromType, from, toType) =>
                    equality(to, toType, from, fromType)

                // Select (inline choice)

                case Select(Binding(to), SelectI1T(), from, BoolT(), value1, BoolT(), value2) =>
                    ntermB(to) === vtermB(from).ite(vtermB(value1), vtermB(value2))

                case Select(Binding(to), SelectI1T(), from, IntegerT(size1), value1, IntegerT(size2), value2) if size1 == size2 =>
                    integerMode match {
                        case BitIntegerMode() =>
                            val bits = size1.toInt
                            ntermBV(to, bits) === vtermB(from).ite(vtermBV(value1, bits), vtermBV(value2, bits))
                        case MathIntegerMode() =>
                            ntermI(to) === vtermB(from).ite(vtermI(value1), vtermI(value2))
                    }

                // Memory operations

                case Alloca(Binding(to), _, tipe, optNum, _) =>
                    val num =
                        optNum match {
                            case NumElements(_, value) => value
                            case OneElement()          => Const(IntC(1))
                        }
                    allocate(to, tipe, num)

                case MemoryAllocFunctionCall(Binding(to), name, num) =>
                    allocate(to, IntT(8), num)

                case Load(Binding(to), _, tipe, _, from, _) =>
                    load(to, tipe, from)

                case Store(_, tipe, from, _, Named(to), _) =>
                    store(to, tipe, from)

                case GetElementPtr(Binding(to), _, bt1, tipe @ PointerT(bt2, _), from, indices) if bt1 == bt2 =>
                    getelementptr(to, tipe, from, indices)

                // Default

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
    def arrayTermBV(id : String, bits : Int, index : Int) : TypedTerm[ArrayTerm[BVTerm], Term] =
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
    def arrayTermAtBV(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermBV(show(name), bits, indexOf(node, name))

    /**
     * Return an integer array term that expresses a name when referenced from node.
     */
    def arrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), indexOf(node, name))

    /**
     * Return a real array term that expresses a name when referenced from node.
     */
    def arrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), indexOf(node, name))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtBV(node : Product, bits : Int, name : Name) : TypedTerm[ArrayTerm[BVTerm], Term] =
        arrayTermBV(show(name), bits, scala.math.max(indexOf(node, name) - 1, 0))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtI(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTermI(show(name), scala.math.max(indexOf(node, name) - 1, 0))

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtR(node : Product, name : Name) : TypedTerm[ArrayTerm[RealTerm], Term] =
        arrayTermR(show(name), scala.math.max(indexOf(node, name) - 1, 0))

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
    def varTermBV(id : String, bits : Int, index : Int) : TypedTerm[BVTerm, Term] =
        new VarTerm(termid(id), BitVectorSort(bits.toString), Some(index))

    /**
     * Make an integer term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermI(id : String, index : Int) : TypedTerm[IntTerm, Term] =
        new VarTerm(termid(id), IntSort(), Some(index))

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
        varTermB(show(name), indexOf(node, name))

    /**
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtBV(node : ASTNode, bits : Int, name : Name) : TypedTerm[BVTerm, Term] =
        varTermBV(show(name), bits, indexOf(node, name))

    /**
     * Return an integer term that expresses a name when referenced from node.
     */
    def ntermAtI(node : ASTNode, name : Name) : TypedTerm[IntTerm, Term] =
        varTermI(show(name), indexOf(node, name))

    /**
     * Return a real term that expresses a name when referenced from node.
     */
    def ntermAtR(node : ASTNode, name : Name) : TypedTerm[RealTerm, Term] =
        varTermR(show(name), indexOf(node, name))

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
    def ntermBV(name : Name, bits : Int) : TypedTerm[BVTerm, Term] =
        ntermAtBV(name, bits, name)

    /**
     * Return an integer term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermI(name : Name) : TypedTerm[IntTerm, Term] =
        ntermAtI(name, name)

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
    def vtermAtBV(node : ASTNode, bits : Int, value : Value) : TypedTerm[BVTerm, Term] =
        value match {
            case Named(name) =>
                ntermAtBV(node, bits, name)
            case _ =>
                vtermBV(value, bits)
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
    def vtermBV(value : Value, bits : Int) : TypedTerm[BVTerm, Term] =
        value match {
            case Const(c) =>
                ctermBV(c, bits)
            case Named(name) =>
                ntermBV(name, bits)
            case value =>
                sys.error(s"vtermBV: unexpected value $value")
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
    def ctermBV(constantValue : ConstantValue, bits : Int) : TypedTerm[BVTerm, Term] =
        constantValue match {
            case GetElementPtrC(_, bt1, tipe @ PointerT(bt2, _), NameC(from), indices) if bt1 == bt2 =>
                offset(tipe, from, indices)
            case IntC(i) =>
                i.toInt.withBits(bits)
            case NullC() | ZeroC() =>
                0.withBits(bits)
            case value =>
                sys.error(s"ctermBV: unexpected constant value $constantValue")
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
     * Return a real term that exprinsesses an LLVM floating-point constant value.
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
     * integer and Boolean equalities, but also pointers as integers.
     */
    def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, EqualTerm] =
        if (from == Const(UndefC()))
            True() === True()
        else
            (toType, fromType) match {
                case (BoolT(), BoolT()) =>
                    ntermB(to) === vtermB(from)
                case (RealT(_), RealT(_)) =>
                    ntermR(to) === vtermR(from)
                case _ =>
                    integerMode match {
                        case BitIntegerMode() =>
                            (toType, fromType) match {
                                case (BoolT(), IntT(size)) =>
                                    val bits = size.toInt
                                    ntermB(to) === !(vtermBV(from, size.toInt) === 0.withUBits(bits))
                                case (IntT(size), BoolT()) =>
                                    val bits = size.toInt
                                    ntermBV(to, bits) === vtermB(from).ite(1.withUBits(bits), 0.withUBits(bits))
                                case (IntT(toSize), IntT(fromSize)) if toSize == fromSize =>
                                    val bits = toSize.toInt
                                    ntermBV(to, bits) === vtermBV(from, bits)
                                case (PointerT(IntT(toSize), _), PointerT(IntT(fromSize), _)) if toSize == fromSize =>
                                    val bits = toSize.toInt
                                    ntermBV(to, bits) === vtermBV(from, bits)
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
     * Matcher for types that we support comparisons between. Returns the bit size
     * of the compared type.
     */
    object ComparisonType {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case IntT(size)   => Some(size.toInt)
                case _ : PointerT => Some(architecture)
                case RealT(bits)  => Some(bits)
                case _            => None
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

    /*
     * Derive a new name from an existing one by adding a suffix.
     */
    def suffixName(to : Name, suffix : String) : Name = {
        to match {
            case Local(s)  => Local(s + suffix)
            case Global(s) => Global(s + suffix)
        }
    }

}
