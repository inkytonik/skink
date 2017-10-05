package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.franck44.scalasmt.theories.BitVectors

/**
 * Tests of bit vector term construction.
 */
class LLVMBitTermTests extends LLVMTermTests with BitVectors {

    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BitVectorSort, Term}
    import org.bitbucket.franck44.scalasmt.theories.BVTerm
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import scala.language.implicitConversions

    def config = createAndInitConfig(Seq("-i", "bit"))
    val termBuilder = new LLVMTermBuilder(funAnalyser, namer, config)

    def makeVarTermI(id : String) : VarTerm[BVTerm] =
        new VarTerm(id, BitVectorSort("32"), Some(0))

    implicit def BVs32(i : Int) : TypedTerm[BVTerm, Term] =
        BVs(i, 32)

    val ix = makeVarTermI("%x")
    val iy = makeVarTermI("%y")
    val iz = makeVarTermI("%z")

    // Binary operations

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
        test(s"binary integer ${show(op)} insn is encoded correctly") {
            hasEffect(Binary(Binding(z), op, IntT(32), xexp, yexp), term)
        }
    }

    // Make sure bad uses of binary operations are not accepted

    val badBinaryOps = Vector(
        (Add(Vector()), IntT(1), "Boolean op add %x@0 %y@0 not handled"),
        (FAdd(Vector()), IntT(32), "bitvector integer op fadd %x@0 %y@0 not handled"),
        (FDiv(Vector()), IntT(32), "bitvector integer op fdiv %x@0 %y@0 not handled"),
        (FMul(Vector()), IntT(32), "bitvector integer op fmul %x@0 %y@0 not handled"),
        (FRem(Vector()), IntT(32), "bitvector integer op frem %x@0 %y@0 not handled"),
        (FSub(Vector()), IntT(32), "bitvector integer op fsub %x@0 %y@0 not handled")
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

    test("assume with integer argument is encoded correctly") {
        hasEffect(
            makeCall(NoBinding(), "__VERIFIER_assume", Vector(ValueArg(IntT(32), Vector(), Named(x)))),
            !(ix === 0)
        )
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
        test(s"compare integer with ${show(cond)} is encoded correctly") {
            hasEffect(Compare(Binding(z), ICmp(cond), IntT(32), xexp, yexp), term)
        }
    }

    // Make sure bad uses of compare conditions are not accepted

    val badCompares = Vector(
        (UGT(), IntT(1), "Boolean comparison op ugt %x@0 %y@0 not handled")
    )

    for ((cond, tipe, msg) <- badCompares) {
        test(s"binary compare ${show(cond)} insn on ${show(tipe)} should not be handled") {
            isNotHandled(Compare(Binding(z), ICmp(cond), tipe, xexp, yexp), msg)
        }
    }

    // Conversions

    val conversions = Vector(
        (IntT(1), IntT(1), bx === by),
        (IntT(32), IntT(1), bx === !(iy === 0)),
        (IntT(1), IntT(32), ix === by.ite(1, 0)),
        (IntT(32), IntT(32), ix === iy)
    )

    val convOps = Vector(
        AddrSpaceCast(), Bitcast(), FPExt(), FPToSI(), FPToUI(), FPTrunc(), IntToPTR(),
        PTRToInt(), SIToFP(), UIToFP()
    )

    for (convOp <- convOps) {
        for ((fromType, toType, term) <- conversions) {
            test(s"${show(convOp)} conversion from ${show(fromType)} to ${show(toType)} is encoded correctly") {
                hasEffect(Convert(Binding(x), convOp, fromType, yexp, toType), term)
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

    test(s"sext Int(1) to Int(32) insn is encoded correctly") {
        hasEffect(
            Convert(Binding(x), SExt(), IntT(1), yexp, IntT(32)),
            ix === ((by.ite(1.withBits(1), 0.withBits(1))) sext 31)
        )
    }

    test(s"trunc Int(1) to Int(32) insn should not be handled") {
        isNotHandled(
            Convert(Binding(x), Trunc(), IntT(1), yexp, IntT(32)),
            "insnTerm: growing trunc insn %x = trunc i1 %y to i32"
        )
    }

    test(s"zext Int(1) to Int(32) insn is encoded correctly") {
        hasEffect(
            Convert(Binding(x), ZExt(), IntT(1), yexp, IntT(32)),
            ix === ((by.ite(1.withBits(1), 0.withBits(1))) zext 31)
        )
    }

    test(s"sext Int(32) to Int(1) insn should not be handled") {
        isNotHandled(
            Convert(Binding(x), SExt(), IntT(32), yexp, IntT(1)),
            "insnTerm: shrinking sext insn %x = sext i32 %y to i1"
        )
    }

    test(s"trunc Int(32) to Int(1) insn is encoded correctly") {
        hasEffect(
            Convert(Binding(x), Trunc(), IntT(32), yexp, IntT(1)),
            (bx.ite(1.withBits(1), 0.withBits(1))) === iy.extract(0, 0)
        )
    }

    test(s"zext Int(32) to Int(1) insn should not be handled") {
        isNotHandled(
            Convert(Binding(x), ZExt(), IntT(32), yexp, IntT(1)),
            "insnTerm: shrinking zext insn %x = zext i32 %y to i1"
        )
    }

    test(s"sext Int(32) to Int(32) insn is encoded correctly") {
        hasEffect(Convert(Binding(x), SExt(), IntT(32), yexp, IntT(32)), ix === iy)
    }

    test(s"trunc Int(32) to Int(32) insn is encoded correctly") {
        hasEffect(Convert(Binding(x), Trunc(), IntT(32), yexp, IntT(32)), ix === iy)
    }

    test(s"zext Int(32) to Int(32) insn is encoded correctly") {
        hasEffect(Convert(Binding(x), ZExt(), IntT(32), yexp, IntT(32)), ix === iy)
    }

    // Loads

    val loads = Vector(
        (IntT(32), ix === iy)
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

    // Stores

    val stores = Vector(
        (IntT(32), ix === iy)
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
