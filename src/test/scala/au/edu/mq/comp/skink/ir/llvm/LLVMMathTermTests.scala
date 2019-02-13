/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2019
 * Programming Languages and Verification Research Group
 * Macquarie University
 *
 * Skink is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Skink is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * See COPYING and COPYING.LESSER for full license terms.
 * More information at http://www.gnu.org/licenses.
 */

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
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BoolSort, IntSort, RealSort, SSymbol, Term}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BoolTerm, IntTerm, RealTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import org.scalallvm.assembly.AssemblySyntax.{False => FFalse, True => FTrue, _}
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show

    def config = createAndInitConfig(Seq())
    val helper = new LLVMHelper(config)
    val termBuilder = new LLVMBitTermBuilder(program, funAnalyser, namer, helper, config) // FIXME

    def makeVarTermB(id : String, index : Int = 0) : VarTerm[BoolTerm] =
        new VarTerm(id, BoolSort(), Some(index))

    def makeVarTermI(id : String, index : Int = 0) : VarTerm[IntTerm] =
        new VarTerm(id, IntSort(), Some(index))

    def makeVarTermR(id : String, index : Int = 0) : VarTerm[RealTerm] =
        new VarTerm(id, RealSort(), Some(index))

    def makeArrayTermI(id : String, index : Int = 0) : TypedTerm[ArrayTerm[IntTerm], Term] =
        ArrayInt1(id).indexed(index)

    def makeArrayTermR(id : String, index : Int = 0) : TypedTerm[ArrayTerm[RealTerm], Term] =
        ArrayReal1(id).indexed(index)

    def makeArrayLoadTermI(id : String, elem : Int, index : Int = 0) : TypedTerm[IntTerm, Term] =
        makeArrayTermI(id, index).at(elem)

    def makeArrayLoadTermR(id : String, elem : Int, index : Int = 0) : TypedTerm[RealTerm, Term] =
        makeArrayTermR(id, index).at(elem)

    def makeArrayStoreTermI(id : String, from : TypedTerm[IntTerm, Term], elem : Int, index : Int = 0) : TypedTerm[ArrayTerm[IntTerm], Term] =
        makeArrayTermI(id, index).store(elem, from)

    def makeArrayStoreTermR(id : String, from : TypedTerm[RealTerm, Term], elem : Int, index : Int = 0) : TypedTerm[ArrayTerm[RealTerm], Term] =
        makeArrayTermR(id, index).store(elem, from)

    val ix = makeVarTermI("%x")
    val iy = makeVarTermI("%y")
    val iz = makeVarTermI("%z")

    val iv = Ints(v.toInt)
    val iw = Ints(w.toInt)

    val ix1 = makeVarTermI("%x", 1)
    val ix2 = makeVarTermI("%x", 2)

    val iy1 = makeVarTermI("%y", 1)
    val iy2 = makeVarTermI("%y", 2)

    val floatSizes = Vector(
        HalfT(),
        FloatT(),
        DoubleT(),
        X86_FP80(),
        FP128T(),
        PPC_FP128T()
    )

    val fx = makeVarTermR("%x")
    val fy = makeVarTermR("%y")
    val fz = makeVarTermR("%z")

    val fv = Reals(v.toInt)
    val fw = Reals(w.toInt)
    val vconst = makeFloat(v)
    val wconst = makeFloat(w)

    val afx0 = makeArrayLoadTermR("%x", 0)
    val afy0 = makeArrayLoadTermR("%y", 0)
    val afz0 = makeArrayLoadTermR("%z", 0)
    val afx1 = makeArrayLoadTermR("%x", 1)
    val afy1 = makeArrayLoadTermR("%y", 1)
    val afz1 = makeArrayLoadTermR("%z", 1)

    val ix01 = makeVarTermI("%x_0", 1)
    val ix11 = makeVarTermI("%x_1", 1)

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

    {
        type ttype = TypedTerm[IntTerm, Term]
        type ftype = (ttype, ttype) => ttype

        val integerBinaryOps : Vector[(BinOp, ftype)] =
            Vector(
                (Add(Vector()), _ + _),
                (Mul(Vector()), _ * _),
                (SDiv(Exact()), _ / _),
                (SDiv(NotExact()), _ / _),
                (SRem(), _ % _),
                (Sub(Vector()), _ - _),
                (UDiv(Exact()), _ / _),
                (UDiv(NotExact()), _ / _),
                (URem(), _ % _)
            )

        for (bits <- intSizes) {
            for ((op, term) <- integerBinaryOps) {
                test(s"binary $bits integer ${show(op)} insn is encoded correctly") {
                    hasEffect(Binary(Binding(z), op, IntT(bits), xexp, yexp), iz === term(ix, iy))
                }
                test(s"binary $bits integer ${show(op)} constant is encoded correctly") {
                    termBuilder.ctermI(BinaryC(op, IntT(bits), ivconst, IntT(bits), iwconst), bits) shouldBe term(iv, iw)
                }
            }
        }
    }

    test(s"binary and with constant one less than power of two is encoded as a modulus") {
        hasEffect(
            Binary(Binding(z), And(), IntT(32), xexp, Const(IntC(7))),
            iz === ix % 8
        )
    }

    test(s"binary shift right by constant is encoded as division") {
        hasEffect(
            Binary(Binding(z), AShR(Exact()), IntT(32), xexp, Const(IntC(3))),
            iz === ix / 8
        )
    }

    test(s"binary shift left by constant is encoded as multiplication") {
        hasEffect(
            Binary(Binding(z), ShL(Vector()), IntT(32), xexp, Const(IntC(4))),
            iz === ix * 16
        )
    }

    test(s"binary exclusive or with minus one is encoded as complement") {
        hasEffect(
            Binary(Binding(z), XOr(), IntT(32), xexp, Const(IntC(-1))),
            iz === ix * -1 - 1
        )
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

    // Make sure bad uses of binary operations are not accepted

    val badBinaryOps = Vector(
        (Add(Vector()), IntT(1), "Boolean op add %x %y not handled"),
        (And(), IntT(32), "math integer op and %x %y not handled"),
        (AShR(Exact()), IntT(32), "math integer op ashr exact %x %y not handled"),
        (AShR(NotExact()), IntT(32), "math integer op ashr %x %y not handled"),
        (FAdd(Vector()), IntT(32), "math integer op fadd %x %y not handled"),
        (FDiv(Vector()), IntT(32), "math integer op fdiv %x %y not handled"),
        (FMul(Vector()), IntT(32), "math integer op fmul %x %y not handled"),
        (FRem(Vector()), IntT(32), "math integer op frem %x %y not handled"),
        (FAdd(Vector()), VectorT(2, FloatT()), "insnTerm: don't know the effect of %z = fadd <2 x float> %x, %y"),
        (FDiv(Vector()), VectorT(2, FloatT()), "insnTerm: don't know the effect of %z = fdiv <2 x float> %x, %y"),
        (FMul(Vector()), VectorT(2, FloatT()), "insnTerm: don't know the effect of %z = fmul <2 x float> %x, %y"),
        (FRem(Vector()), VectorT(2, FloatT()), "insnTerm: don't know the effect of %z = frem <2 x float> %x, %y"),
        (FSub(Vector()), VectorT(2, FloatT()), "insnTerm: don't know the effect of %z = fsub <2 x float> %x, %y"),
        (FSub(Vector()), IntT(32), "math integer op fsub %x %y not handled"),
        (LShR(Exact()), IntT(32), "math integer op lshr exact %x %y not handled"),
        (LShR(NotExact()), IntT(32), "math integer op lshr %x %y not handled"),
        (Or(), IntT(32), "math integer op or %x %y not handled"),
        (ShL(Vector()), IntT(32), "math integer op shl %x %y not handled"),
        (XOr(), IntT(32), "math integer op xor %x %y not handled")
    )

    for ((op, tipe, msg) <- badBinaryOps) {
        test(s"binary ${show(op)} insn on ${show(tipe)} should not be handled") {
            isNotHandled(Binary(Binding(z), op, tipe, xexp, yexp), msg)
        }
    }

    // Call instructions

    test("absolute value call is encoded as abs operation") {
        hasEffect(
            makeCall(Binding(x), "llvm.fabs.f64",
                Vector(ValueArg(FloatT(), Vector(), Named(y)))),
            fx === absR(fy)
        )
    }

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

    {
        type ttype = TypedTerm[IntTerm, Term]
        type ftype = (ttype, ttype) => TypedTerm[BoolTerm, Term]

        val integerCompares : Vector[(ICond, ftype)] =
            Vector(
                (EQ(), _ === _),
                (NE(), (x, y) => !(x === y)),
                (UGT(), (x, y) => (x >= 0) & (y >= 0) & (x > y)),
                (UGE(), (x, y) => (x >= 0) & (y >= 0) & (x >= y)),
                (ULT(), (x, y) => (x >= 0) & (y >= 0) & (x < y)),
                (ULE(), (x, y) => (x >= 0) & (y >= 0) & (x <= y)),
                (SGT(), _ > _),
                (SGE(), _ >= _),
                (SLT(), _ < _),
                (SLE(), _ <= _)
            )

        for (bits <- intSizes) {
            for ((cond, term) <- integerCompares) {
                test(s"compare insn $bits bit integer with ${show(cond)} is encoded correctly") {
                    hasEffect(Compare(Binding(z), ICmp(cond), IntT(bits), xexp, yexp), bz === term(ix, iy))
                }
                test(s"compare constant $bits bit integer with ${show(cond)} is encoded correctly") {
                    termBuilder.ctermB(CompareC(ICmp(cond), IntT(bits), ivconst, IntT(bits), iwconst)) shouldBe term(iv, iw)
                }
            }
        }
    }

    for (fs <- floatSizes) {
        type ttype = TypedTerm[RealTerm, Term]
        type ftype = (ttype, ttype) => TypedTerm[BoolTerm, Term]
        val floatCompares : Vector[(FCond, ftype)] =
            Vector(
                (FFalse(), (x, y) => False()),
                (FTrue(), (x, y) => True()),
                (FORD(), (x, y) => True()),
                (FONE(), (x, y) => !(x === y)),
                (FOEQ(), _ === _),
                (FOGT(), _ > _),
                (FOGE(), _ >= _),
                (FOLT(), _ < _),
                (FOLE(), _ <= _)
            )
        for ((cond, term) <- floatCompares) {
            test(s"compare insn ${show(fs)} real with ${show(cond)} is encoded correctly") {
                hasEffect(Compare(Binding(z), FCmp(cond), fs, xexp, yexp), bz === term(fx, fy))
            }
            test(s"compare constant ${show(fs)} real with ${show(cond)} is encoded correctly") {
                termBuilder.ctermB(CompareC(FCmp(cond), fs, vconst, fs, wconst)) shouldBe term(fv, fw)
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

    val conversions = Vector(
        (IntT(1), IntT(1), bx === by),
        (IntT(32), IntT(1), bx === !(iy === 0)),
        (IntT(1), IntT(32), ix === by.ite(1, 0)),
        (IntT(32), IntT(32), ix === iy),
        (FloatT(), IntT(1), bx === !(fy === 0)),
        (IntT(1), FloatT(), fx === by.ite(1, 0))
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

    test("integer array element load is encoded correctly (separate getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca i32, i32 5
            |     %1 = getelementptr inbounds [5 x i32], [5 x i32]* %x, i32 0, i32 1
            |     %y = load i32, i32* %1
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & iy1 === makeArrayLoadTermI("%x", 1, 1)
            )
    }

    test("integer array element load is encoded correctly (argument getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca i32, i32 5
            |     %y = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* %x, i32 0, i32 1)
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & iy1 === makeArrayLoadTermI("%x", 1, 1)
            )
    }

    test("float array element load is encoded correctly (separate getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca float, float 4
            |     %1 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i32 1
            |     %y = load float, float* %1
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & makeVarTermR("%y", 1) === makeArrayLoadTermR("%x", 1, 1)
            )
    }

    test("float array element load is encoded correctly (argument getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca float, float 4
            |     %y = load float, float* getelementptr inbounds ([4 x float], [4 x float]* %x, i32 0, i32 1)
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & makeVarTermR("%y", 1) === makeArrayLoadTermR("%x", 1, 1)
            )
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

    test("integer array element store is encoded correctly (separate getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca i32, i32 8
            |     %1 = getelementptr inbounds [8 x i32], [8 x i32]* %x, i32 0, i32 1
            |     store i32 %y, i32* %1
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & makeArrayTermI("%x", 2) === makeArrayStoreTermI("%x", iy, 1, 1)
            )
    }

    test("integer array element store is encoded correctly (argument getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca i32, i32 8
            |     store i32 %y, i32* getelementptr inbounds ([8 x i32], [8 x i32]* %x, i32 0, i32 1)
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & makeArrayTermI("%x", 2) === makeArrayStoreTermI("%x", iy, 1, 1)
            )
    }

    test("float array element store is encoded correctly (separate getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca float, float 8
            |     %1 = getelementptr inbounds [8 x float], [8 x float]* %x, i32 0, i32 1
            |     store float %y, float* %1
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & makeArrayTermR("%x", 2) === makeArrayStoreTermR("%x", fy, 1, 1)
            )
    }

    test("float array element store is encoded correctly (argument getelementptr)") {
        traceEffect(
            """
            |define void @func() {
            |   0:
            |     %x = alloca float, float 8
            |     store float %y, float* getelementptr inbounds ([8 x float], [8 x float]* %x, i32 0, i32 1)
            |     ret void
            |}
            """.stripMargin,
            Trace(Seq(0))
        ) shouldBe
            Seq(
                True() & makeArrayTermR("%x", 2) === makeArrayStoreTermR("%x", fy, 1, 1)
            )
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

    {
        val phiPredecessors =
            Vector(
                PhiPredecessor(Const(IntC(1)), makeLabel("foo")),
                PhiPredecessor(Const(IntC(2)), makeLabel("bar"))
            )

        test("an integer phi insn with no binding has no effect") {
            hasPhiEffect(
                Phi(NoBinding(), IntT(32), phiPredecessors),
                Some(fooBlock),
                True()
            )
        }

        test("an integer phi insn with a binding and first predecessor gives correct term") {
            hasPhiEffect(
                Phi(Binding(x), IntT(32), phiPredecessors),
                Some(fooBlock),
                ix === 1
            )
        }

        test("an integer phi insn with a binding and non-first predecessor gives correct term") {
            hasPhiEffect(
                Phi(Binding(x), IntT(32), phiPredecessors),
                Some(barBlock),
                ix === 2
            )
        }

        test("the effect of an integer phi insn and no previous block is an error") {
            val e = intercept[RuntimeException] {
                hasPhiEffect(
                    Phi(NoBinding(), IntT(32), phiPredecessors),
                    None,
                    True()
                )
            }
            e.getMessage shouldBe "phiInsnTerm: found phi i32 [ 1, %foo ], [ 2, %bar ] but have no previous block"
        }

        test("the effect of an integer phi insn and a bogus previous block is an error") {
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
    }

    {
        val phiPredecessors =
            Vector(
                PhiPredecessor(Const(FloatC("1.4")), makeLabel("foo")),
                PhiPredecessor(Const(FloatC("-0.7")), makeLabel("bar"))
            )

        test("a float phi insn with no binding has no effect") {
            hasPhiEffect(
                Phi(NoBinding(), FloatT(), phiPredecessors),
                Some(fooBlock),
                True()
            )
        }

        test("a float phi insn with a binding and first predecessor gives correct term") {
            hasPhiEffect(
                Phi(Binding(x), FloatT(), phiPredecessors),
                Some(fooBlock),
                fx === 1.4
            )
        }

        test("a float phi insn with a binding and non-first predecessor gives correct term") {
            hasPhiEffect(
                Phi(Binding(x), FloatT(), phiPredecessors),
                Some(barBlock),
                fx === -0.7
            )
        }

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

    val gbx = makeVarTermB("@x")

    val gix = makeVarTermI("@x")
    val giy = makeVarTermI("@y")
    val giz = makeVarTermI("@z")

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
        val i = Ints("i")
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(1)), ZeroC()),
            forall(SSymbol("i")) {
                ArrayInt1("@z").indexed(0).at(i) === 0
            }
        )
    }

    test("a global zero initialised integer array variable generates the correct term") {
        val i = Ints("i")
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(32)), ZeroC()),
            forall(SSymbol("i")) {
                ArrayInt1("@z").indexed(0).at(i) === 0
            }
        )
    }

    test("a global zero initialised real array variable generates the correct term") {
        val i = Ints("i")
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, FloatT()), ZeroC()),
            forall(SSymbol("i")) {
                ArrayReal1("@z").indexed(0).at(i) === 0
            }
        )
    }

    test("a global non-zero initialised integer array variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(32)), ArrayC(
                Vector(
                    Element(IntT(32), IntC(10)),
                    Element(IntT(32), IntC(42))
                )
            )),
            (ArrayInt1("@z").indexed(0).at(0) === 10) &
                (ArrayInt1("@z").indexed(0).at(1) === 42)
        )
    }

    test("a global string initialised integer array variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(2, IntT(32)), StringC(""""Hi"""")),
            (ArrayInt1("@z").indexed(0).at(0) === 72) &
                (ArrayInt1("@z").indexed(0).at(1) === 105)
        )
    }

    test("a global non-zero initialised real array variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, FloatT()), ArrayC(
                Vector(
                    Element(IntT(32), FloatC("1.5")),
                    Element(IntT(32), FloatC("-0.7e12"))
                )
            )),
            (ArrayReal1("@z").indexed(0).at(0) === 1.5) &
                (ArrayReal1("@z").indexed(0).at(1) === -700000000000.0)
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
