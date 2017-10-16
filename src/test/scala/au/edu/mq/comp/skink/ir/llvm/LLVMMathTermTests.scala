package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.franck44.scalasmt.theories.{ArrayExInt, ArrayExOperators, ArrayExReal, Core, IntegerArithmetics, RealArithmetics}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm

/**
 * Tests of main term construction including mathematical integer
 * terms but also non-integer terms.
 */
class LLVMMathTermTests extends LLVMTermTests with ArrayExInt with ArrayExOperators
        with ArrayExReal with Core with IntegerArithmetics with QuantifiedTerm
        with RealArithmetics {

    import au.edu.mq.comp.skink.ir.Trace
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{IntSort, RealSort, SSymbol, Term}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, IntTerm, RealTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show

    def config = createAndInitConfig(Seq())
    val termBuilder = new LLVMTermBuilder(funAnalyser, namer, config)

    def makeVarTermI(id : String, index : Int = 0) : VarTerm[IntTerm] =
        new VarTerm(id, IntSort(), Some(index))

    def makeVarTermR(id : String, index : Int = 0) : VarTerm[RealTerm] =
        new VarTerm(id, RealSort(), Some(index))

    def makeArrayTermR(id : String, index : Int = 0) : TypedTerm[ArrayTerm[RealTerm], Term] =
        ArrayReal1(id).indexed(index)

    def makeArrayElemTermR(id : String, elem : Int, index : Int = 0) : TypedTerm[RealTerm, Term] =
        makeArrayTermR(id, index).at(elem)

    val ix = makeVarTermI("%x")
    val iy = makeVarTermI("%y")
    val iz = makeVarTermI("%z")

    val ix1 = makeVarTermI("%x", 1)
    val ix2 = makeVarTermI("%x", 2)

    val iy1 = makeVarTermI("%y", 1)
    val iy2 = makeVarTermI("%y", 2)

    val fx = makeVarTermR("%x")
    val fy = makeVarTermR("%y")
    val fz = makeVarTermR("%z")

    val afx0 = makeArrayElemTermR("%x", 0)
    val afy0 = makeArrayElemTermR("%y", 0)
    val afz0 = makeArrayElemTermR("%z", 0)
    val afx1 = makeArrayElemTermR("%x", 1)
    val afy1 = makeArrayElemTermR("%y", 1)
    val afz1 = makeArrayElemTermR("%z", 1)

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
        (Sub(Vector()), iz === (ix - iy)),
        (UDiv(Exact()), iz === (ix / iy)),
        (UDiv(NotExact()), iz === (ix / iy)),
        (URem(), iz === (ix % iy))
    )

    for ((op, term) <- integerBinaryOps) {
        test(s"binary integer ${show(op)} insn is encoded correctly") {
            hasEffect(Binary(Binding(z), op, IntT(32), xexp, yexp), term)
        }
    }

    val floatBinaryOps = Vector(
        (FAdd(Vector()), fz === (fx + fy)),
        (FDiv(Vector()), fz === (fx / fy)),
        (FMul(Vector()), fz === (fx * fy)),
        (FSub(Vector()), fz === (fx - fy))
    )

    for ((op, term) <- floatBinaryOps) {
        test(s"binary real ${show(op)} insn is encoded correctly") {
            hasEffect(Binary(Binding(z), op, FloatT(), xexp, yexp), term)
        }
    }

    val floatVectorBinaryOps = Vector(
        (FAdd(Vector()), (afz0 === (afx0 + afy0)) & (afz1 === (afx1 + afy1))),
        (FDiv(Vector()), (afz0 === (afx0 / afy0)) & (afz1 === (afx1 / afy1))),
        (FMul(Vector()), (afz0 === (afx0 * afy0)) & (afz1 === (afx1 * afy1))),
        (FSub(Vector()), (afz0 === (afx0 - afy0)) & (afz1 === (afx1 - afy1)))
    )

    for ((op, term) <- floatVectorBinaryOps) {
        test(s"binary real vector ${show(op)} insn is encoded correctly") {
            hasEffect(Binary(Binding(z), op, VectorT(2, FloatT()), xexp, yexp), term)
        }
    }

    // Make sure bad uses of binary operations are not accepted

    val badBinaryOps = Vector(
        (Add(Vector()), IntT(1), "Boolean op add %x@0 %y@0 not handled"),
        (And(), IntT(32), "math integer op and %x@0 %y@0 not handled"),
        (AShR(Exact()), IntT(32), "math integer op ashr exact %x@0 %y@0 not handled"),
        (AShR(NotExact()), IntT(32), "math integer op ashr %x@0 %y@0 not handled"),
        (FAdd(Vector()), IntT(32), "math integer op fadd %x@0 %y@0 not handled"),
        (FDiv(Vector()), IntT(32), "math integer op fdiv %x@0 %y@0 not handled"),
        (FMul(Vector()), IntT(32), "math integer op fmul %x@0 %y@0 not handled"),
        (FRem(Vector()), IntT(32), "math integer op frem %x@0 %y@0 not handled"),
        (FRem(Vector()), VectorT(2, FloatT()), "float op frem (select %x@0 0 ) (select %y@0 0 ) not handled"),
        (FSub(Vector()), IntT(32), "math integer op fsub %x@0 %y@0 not handled"),
        (LShR(Exact()), IntT(32), "math integer op lshr exact %x@0 %y@0 not handled"),
        (LShR(NotExact()), IntT(32), "math integer op lshr %x@0 %y@0 not handled"),
        (Or(), IntT(32), "math integer op or %x@0 %y@0 not handled"),
        (ShL(Vector()), IntT(32), "math integer op shl %x@0 %y@0 not handled"),
        (XOr(), IntT(32), "math integer op xor %x@0 %y@0 not handled")
    )

    for ((op, tipe, msg) <- badBinaryOps) {
        test(s"binary ${show(op)} insn on ${show(tipe)} should not be handled") {
            isNotHandled(Binary(Binding(z), op, tipe, xexp, yexp), msg)
        }
    }

    // Call instructions

    test("assume with Boolean argument is encoded correctly") {
        hasEffect(
            makeCall(NoBinding(), "__VERIFIER_assume",
                Vector(ValueArg(IntT(1), Vector(), Named(x)))),
            bx
        )
    }

    test("assume with integer argument is encoded correctly") {
        hasEffect(
            makeCall(NoBinding(), "__VERIFIER_assume",
                Vector(ValueArg(IntT(32), Vector(), Named(x)))),
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
        (UGT(), (ix >= 0) & (iy >= 0) & (bz === (ix > iy))),
        (UGE(), (ix >= 0) & (iy >= 0) & (bz === (ix >= iy))),
        (ULT(), (ix >= 0) & (iy >= 0) & (bz === (ix < iy))),
        (ULE(), (ix >= 0) & (iy >= 0) & (bz === (ix <= iy))),
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
        ("__VERIFIER_nondet_int call", makeCall(Binding(x), "__VERIFIER_nondet_int", Vector())),
        ("llvm.va_start call", makeCall(NoBinding(), "llvm.va_start", Vector()))
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
            PhiPredecessor(Const(IntC(1)), makeLabel("foo")),
            PhiPredecessor(Const(IntC(2)), makeLabel("bar"))
        )

    test("a phi insn with no binding has no effect") {
        hasPhiEffect(
            Phi(NoBinding(), IntT(32), phiPredecessors),
            Some(fooBlock),
            True()
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

    test("the effect of a phi insn and no previous block is an error") {
        val e = intercept[RuntimeException] {
            hasPhiEffect(
                Phi(NoBinding(), IntT(32), phiPredecessors),
                None,
                True()
            )
        }
        e.getMessage shouldBe "phiInsnTerm: found phi i32 [ 1, %foo ], [ 2, %bar ] but have no previous block"
    }

    test("the effect of a phi insn and a bogus previous block is an error") {
        val e = intercept[RuntimeException] {
            hasPhiEffect(
                Phi(Binding(x), IntT(32), phiPredecessors),
                Some(bleBlock),
                True()
            )
        }
        e.getMessage shouldBe "phiInsnTerm: can't find %ble in %x = phi i32 [ 1, %foo ], [ 2, %bar ]"
    }

    test("multiple phi insns are correctly encoded in parallel") {
        // In %1 coming from %1, %y should refer to the incoming %x not the
        // %x set by the first phi insn, since the phis are supposed to run
        // simultaneously.

        traceEffect(
            """
            |define void @func() {
            |   0:
            |     br label %1
            |
            |   1:
            |     %x = phi i32 [ 0, %0 ], [ %y, %1 ]
            |     %y = phi i32 [ 1, %0 ], [ %x, %1 ]
            |     br label %1
            |}
            """.stripMargin,
            Trace(Seq(0, 0, 0, 0))
        ) shouldBe
            Seq(
                True(),
                (ix1 === 0) & (iy1 === 1),
                (ix2 === iy1) & (iy2 === ix1) // Note: ix1 not ix2!
            )

    }

    // Terminator instructions

    test("the effect of a branch is an error if the choice is negative") {
        val e = intercept[RuntimeException] {
            hasExitEffect(
                Branch(makeLabel("foo")),
                -1,
                True()
            )
        }
        e.getMessage shouldBe "exitTerm: can't handle choice -1 of br label %foo"
    }

    test("the effect of a branch is true if the choice is zero") {
        hasExitEffect(
            Branch(makeLabel("foo")),
            0,
            True()
        )
    }

    test("the effect of a branch is an error if the choice is not zero") {
        val e = intercept[RuntimeException] {
            hasExitEffect(
                Branch(makeLabel("foo")),
                1,
                True()
            )
        }
        e.getMessage shouldBe "exitTerm: can't handle choice 1 of br label %foo"
    }

    test("the effect of a conditional branch is value if the choice is zero") {
        hasExitEffect(
            BranchCond(xexp, makeLabel("foo"), makeLabel("bar")),
            0,
            bx
        )
    }

    test("the effect of a conditional branch is complement of value if the choice is one") {
        hasExitEffect(
            BranchCond(xexp, makeLabel("foo"), makeLabel("bar")),
            1,
            !bx
        )
    }

    test("the effect of a conditional branch is an error if the choice is two") {
        val e = intercept[RuntimeException] {
            hasExitEffect(
                BranchCond(xexp, makeLabel("foo"), makeLabel("bar")),
                2,
                True()
            )
        }
        e.getMessage shouldBe "exitTerm: can't handle choice 2 of br i1 %x, label %foo, label %bar"
    }

    test("the effect of an indirect branch is an error") {
        val e = intercept[RuntimeException] {
            hasExitEffect(
                IndirectBr(PointerT(IntT(32), DefaultAddrSpace()), xexp,
                    Vector(makeLabel("foo"), makeLabel("bar"))),
                0,
                True()
            )
        }
        e.getMessage shouldBe "exitTerm: can't handle choice 0 of indirectbr i32* %x, [%foo, %bar]"
    }

    test("the effect of an invoke instruction is an error") {
        val e = intercept[RuntimeException] {
            hasExitEffect(
                Invoke(NoBinding(), DefaultCC(), Vector(), IntT(32),
                    Function(Named(Global("func"))), Vector(), Vector(),
                    makeLabel("foo"), makeLabel("bar")),
                0,
                True()
            )
        }
        e.getMessage shouldBe "exitTerm: can't handle choice 0 of invoke i32 @func() to label %foo unwind label %bar"
    }

    test("the effect of a resume instruction is an error") {
        val e = intercept[RuntimeException] {
            hasExitEffect(
                Resume(IntT(32), Const(IntC(1))),
                0,
                True()
            )
        }
        e.getMessage shouldBe "exitTerm: can't handle choice 0 of resume i32 1"
    }

    test("the effect of a non-void ret instruction is true") {
        hasExitEffect(Ret(IntT(32), Const(IntC(1))), 0, True())
    }

    test("the effect of a void ret instruction is true") {
        hasExitEffect(RetVoid(), 0, True())
    }

    val sw =
        Switch(
            IntT(32), xexp, makeLabel("foo"),
            Vector(
                Case(IntT(32), Const(IntC(1)), makeLabel("bar")),
                Case(IntT(32), Const(IntC(2)), makeLabel("ble")),
                Case(IntT(32), Const(IntC(3)), makeLabel("bar"))
            )
        )

    test("the effect of a switch instruction with maximum choice selects opposite of all cases") {
        hasExitEffect(sw, 3, !(ix === 1) & !(ix === 2) & !(ix === 3))
    }

    test("the effect of a switch instruction with choice zero selects first case") {
        hasExitEffect(sw, 0, ix === 1)
    }

    test("the effect of a switch instruction with choice one selects second case") {
        hasExitEffect(sw, 1, ix === 2)
    }

    test("the effect of a switch instruction with choice two selects third case") {
        hasExitEffect(sw, 2, ix === 3)
    }

    test("the effect of a switch instruction with choice out of range is an error") {
        val e = intercept[RuntimeException] {
            hasExitEffect(sw, 4, True())
        }
        e.getMessage shouldBe "exitTerm: can't handle choice 4 of switch i32 %x, label %foo [ i32 1, label %bar i32 2, label %ble i32 3, label %bar ]"
    }

    test("the effect of an unreachable instruction is an error") {
        val e = intercept[RuntimeException] {
            hasExitEffect(
                Unreachable(),
                0,
                True()
            )
        }
        e.getMessage shouldBe "exitTerm: can't handle choice 0 of unreachable"
    }

    // Global variable initialisation

    def makeGlobalInitVar(id : String, tipe : Type, constantValue : ConstantValue) : GlobalVariableDefinition =
        GlobalVariableDefinition(
            GlobalBinding(Global(id)), Common(), DefaultVisibility(),
            DefaultDLLStorageClass(), NoThreadLocalSpec(), NamedAddr(),
            DefaultAddrSpace(), NotExternallyInitialized(), GlobalVar(),
            tipe, Init(constantValue), DefaultSection(), NoComdat(), Align(4),
            Metadata(Vector())
        )

    val gix = makeVarTermI("@x")
    val giy = makeVarTermI("@y")
    val giz = makeVarTermI("@z")

    test("a global initialised Boolean variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("x", IntT(1), IntC(1)),
            gix === 1
        )
    }

    test("a global zero initialised Boolean variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("x", IntT(1), ZeroC()),
            gix === 0
        )
    }

    test("a global initialised integer variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("y", IntT(32), IntC(42)),
            giy === 42
        )
    }

    test("a global zero initialised integer variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("y", IntT(32), ZeroC()),
            giy === 0
        )
    }

    test("a global zero initialised Boolean array variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(1)), ZeroC()),
            forall(SSymbol("i")) {
                val i = Ints("i")
                ArrayEx1[IntTerm]("@z").indexed(0).at(i) === 0
            }
        )
    }

    test("a global zero initialised integer array variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(32)), ZeroC()),
            forall(SSymbol("i")) {
                val i = Ints("i")
                ArrayEx1[IntTerm]("@z").indexed(0).at(i) === 0
            }
        )
    }

    // getelementptr

    test("the effect of basic getelementptrs for single index accesses is true") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %a = alloca [5 x i32], align 16
            |     %x = getelementptr inbounds i32, i32* %a, i32 4
            |     %y = getelementptr inbounds i32, i32* %a, i32 0, i32 8
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(True())
    }

    test("a getelementptr that use multiple indexes is not handled") {
        val e = intercept[RuntimeException] {
            traceEffect(
                """
                |define void @func() {
                |   0:
                |     %a = alloca [5 x i32], align 16
                |     %x = getelementptr inbounds i32, i32* %a, i32 4, i32 8
                |     ret void
                |}
                """.stripMargin,
                Trace(Seq(0))
            )
        }
        e.getMessage shouldBe "insnTerm: unsupported getelementptr insn %x = getelementptr inbounds i32, i32* %a, i32 4, i32 8"
    }

    // Memory allocation calls

    test("the term for a memory allocation call expresses non-failure") {
        hasEffect(
            makeCall(Binding(x), "malloc", Vector(ValueArg(IntT(1), Vector(), Const(IntC(42))))),
            !(ix === 0)
        )
    }

}
