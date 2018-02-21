package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.franck44.scalasmt.theories.{ArrayExBV, ArrayExOperators, BitVectors, FPBitVectors}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm

/**
 * Tests of bit vector term construction.
 */
class LLVMBitTermTests extends LLVMTermTests with ArrayExBV with ArrayExOperators with BitVectors with FPBitVectors with QuantifiedTerm {

    import au.edu.mq.comp.skink.ir.Trace
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BitVectorSort, FPBitVectorSort, FPFloat16, FPFloat32, FPFloat64, FPFloat128, RNE, RoundingModeSort, Sort, SSymbol, Term}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BVTerm, FPBVTerm, RMFPBVTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import org.scalallvm.assembly.AssemblySyntax.{False => FFalse, True => FTrue, _}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import scala.language.implicitConversions

    def config = createAndInitConfig(Seq("-i", "bit", "-r", "bit"))
    val termBuilder = new LLVMTermBuilder(funAnalyser, namer, config)

    def makeVarTermBV(id : String, sort : Sort, index : Int = 0) : VarTerm[BVTerm] =
        new VarTerm(id, sort, Some(index))

    def makeVarTermRBV(id : String, sort : Sort, index : Int = 0) : VarTerm[FPBVTerm] =
        new VarTerm(id, sort, Some(index))

    def makeArrayTermBV(id : String, ibits : Int, vbits : Int, index : Int = 0) : TypedTerm[ArrayTerm[BVTerm], Term] =
        ArrayBV1(id, ibits, vbits).indexed(index)

    def makeArrayLoadTermBV(id : String, ibits : Int, vbits : Int, elem : Int,
        index : Int = 0) : TypedTerm[BVTerm, Term] =
        makeArrayTermBV(id, ibits, vbits, index).at(elem)

    def makeArrayStoreTermBV(id : String, ibits : Int, vbits : Int,
        from : TypedTerm[BVTerm, Term], elem : Int, index : Int = 0) : TypedTerm[ArrayTerm[BVTerm], Term] =
        makeArrayTermBV(id, ibits, vbits, index).store(elem, from)

    implicit def BVs32(i : Int) : TypedTerm[BVTerm, Term] =
        BVs(i, 32)

    val intSizes = Vector(8, 16, 32, 64)

    def makeIntVars(id : String, index : Int = 0) : Map[Int, VarTerm[BVTerm]] =
        Map(intSizes.map(bits => (
            bits,
            makeVarTermBV(id, BitVectorSort(bits.toString), index)
        )) : _*)

    val ixs = makeIntVars("%x")
    val iys = makeIntVars("%y")
    val izs = makeIntVars("%z")
    val iy1s = makeIntVars("%y", 1)

    val floatSizes = Vector(
        (HalfT(), FPFloat16(), 5, 11),
        (FloatT(), FPFloat32(), 8, 24),
        (DoubleT(), FPFloat64(), 11, 53),
        (X86_FP80(), FPBitVectorSort("15", "65"), 15, 65),
        (FP128T(), FPFloat128(), 15, 113),
        (PPC_FP128T(), FPFloat128(), 15, 113)
    )

    def makeFloatVars(id : String) : Map[Type, VarTerm[FPBVTerm]] =
        Map(floatSizes.map {
            case (tipe, sort, _, _) =>
                (tipe, makeVarTermRBV(id, sort))
        } : _*)

    val fxs = makeFloatVars("%x")
    val fys = makeFloatVars("%y")
    val fzs = makeFloatVars("%z")

    implicit val rm : TypedTerm[RMFPBVTerm, Term] =
        new VarTerm("@_fprmode", RoundingModeSort(), Some(0))

    val fprminit = rm === RMs(RNE())

    // Binary operations

    for (bits <- intSizes) {
        val ix = ixs(bits)
        val iy = iys(bits)
        val iz = izs(bits)
        val integerBinaryOps = Vector(
            (Add(Vector()), iz === (ix + iy)),
            (And(), iz === (ix and iy)),
            (AShR(Exact()), iz === (ix ashr iy)),
            (AShR(NotExact()), iz === (ix ashr iy)),
            (LShR(Exact()), iz === (ix >> iy)),
            (LShR(NotExact()), iz === (ix >> iy)),
            (Mul(Vector()), iz === (ix * iy)),
            (Or(), iz === (ix or iy)),
            (SDiv(Exact()), iz === (ix sdiv iy)),
            (SDiv(NotExact()), iz === (ix sdiv iy)),
            (ShL(Vector()), iz === (ix << iy)),
            (SRem(), iz === (ix srem iy)),
            (Sub(Vector()), iz === (ix - iy)),
            (UDiv(Exact()), iz === (ix / iy)),
            (UDiv(NotExact()), iz === (ix / iy)),
            (URem(), iz === (ix % iy)),
            (XOr(), iz === (ix xor iy))
        )
        for ((op, term) <- integerBinaryOps) {
            test(s"binary $bits bit integer ${show(op)} insn is encoded correctly") {
                hasEffect(Binary(Binding(z), op, IntT(bits), xexp, yexp), term)
            }
        }
    }

    for ((tipe, _, exp, sig) <- floatSizes) {
        val fx = fxs(tipe).toFPBV(11, 53)
        val fy = fys(tipe).toFPBV(11, 53)
        val fz = fzs(tipe)
        val floatBinaryOps = Vector(
            (FAdd(Vector()), fz === (fx + fy).toFPBV(exp, sig)),
            (FDiv(Vector()), fz === (fx / fy).toFPBV(exp, sig)),
            (FMul(Vector()), fz === (fx * fy).toFPBV(exp, sig)),
            (FSub(Vector()), fz === (fx - fy).toFPBV(exp, sig))
        )
        for ((op, term) <- floatBinaryOps) {
            test(s"binary ${show(tipe)} real ${show(op)} insn is encoded correctly") {
                hasEffect(Binary(Binding(z), op, tipe, xexp, yexp), term)
            }
        }
    }

    // Make sure bad uses of binary operations are not accepted

    val badBinaryOps = Vector(
        (Add(Vector()), IntT(1), "Boolean op add %x %y not handled"),
        (FAdd(Vector()), IntT(32), "bitvector integer op fadd %x %y not handled"),
        (FDiv(Vector()), IntT(32), "bitvector integer op fdiv %x %y not handled"),
        (FMul(Vector()), IntT(32), "bitvector integer op fmul %x %y not handled"),
        (FRem(Vector()), IntT(32), "bitvector integer op frem %x %y not handled"),
        (FSub(Vector()), IntT(32), "bitvector integer op fsub %x %y not handled")
    )

    for ((op, tipe, msg) <- badBinaryOps) {
        test(s"binary ${show(op)} insn on ${show(tipe)} should not be handled") {
            isNotHandled(Binary(Binding(z), op, tipe, xexp, yexp), msg)
        }
    }

    // Call instructions

    test("assume with Boolean argument is encoded correctly") {
        hasEffect(
            makeCall(NoBinding(), "__VERIFIER_assume", Vector(ValueArg(IntT(1), Vector(), Named(x)))),
            bx
        )
    }

    for (bits <- intSizes) {
        val ix = ixs(bits)
        test(s"assume with $bits bit integer argument is encoded correctly") {
            hasEffect(
                makeCall(NoBinding(), "__VERIFIER_assume", Vector(ValueArg(IntT(bits), Vector(), Named(x)))),
                !(ix === 0.withUBits(bits))
            )
        }
    }

    // Comparisons

    val booleanCompares = Vector(
        (EQ(), bz === (bx === by)),
        (NE(), bz === !(bx === by))
    )

    for ((cond, term) <- booleanCompares) {
        test(s"compare Boolean with ${show(cond)} is encoded correctly") {
            hasEffect(Compare(Binding(z), ICmp(cond), IntT(1), xexp, yexp), term)
        }
    }

    for (bits <- intSizes) {
        val ix = ixs(bits)
        val iy = iys(bits)
        val integerCompares = Vector(
            (EQ(), bz === (ix === iy)),
            (NE(), bz === !(ix === iy)),
            (UGT(), bz === (ix ugt iy)),
            (UGE(), bz === (ix uge iy)),
            (ULT(), bz === (ix ult iy)),
            (ULE(), bz === (ix ule iy)),
            (SGT(), bz === (ix sgt iy)),
            (SGE(), bz === (ix sge iy)),
            (SLT(), bz === (ix slt iy)),
            (SLE(), bz === (ix sle iy))
        )
        for ((cond, term) <- integerCompares) {
            test(s"compare $bits bit integer with ${show(cond)} is encoded correctly") {
                hasEffect(Compare(Binding(z), ICmp(cond), IntT(bits), xexp, yexp), term)
            }
        }
    }

    for ((tipe, _, exp, sig) <- floatSizes) {
        val fx = fxs(tipe).toFPBV(11, 53)
        val fy = fys(tipe).toFPBV(11, 53)
        val unordered = fx.isNaN | fy.isNaN
        val ordered = !unordered
        val floatCompares = Vector(
            (FFalse(), bz === False()),
            (FTrue(), bz === True()),
            (FORD(), bz === ordered),
            (FONE(), bz === (ordered & !(fx.fpeq(fy)))),
            (FOEQ(), bz === (ordered & (fx.fpeq(fy)))),
            (FOGT(), bz === (ordered & (fx > fy))),
            (FOGE(), bz === (ordered & (fx >= fy))),
            (FOLT(), bz === (ordered & (fx < fy))),
            (FOLE(), bz === (ordered & (fx <= fy))),
            (FUNE(), bz === (unordered | !(fx.fpeq(fy)))),
            (FUEQ(), bz === (unordered | (fx.fpeq(fy)))),
            (FUGT(), bz === (unordered | (fx > fy))),
            (FUGE(), bz === (unordered | (fx >= fy))),
            (FULT(), bz === (unordered | (fx < fy))),
            (FULE(), bz === (unordered | (fx <= fy)))
        )
        for ((cond, term) <- floatCompares) {
            test(s"compare ${show(tipe)} real with ${show(cond)} is encoded correctly") {
                hasEffect(Compare(Binding(z), FCmp(cond), tipe, xexp, yexp), term)
            }
        }
    }

    // Make sure bad uses of compare conditions are not accepted

    val badCompares = Vector(
        (UGT(), IntT(1), "Boolean comparison op ugt %x %y not handled")
    )

    for ((cond, tipe, msg) <- badCompares) {
        test(s"binary compare ${show(cond)} insn on ${show(tipe)} should not be handled") {
            isNotHandled(Compare(Binding(z), ICmp(cond), tipe, xexp, yexp), msg)
        }
    }

    // Conversions

    val convOps = Vector(
        AddrSpaceCast(), Bitcast(), FPExt(), FPToSI(), FPToUI(), FPTrunc(), IntToPTR(),
        PTRToInt(), SIToFP(), UIToFP()
    )

    for (convOp <- convOps) {
        test(s"${show(convOp)} Int(1) to Int(1) insn is encoded correctly") {
            hasEffect(Convert(Binding(x), convOp, IntT(1), yexp, IntT(1)), bx === by)
        }
    }

    for (bits <- intSizes) {
        val ix = ixs(bits)
        val iy = iys(bits)
        val conversions = Vector(
            (IntT(bits), IntT(1), bx === !(iy === 0.withUBits(bits))),
            (IntT(1), IntT(bits), ix === by.ite(1.withUBits(bits), 0.withUBits(bits))),
            (IntT(bits), IntT(bits), ix === iy)
        )
        for (convOp <- convOps) {
            for ((fromType, toType, term) <- conversions) {
                test(s"${show(convOp)} conversion from ${show(fromType)} to ${show(toType)} is encoded correctly") {
                    hasEffect(Convert(Binding(x), convOp, fromType, yexp, toType), term)
                }
            }
        }
    }

    test(s"sext Int(1) to Int(1) insn is encoded correctly") {
        hasEffect(Convert(Binding(x), SExt(), IntT(1), yexp, IntT(1)), bx === by)
    }

    test(s"trunc Int(1) to Int(1) insn is encoded correctly") {
        hasEffect(Convert(Binding(x), ZExt(), IntT(1), yexp, IntT(1)), bx === by)
    }

    test(s"zext Int(1) to Int(1) insn is encoded correctly") {
        hasEffect(Convert(Binding(x), ZExt(), IntT(1), yexp, IntT(1)), bx === by)
    }

    for (bits <- intSizes) {
        val ix = ixs(bits)
        val iy = iys(bits)
        test(s"sext Int(1) to Int($bits) insn is encoded correctly") {
            hasEffect(
                Convert(Binding(x), SExt(), IntT(1), yexp, IntT(bits)),
                ix === ((by.ite(1.withUBits(1), 0.withUBits(1))) sext (bits - 1))
            )
        }
        test(s"trunc Int(1) to Int($bits) insn should not be handled") {
            isNotHandled(
                Convert(Binding(x), Trunc(), IntT(1), yexp, IntT(bits)),
                s"insnTerm: growing trunc insn %x = trunc i1 %y to i$bits"
            )
        }
        test(s"zext Int(1) to Int($bits) insn is encoded correctly") {
            hasEffect(
                Convert(Binding(x), ZExt(), IntT(1), yexp, IntT(bits)),
                ix === ((by.ite(1.withUBits(1), 0.withUBits(1))) zext (bits - 1))
            )
        }
        test(s"sext Int($bits) to Int(1) insn should not be handled") {
            isNotHandled(
                Convert(Binding(x), SExt(), IntT(bits), yexp, IntT(1)),
                s"insnTerm: shrinking sext insn %x = sext i$bits %y to i1"
            )
        }
        test(s"trunc Int($bits) to Int(1) insn is encoded correctly") {
            hasEffect(
                Convert(Binding(x), Trunc(), IntT(bits), yexp, IntT(1)),
                (bx.ite(1.withUBits(1), 0.withUBits(1))) === iy.extract(0, 0)
            )
        }
        test(s"zext Int($bits) to Int(1) insn should not be handled") {
            isNotHandled(
                Convert(Binding(x), ZExt(), IntT(bits), yexp, IntT(1)),
                s"insnTerm: shrinking zext insn %x = zext i$bits %y to i1"
            )
        }
        test(s"sext Int($bits) to Int($bits) insn is encoded correctly") {
            hasEffect(Convert(Binding(x), SExt(), IntT(bits), yexp, IntT(bits)), ix === iy)
        }
        test(s"trunc Int($bits) to Int($bits) insn is encoded correctly") {
            hasEffect(Convert(Binding(x), Trunc(), IntT(bits), yexp, IntT(bits)), ix === iy)
        }
        test(s"zext Int($bits) to Int($bits) insn is encoded correctly") {
            hasEffect(Convert(Binding(x), ZExt(), IntT(bits), yexp, IntT(bits)), ix === iy)
        }
    }

    // Loads

    for (bits <- intSizes) {
        val ix = ixs(bits)
        val iy = iys(bits)
        val loads = Vector(
            (IntT(bits), ix === iy)
        )
        for ((tipe, term) <- loads) {
            test(s"load of ${show(tipe)} is encoded correctly") {
                hasEffect(
                    Load(Binding(x), NotVolatile(), tipe,
                        PointerT(tipe, DefaultAddrSpace()), yexp, DefaultAlign()),
                    term
                )
            }
        }
    }

    for (bits <- intSizes) {
        val iy1 = iy1s(bits)
        test(s"$bits bit integer array element load is encoded correctly") {
            traceEffect(
                s"""
                |define void @func() {
                |   0:
                |     %x = alloca i$bits, i$bits 5
                |     %1 = getelementptr inbounds [5 x i$bits], [5 x i$bits]* %x, i$bits 0, i$bits 1
                |     %y = load i$bits, i$bits* %1
                |     ret void
                |}
                """.stripMargin,
                Trace(Seq(0))
            ) shouldBe
                Seq(
                    True() & fprminit & iy1 === makeArrayLoadTermBV("%x", 32, bits, 1, 1)
                )
        }
    }

    // Stores

    for (bits <- intSizes) {
        val ix = ixs(bits)
        val iy = iys(bits)
        val stores = Vector(
            (IntT(bits), ix === iy)
        )
        for ((tipe, term) <- stores) {
            test(s"store of ${show(tipe)} is encoded correctly") {
                hasEffect(
                    Store(NotVolatile(), tipe, yexp, PointerT(tipe, DefaultAddrSpace()), xexp, DefaultAlign()),
                    term
                )
            }
        }
    }

    for (bits <- intSizes) {
        val iy = iys(bits)
        test(s"$bits bit integer array element store is encoded correctly") {
            traceEffect(
                s"""
                |define void @func() {
                |   0:
                |     %x = alloca i$bits, i$bits 8
                |     %1 = getelementptr inbounds [8 x i$bits], [8 x i$bits]* %x, i$bits 0, i$bits 1
                |     store i$bits %y, i$bits* %1
                |     ret void
                |}
                """.stripMargin,
                Trace(Seq(0))
            ) shouldBe
                Seq(
                    True() & fprminit & makeArrayTermBV("%x", 32, bits, 2) === makeArrayStoreTermBV("%x", 32, bits, iy, 1, 1)
                )
        }
    }

    {
        val phiPredecessors =
            Vector(
                PhiPredecessor(Const(IntC(1)), makeLabel("foo")),
                PhiPredecessor(Const(IntC(2)), makeLabel("bar"))
            )

        test("an integer phi insn with no binding has no effect") {
            hasPhiEffect(
                Phi(NoBinding(), FloatT(), phiPredecessors),
                Some(fooBlock),
                True()
            )
        }

        for (bits <- intSizes) {
            val ix = ixs(bits)
            test(s"an $bits bit integer phi insn with a binding and first predecessor gives correct term") {
                hasPhiEffect(
                    Phi(Binding(x), IntT(bits), phiPredecessors),
                    Some(fooBlock),
                    ix === 1.withUBits(bits)
                )
            }
            test(s"an $bits bit integer phi insn with a binding and non-first predecessor gives correct term") {
                hasPhiEffect(
                    Phi(Binding(x), IntT(bits), phiPredecessors),
                    Some(barBlock),
                    ix === 2.withUBits(bits)
                )
            }
        }
    }

    // Global variable initialisation

    val gbx = makeVarTermB("@x")

    test("a global initialised Boolean variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("x", IntT(1), IntC(1)),
            gbx === True()
        )
    }

    test("a global zero initialised Boolean variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("x", IntT(1), ZeroC()),
            gbx === False()
        )
    }

    val gixs = makeIntVars("@x")
    val giys = makeIntVars("@y")
    val gizs = makeIntVars("@z")

    for (bits <- intSizes) {
        val giy = giys(bits)
        test(s"a global initialised $bits bit integer variable generates the correct term") {
            hasItemEffect(
                makeGlobalInitVar("y", IntT(bits), IntC(42)),
                giy === 42.withUBits(bits)
            )
        }
        test(s"a global zero initialised $bits bit integer variable generates the correct term") {
            hasItemEffect(
                makeGlobalInitVar("y", IntT(bits), ZeroC()),
                giy === 0.withUBits(bits)
            )
        }
    }

    test("a global zero initialised Boolean array variable generates the correct term") {
        val i = BVs("i", 32)
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(1)), ZeroC()),
            forall(SSymbol("i")) {
                ArrayBV1("@z", 32, 1).indexed(0).at(i) === 0.withUBits(1)
            }
        )
    }

    for (bits <- intSizes) {
        test(s"a global zero initialised $bits bit integer array variable generates the correct term") {
            val i = BVs("i", 32)
            hasItemEffect(
                makeGlobalInitVar("z", ArrayT(10, IntT(bits)), ZeroC()),
                forall(SSymbol("i")) {
                    ArrayBV1("@z", 32, bits).indexed(0).at(i) === 0.withUBits(bits)
                }
            )
        }
        test(s"a global non-zero initialised $bits bit integer array variable generates the correct term") {
            hasItemEffect(
                makeGlobalInitVar("z", ArrayT(10, IntT(bits)), ArrayC(
                    Vector(
                        Element(IntT(32), IntC(10)),
                        Element(IntT(32), IntC(42))
                    )
                )),
                (ArrayBV1("@z", 32, bits).indexed(0).at(0) === 10.withUBits(bits)) &
                    (ArrayBV1("@z", 32, bits).indexed(0).at(1) === 42.withUBits(bits))
            )
        }
        test(s"a global string initialised $bits bit integer array variable generates the correct term") {
            hasItemEffect(
                makeGlobalInitVar("z", ArrayT(2, IntT(bits)), StringC(""""Hi"""")),
                (ArrayBV1("@z", 32, bits).indexed(0).at(0) === 72.withUBits(bits)) &
                    (ArrayBV1("@z", 32, bits).indexed(0).at(1) === 105.withUBits(bits))
            )
        }
    }

}
