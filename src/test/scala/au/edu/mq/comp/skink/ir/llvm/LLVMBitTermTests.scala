/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
 * Franck Cassez, Anthony M. Sloane, Matthew Roberts.
 *
 * Skink is free software: you can redistribute it and/or modify it  under
 * the terms of the  GNU Lesser General Public License as published by the
 * Free Software Foundation,  either version 3 of the License, or (at your
 * option) any later version.
 *
 * Skink is distributed  in the hope  that it will  be useful, but WITHOUT
 * ANY WARRANTY;  without  even the implied   warranty  of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Skink.  (See files COPYING and  COPYING.LESSER.)  If not, see
 * <http://www.gnu.org/licenses/>.
 */

package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.franck44.scalasmt.theories.{ArrayExBV, ArrayExOperators, BitVectors}
import org.bitbucket.franck44.scalasmt.typedterms.QuantifiedTerm

/**
 * Tests of bit vector term construction.
 */
class LLVMBitTermTests extends LLVMTermTests with ArrayExBV with ArrayExOperators with BitVectors with QuantifiedTerm {

    import au.edu.mq.comp.skink.ir.Trace
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BitVectorSort, SSymbol, Term}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BVTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import scala.language.implicitConversions

    def config = createAndInitConfig(Seq("-i", "bit"))
    val termBuilder = new LLVMTermBuilder(funAnalyser, namer, config)

    def makeVarTermBV(id : String, index : Int = 0) : VarTerm[BVTerm] =
        new VarTerm(id, BitVectorSort("32"), Some(index))

    def makeArrayTermBV(id : String, index : Int = 0) : TypedTerm[ArrayTerm[BVTerm], Term] =
        ArrayBV1(id, 32, 32).indexed(index)

    def makeArrayLoadTermBV(id : String, elem : Int, index : Int = 0) : TypedTerm[BVTerm, Term] =
        makeArrayTermBV(id, index).at(elem)

    def makeArrayStoreTermBV(id : String, from : TypedTerm[BVTerm, Term], elem : Int, index : Int = 0) : TypedTerm[ArrayTerm[BVTerm], Term] =
        makeArrayTermBV(id, index).store(elem, from)

    implicit def BVs32(i : Int) : TypedTerm[BVTerm, Term] =
        BVs(i, 32)

    val ix = makeVarTermBV("%x")
    val iy = makeVarTermBV("%y")
    val iz = makeVarTermBV("%z")

    val iy1 = makeVarTermBV("%y", 1)

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
            ix === ((by.ite(1.withUBits(1), 0.withUBits(1))) sext 31)
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
            ix === ((by.ite(1.withUBits(1), 0.withUBits(1))) zext 31)
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
            (bx.ite(1.withUBits(1), 0.withUBits(1))) === iy.extract(0, 0)
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

    test("integer array element load is encoded correctly") {
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
                True() & iy1 === makeArrayLoadTermBV("%x", 1, 1)
            )
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

    test("integer array element store is encoded correctly") {
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
                True() & makeArrayTermBV("%x", 2) === makeArrayStoreTermBV("%x", iy, 1, 1)
            )
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

    }

    // Global variable initialisation

    val gbx = makeVarTermB("@x")

    val gix = makeVarTermBV("@x")
    val giy = makeVarTermBV("@y")
    val giz = makeVarTermBV("@z")

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
        val i = BVs("i", 32)
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(1)), ZeroC()),
            forall(SSymbol("i")) {
                ArrayBV1("@z", 32, 1).indexed(0).at(i) === 0.withUBits(1)
            }
        )
    }

    test("a global zero initialised integer array variable generates the correct term") {
        val i = BVs("i", 32)
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(10, IntT(32)), ZeroC()),
            forall(SSymbol("i")) {
                ArrayBV1("@z", 32, 32).indexed(0).at(i) === 0
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
            (ArrayBV1("@z", 32, 32).indexed(0).at(0) === 10) &
                (ArrayBV1("@z", 32, 32).indexed(0).at(1) === 42)
        )
    }

    test("a global string initialised integer array variable generates the correct term") {
        hasItemEffect(
            makeGlobalInitVar("z", ArrayT(2, IntT(32)), StringC(""""Hi"""")),
            (ArrayBV1("@z", 32, 32).indexed(0).at(0) === 72) &
                (ArrayBV1("@z", 32, 32).indexed(0).at(1) === 105)
        )
    }

}
