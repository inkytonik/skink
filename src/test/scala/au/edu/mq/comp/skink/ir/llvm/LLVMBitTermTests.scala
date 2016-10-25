package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.inkytonik.kiama.util.Tests
import au.edu.mq.comp.smtlib.theories.BitVectors

/**
 * Tests of bit vector term construction.
 */
class LLVMBitTermTests extends LLVMTermTests with BitVectors {

    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{BitVectorSort, Term}
    import au.edu.mq.comp.smtlib.theories.BVTerm
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import scala.language.implicitConversions

    val config = createAndInitConfig(Seq("-i", "bit"))
    val termBuilder = new LLVMTermBuilder(namer, config)

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
        (LShR(Exact()), iz === (ix >> iy)),
        (LShR(NotExact()), iz === (ix >> iy)),
        (Mul(Vector()), iz === (ix * iy)),
        (Or(), iz === (ix or iy)),
        (SDiv(Exact()), iz === (ix / iy)),
        (SDiv(NotExact()), iz === (ix / iy)),
        (ShL(Vector()), iz === (ix << iy)),
        (SRem(), iz === (ix % iy)),
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
        (Add(Vector()), IntT(1), "binary Boolean op add not handled"),
        (AShR(Exact()), IntT(32), "binary integer op ashr exact not handled"),
        (AShR(NotExact()), IntT(32), "binary integer op ashr not handled"),
        (FAdd(Vector()), IntT(32), "binary integer op fadd not handled"),
        (FDiv(Vector()), IntT(32), "binary integer op fdiv not handled"),
        (FMul(Vector()), IntT(32), "binary integer op fmul not handled"),
        (FRem(Vector()), IntT(32), "binary integer op frem not handled"),
        (FSub(Vector()), IntT(32), "binary integer op fsub not handled")
    )

    for ((op, tipe, msg) <- badBinaryOps) {
        test(s"binary ${show(op)} insn on ${show(tipe)} should not be handled") {
            isNotHandled(Binary(Binding(z), op, tipe, xexp, yexp), msg)
        }
    }

    // Call instructions

    test("assume with Boolean argument is encoded correctly") {
        hasEffect(
            makeCall("__VERIFIER_assume", Vector(ValueArg(IntT(1), Vector(), Named(x)))),
            bx
        )
    }

    test("assume with integer argument is encoded correctly") {
        hasEffect(
            makeCall("__VERIFIER_assume", Vector(ValueArg(IntT(32), Vector(), Named(x)))),
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
        (UGT(), IntT(1), "Boolean comparison ugt not handled")
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
        PTRToInt(), SExt(), SIToFP(), Trunc(), UIToFP(), ZExt()
    )

    for (convOp <- convOps) {
        for ((fromType, toType, term) <- conversions) {
            test(s"${show(convOp)} conversion from ${show(fromType)} to ${show(toType)} is encoded correctly") {
                hasEffect(Convert(Binding(x), convOp, fromType, yexp, toType), term)
            }
        }
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