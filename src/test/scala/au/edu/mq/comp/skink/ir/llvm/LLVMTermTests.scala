package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.inkytonik.kiama.util.Tests

class DummyNamer extends LLVMNamer {
    def indexOf(use : Product, s : String) : Int =
        0
}

class LLVMTermTests extends Tests {

    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{IntSort, BoolSort, Sort, Term}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, IntTerm}
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show

    val namer = new DummyNamer
    import namer.{True => STrue, False => SFalse, _}

    val termBuilder = new LLVMTermBuilder(namer)

    val noMetadata = Metadata(Vector())

    // Helpers to build useful instructions and terms

    def makeLocal(id : String) =
        Local(id)

    val x = makeLocal("x")
    val y = makeLocal("y")
    val z = makeLocal("z")

    def makeLocalExp(id : String) =
        Named(makeLocal(id))

    val xexp = makeLocalExp("x")
    val yexp = makeLocalExp("y")
    val zexp = makeLocalExp("z")

    def makeVarTermB(id : String) : VarTerm[BoolTerm] =
        new VarTerm(id, BoolSort(), Some(0))

    def makeVarTermI(id : String) : VarTerm[IntTerm] =
        new VarTerm(id, IntSort(), Some(0))

    val bx = makeVarTermB("%x")
    val by = makeVarTermB("%y")
    val bz = makeVarTermB("%z")

    val ix = makeVarTermI("%x")
    val iy = makeVarTermI("%y")
    val iz = makeVarTermI("%z")

    // Helper functions

    def hasNoEffect(insn : Instruction) {
        termBuilder.insnTerm(MetaInstruction(insn, noMetadata)) shouldBe namer.True()
    }

    def hasEffect[A, B <: Term](insn : Instruction, effect : TypedTerm[A, B]) {
        termBuilder.insnTerm(MetaInstruction(insn, noMetadata)) shouldBe effect
    }

    def hasPhiEffect[A, B <: Term](
        insn : PhiInstruction,
        optPrevBlock : Option[Block],
        effect : TypedTerm[A, B]
    ) {
        termBuilder.phiInsnTerm(MetaPhiInstruction(insn, noMetadata), optPrevBlock) shouldBe effect
    }

    def isNotHandled(insn : Instruction, msg : String) {
        val e = intercept[RuntimeException] {
            termBuilder.insnTerm(MetaInstruction(insn, noMetadata))
        }
        e.getMessage shouldBe msg
    }

    // Tests that instruction effects are encoded correctly

    // Binary operations

    val booleanBinaryOps = Vector(
        (And(), bz === (bx & by)),
        (Or(), bz === (bx | by)),
        (XOr(), bz === (bx xor by))
    )

    for ((op, term) <- booleanBinaryOps) {
        test(s"binary Boolean ${show(op)} insn is encoded correctly") {
            hasEffect(Binary(Binding(z), op, IntT(1), xexp, yexp), term)
        }
    }

    val integerBinaryOps = Vector(
        (Add(Vector()), iz === (ix + iy)),
        (Mul(Vector()), iz === (ix * iy)),
        (SDiv(Exact()), iz === (ix / iy)),
        (SDiv(NotExact()), iz === (ix / iy)),
        (SRem(), iz === (ix % iy)),
        (Sub(Vector()), iz === (ix - iy))
    )

    for ((op, term) <- integerBinaryOps) {
        test(s"binary integer ${show(op)} insn is encoded correctly") {
            hasEffect(Binary(Binding(z), op, IntT(32), xexp, yexp), term)
        }
    }

    // Make sure bad uses of binary operations are not accepted

    val badBinaryOps = Vector(
        (Add(Vector()), IntT(1), "binary Boolean op add not handled"),
        (And(), IntT(32), "binary integer op and not handled")
    )

    for ((op, tipe, msg) <- badBinaryOps) {
        test(s"binary ${show(op)} insn on ${show(tipe)} should not be handled") {
            isNotHandled(Binary(Binding(z), op, tipe, xexp, yexp), msg)
        }
    }

    // Call instructions

    def makeCall(id : String, args : Vector[CallArgument]) =
        Call(NoBinding(), NotTail(), DefaultCC(), Vector(), VoidT(),
            Function(Named(Global(id))), args, Vector())

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
        (UGT(), bz === (ix > iy)),
        (UGE(), bz === (ix >= iy)),
        (ULT(), bz === (ix < iy)),
        (ULE(), bz === (ix <= iy)),
        (SGT(), bz === (ix > iy)),
        (SGE(), bz === (ix >= iy)),
        (SLT(), bz === (ix < iy)),
        (SLE(), bz === (ix <= iy))
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
        (IntT(1), bx === by),
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
        (IntT(1), bx === by),
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

    // Make sure instructions we are not handling yet are actually ignored

    val theIgnoredInsns = Vector(
        ("alloca", Alloca(NoBinding(), NotInAlloca(), IntT(32), OneElement(), DefaultAlign())),
        ("__VERIFIER_nondet_int call", makeCall("__VERIFIER_nondet_int", Vector())),
        ("llvm.va_start call", makeCall("llvm.va_start", Vector()))
    )

    for ((desc, insn) <- theIgnoredInsns) {
        test(s"$desc insn is ignored") {
            hasNoEffect(insn)
        }
    }

    // Phi instructions

    def makeDummyBlock(name : String) =
        Block(BlockLabel(name), Vector(), None, Vector(),
            MetaTerminatorInstruction(Unreachable(), noMetadata))

    val fooBlock = makeDummyBlock("foo")
    val barBlock = makeDummyBlock("bar")
    val bleBlock = makeDummyBlock("ble")

    val phiPredecessors =
        Vector(
            PhiPredecessor(Const(IntC(1)), Label(Local("foo"))),
            PhiPredecessor(Const(IntC(2)), Label(Local("bar")))
        )

    test("a phi insn with no binding has no effect") {
        hasPhiEffect(
            Phi(NoBinding(), IntT(32), phiPredecessors),
            Some(fooBlock),
            STrue()
        )
    }

    test("a phi insn with a binding and first predecessor gives correct term") {
        hasPhiEffect(
            Phi(Binding(x), IntT(32), phiPredecessors),
            Some(fooBlock),
            ix === 1
        )
    }

    test("a phi insn with a binding and non-first predecessor gives correct term") {
        hasPhiEffect(
            Phi(Binding(x), IntT(32), phiPredecessors),
            Some(barBlock),
            ix === 2
        )
    }

    test("a phi insn and no previous block is an error") {
        val e = intercept[RuntimeException] {
            hasPhiEffect(
                Phi(NoBinding(), IntT(32), phiPredecessors),
                None,
                STrue()
            )
        }
        e.getMessage shouldBe "phiInsnTerm: found phi i32 [ 1, %foo ], [ 2, %bar ] but have no previous block"
    }

    test("a phi insn and a bogus previous block is an error") {
        val e = intercept[RuntimeException] {
            hasPhiEffect(
                Phi(Binding(x), IntT(32), phiPredecessors),
                Some(bleBlock),
                STrue()
            )
        }
        e.getMessage shouldBe "phiInsnTerm: can't find %ble in %x = phi i32 [ 1, %foo ], [ 2, %bar ]"
    }

}
