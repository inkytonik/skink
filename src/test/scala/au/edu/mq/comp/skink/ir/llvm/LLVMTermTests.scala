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

import org.bitbucket.inkytonik.kiama.util.Tests

/**
 * Tests of term construction in both bit and math mode.
 */
class LLVMTermTests extends Tests {

    import au.edu.mq.comp.skink.{Main, SkinkConfig}
    import au.edu.mq.comp.skink.verifier.SMTLIB2Interpolators._
    import au.edu.mq.comp.skink.ir.llvm.LLVMInterpolators._
    import au.edu.mq.comp.skink.ir.Trace
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.show
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{Positions, StringSource}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.{Analyser, Assembly}
    import org.scalatest.matchers.{Matcher, MatchResult}

    // Dummy setup to give insn and value-level term tests some context
    // Can't be used to test indexing, traces, etc.

    val config = Main.createConfig(Seq())
    config.verify()

    val namer = new DummyNamer
    val helper = new LLVMHelper(config)

    val (program, func) = parseProgram("define i32 @main() { ret i32 0 }", config)
    val funtree = new Tree[ASTNode, FunctionDefinition](func.function)
    val funanalyser = new Analyser(funtree)

    val bitTermBuilder = new LLVMBitTermBuilder(program, funanalyser, namer, helper, config)
    val mathTermBuilder = new LLVMMathTermBuilder(program, funanalyser, namer, helper, config)

    // Test parameters

    val intSizes = Vector(8, 16, 32, 64)

    val floatTypes =
        Vector(
            ("float", 8, 24),
            ("double", 11, 53)
        )

    // Simple values

    val booleanValues =
        Vector(
            ("0", "false"),
            ("1", "true"),
            ("%x", "%x@0"),
            ("@x", "@x@0")
        )

    for ((value, term) <- booleanValues) {
        valueTermTestB(value, term)
    }

    for (bits <- intSizes) {
        val max = (BigInt(1) << (bits - 1)) - 1
        val min = -max - 1
        val midpos = max / 2
        val midneg = -midpos

        val integerValues =
            Vector(
                ("0", s"(_ bv0 $bits)", "0"),
                ("1", s"(_ bv1 $bits)", "1"),
                (s"$min", s"""#b1${"0" * (bits - 1)}""", s"(- ${-min})"),
                (s"$midpos", s"(_ bv${midpos} $bits)", s"$midpos"),
                (s"$midneg", s"(bvneg (_ bv${-midneg} $bits))", s"(- ${-midneg})"),
                (s"$max", s"(_ bv${max} $bits)", s"$max"),
                ("%x", "%x@0", "%x@0"),
                ("@x", "@x@0", "@x@0")
            )

        for ((value, bitTerm, mathTerm) <- integerValues) {
            valueTermTestI(value, bits, bitTerm, mathTerm)
        }
    }

    for ((tipe, exp, sig) <- floatTypes) {
        val floatValues =
            Vector(
                ("0.0", s"(_ +zero $exp $sig)", "0.0"),
                ("-0.0", s"(_ -zero $exp $sig)", "0.0"),
                ("1.5", s"((_ to_fp $exp $sig) RNE 1.5)", "1.5"),
                ("-1.5", s"((_ to_fp $exp $sig) RNE (- 1.5))", "(- 1.5)"),
                ("%x", "%x@0", "%x@0"),
                ("@x", "@x@0", "@x@0")
            )

        for ((value, bitTerm, mathTerm) <- floatValues) {
            valueTermTestR(value, exp, sig, bitTerm, mathTerm)
        }
    }

    {
        val max = Float.MaxValue
        val minpos = Float.MinPositiveValue
        val maxneg = -minpos
        val min = Float.MinValue

        val floatValues =
            Vector(
                (f"$min%f", f"((_ to_fp 8 24) RNE (- ${-min}%.1f))", f"(- ${-min}%.1f)"),
                (f"$maxneg%.60f", f"((_ to_fp 8 24) RNE (- ${-maxneg}%.60f))", f"(- ${-maxneg}%.60f)"),
                (f"$minpos%.60f", f"((_ to_fp 8 24) RNE $minpos%.60f)", f"$minpos%.60f"),
                (f"$max%f", f"((_ to_fp 8 24) RNE $max%.1f)", f"$max%.1f")
            )

        for ((value, bitTerm, mathTerm) <- floatValues) {
            valueTermTestR(value, 8, 24, bitTerm, mathTerm)
        }
    }

    {
        val max = Double.MaxValue
        val minpos = Double.MinPositiveValue
        val maxneg = -minpos
        val min = Double.MinValue

        val doubleValues =
            Vector(
                (f"$min%f", f"((_ to_fp 11 53) RNE (- ${-min}%.1f))", f"(- ${-min}%.1f)"),
                (f"$maxneg%.325f", f"((_ to_fp 11 53) RNE (- ${-maxneg}%.325f))", f"(- ${-maxneg}%.325f)"),
                (f"$minpos%.325f", f"((_ to_fp 11 53) RNE $minpos%.325f)", f"$minpos%.325f"),
                (f"$max%f", f"((_ to_fp 11 53) RNE $max%.1f)", f"$max%.1f")
            )

        for ((value, bitTerm, mathTerm) <- doubleValues) {
            valueTermTestR(value, 11, 53, bitTerm, mathTerm)
        }
    }

    // Boolean operations

    val booleanBinaryOps = Vector("and", "or", "xor")

    for (op <- booleanBinaryOps) {
        insnTermTest(s"%z = $op i1 %x, %y", s"(= %z@0 ($op %x@0 %y@0))")
    }

    // Integer operations

    val integerBinaryOps =
        Vector(
            ("add", "+", Vector("", "nuw", "nsw", "nuw nsw")),
            ("mul", "*", Vector("", "nuw", "nsw", "nuw nsw")),
            ("sub", "-", Vector("", "nuw", "nsw", "nuw nsw")),
            ("sdiv", "div", Vector("", "exact")),
            ("udiv", "div", Vector("", "exact")),
            ("srem", "mod", Vector("")),
            ("urem", "mod", Vector("")),
            ("and", "", Vector("")),
            ("ashr", "", Vector("", "exact")),
            ("lshr", "", Vector("", "exact")),
            ("or", "", Vector("")),
            ("shl", "", Vector("", "nuw", "nsw", "nuw nsw"))
        )

    for (bits <- intSizes) {
        for ((lop, sopm, flags) <- integerBinaryOps) {
            val sopb = s"bv$lop"
            for (flag <- flags) {
                val i = s"%z = $lop $flag i$bits %x, %y"
                test(s"$i (bit)") {
                    hasBitInsnTerm(i, s"(= %z@0 ($sopb %x@0 %y@0))")
                }
                if (sopm != "")
                    test(s"$i (math)") {
                        hasMathInsnTerm(i, s"(= %z@0 ($sopm %x@0 %y@0))")
                    }
            }
            val i = s"$lop (i$bits 1, i$bits 2)"
            test(s"$i (bit)") {
                hasBitValueTermI(i, bits, s"($sopb (_ bv1 $bits) (_ bv2 $bits))")
            }
            if (sopm != "")
                test(s"$i (math)") {
                    hasMathValueTermI(i, bits, s"($sopm 1 2)")
                }
        }
    }

    // Integer operations that are limited in math mode

    for (bits <- intSizes) {
        for (num <- Vector(7, 15, 31)) {
            val i = s"%z = and i$bits %x, $num"
            test(s"$i (math)") {
                hasMathInsnTerm(i, s"(= %z@0 (mod %x@0 ${num + 1}))")
            }
        }
        val i = s"%z = or i$bits %x, 1"
        test(s"$i (math)") {
            hasMathInsnTerm(i, "(= %z@0 (ite (= (mod %x@0 2) 0) (+ %x@0 1) %x@0))")
        }
        val j = s"%z = xor i$bits %x, -1"
        test(s"$j (math)") {
            hasMathInsnTerm(j, "(= %z@0 (- (* %x@0 (- 1)) 1))")
        }
        for (num <- Vector(1, 4, 7)) {
            val i = s"%z = ashr i$bits %x, $num"
            test(s"$i (math)") {
                hasMathInsnTerm(i, s"(= %z@0 (div %x@0 ${pow2(num)}))")
            }
        }
        for (num <- Vector(2, 5, 7)) {
            val i = s"%z = shl i$bits %x, $num"
            test(s"$i (math)") {
                hasMathInsnTerm(i, s"(= %z@0 (* %x@0 ${pow2(num)}))")
            }
        }
    }

    // Floating-point operations

    val floatBinaryOps =
        Vector(
            ("fadd", "fp.add", "+"),
            ("fdiv", "fp.div", "/"),
            ("fmul", "fp.mul", "*"),
            ("fsub", "fp.sub", "-")
        )

    val fpargx = mkFloatArg("%x@0")
    val fpargy = mkFloatArg("%y@0")

    for ((tipe, exp, sig) <- floatTypes) {
        for ((lop, sopb, sopm) <- floatBinaryOps) {
            insnTermTest(
                s"%z = $lop $tipe %x, %y",
                s"(= %z@0 ((_ to_fp $exp $sig) @_fprmode@0 ($sopb @_fprmode@0 $fpargx $fpargy)))",
                s"(= %z@0 ($sopm %x@0 %y@0))"
            )

            val arg1 = 1.5
            val arg2 = 3.5
            val fpbvarg1 = mkFloatArg(s"((_ to_fp $exp $sig) RNE $arg1)")
            val fpbvarg2 = mkFloatArg(s"((_ to_fp $exp $sig) RNE $arg2)")
            valueTermTestR(
                s"$lop ($tipe $arg1, $tipe $arg2)",
                exp, sig,
                s"((_ to_fp $exp $sig) @_fprmode@0 ($sopb @_fprmode@0 $fpbvarg1 $fpbvarg2)))",
                s"($sopm $arg1 $arg2)"
            )
        }
    }

    // Integer comparison

    val integerConds =
        Vector(
            ("eq", "=", "="),
            ("sgt", "bvsgt", ">"),
            ("sge", "bvsge", ">="),
            ("slt", "bvslt", "<"),
            ("sle", "bvsle", "<="),
            ("ugt", "bvugt", ">"),
            ("uge", "bvuge", ">="),
            ("ult", "bvult", "<"),
            ("ule", "bvule", "<=")
        )

    for (bits <- intSizes) {
        for ((lop, sopb, sopm) <- integerConds) {
            insnTermTest(
                s"%z = icmp $lop i$bits %x, %y",
                s"(= %z@0 ($sopb %x@0 %y@0)))",
                s"(= %z@0 ($sopm %x@0 %y@0)))"
            )
            valueTermTestB(
                s"icmp $lop (i$bits 1, i$bits 2)",
                s"($sopb (_ bv1 $bits) (_ bv2 $bits))",
                s"($sopm 1 2)"
            )
        }
        insnTermTest(s"%z = icmp ne i$bits %x, %y", "(= %z@0 (not (= %x@0 %y@0)))")
    }

    // Floating-ppint comparison

    val floatConds =
        Vector(
            ("oeq", "fp.eq", "="),
            ("ogt", "fp.gt", ">"),
            ("oge", "fp.geq", ">="),
            ("olt", "fp.lt", "<"),
            ("ole", "fp.leq", "<=")
        // FIXME: add unordered in bit mode only
        )

    for ((tipe, exp, sig) <- floatTypes) {
        for ((lop, sopb, sopm) <- floatConds) {
            insnTermTest(
                s"%z = fcmp $lop $tipe %x, %y",
                s"(= %z@0 (and (not (or (fp.isNaN $fpargx) (fp.isNaN $fpargy))) ($sopb $fpargx $fpargy))))",
                s"(= %z@0 ($sopm %x@0 %y@0)))"
            )

            val j = s"fcmp $lop ($tipe 1.5, $tipe 3.5)"
            // val fplitarg1 = mkFloatArg(s"((_ to_fp $exp $sig) RNE 1.5)")
            // val fplitarg2 = mkFloatArg(s"((_ to_fp $exp $sig) RNE 3.5)")
            // test(s"$j (bit)") {
            //     hasBitValueTermB(j, s"((_ to_fp $exp $sig) @_fprmode@0 ($sopb @_fprmode@0 $fplitarg1 $fplitarg2)))")
            // }
            test(s"$j (math)") {
                hasMathValueTermB(j, s"($sopm 1.5 3.5)")
            }
        }
        val i = s"%z = fcmp one $tipe %x, %y"
        // test(s"$i (bit)") {
        //     hasBitInsnTerm(i, "(= %z@0 (not (= %x@0 %y@0)))")
        // }
        test(s"$i (math)") {
            hasMathInsnTerm(i, "(= %z@0 (not (= %x@0 %y@0)))")
        }

        insnTermTest(s"%z = fcmp true $tipe %x, %y", "(= %z@0 true)")
        insnTermTest(s"%z = fcmp false $tipe %x, %y", "(= %z@0 false)")

        val l = s"%z = fcmp ord $tipe %x, %y"
        // test(s"$l (bit)") {
        //     hasBitInsnTerm(l, "(= %z@0 true)")
        // }
        test(s"$l (math)") {
            hasMathInsnTerm(l, "(= %z@0 true)")
        }
    }

    // Conversions

    for (bits1 <- intSizes) {
        for (bits2 <- intSizes) {
            if (bits1 < bits2) {
                val i = s"%x = sext i$bits1 %y to i$bits2"
                test(s"$i (bit)") {
                    hasBitInsnTerm(i, s"(= %x@0 ((_ sign_extend ${bits2 - bits1}) %y@0))")
                }
                test(s"$i (math)") {
                    hasMathInsnTerm(i, s"(= %x@0 %y@0)")
                }

                val j = s"%x = zext i$bits1 %y to i$bits2"
                test(s"$j (bit)") {
                    hasBitInsnTerm(j, s"(= %x@0 ((_ zero_extend ${bits2 - bits1}) %y@0))")
                }
                test(s"$j (math)") {
                    hasMathInsnTerm(j, s"(= %x@0 %y@0)")
                }

                val k = s"%x = trunc i$bits2 %y to i$bits1"
                test(s"$k (bit)") {
                    hasBitInsnTerm(k, s"(= %x@0 ((_ extract ${bits1 - 1} 0) %y@0))")
                }
                test(s"$k (math)") {
                    hasMathInsnTerm(k, s"(= %x@0 %y@0)")
                }
            }
        }
    }

    for ((tipe1, exp1, sig1) <- floatTypes) {
        for ((tipe2, exp2, sig2) <- floatTypes) {
            if (exp1 + sig1 > exp2 + sig2) {
                val i = s"%x = fptrunc $tipe1 %y to $tipe2"
                test(s"$i (bit)") {
                    hasBitInsnTerm(i, s"(= %x@0 ((_ to_fp $exp2 $sig2) @_fprmode@0 %y@0))")
                }
                test(s"$i (math)") {
                    hasMathInsnTerm(i, s"(= %x@0 %y@0)")
                }

                val j = s"%x = fpext $tipe2 %y to $tipe1"
                test(s"$j (bit)") {
                    hasBitInsnTerm(j, s"(= %x@0 ((_ to_fp $exp1 $sig1) @_fprmode@0 %y@0))")
                }
                test(s"$j (math)") {
                    hasMathInsnTerm(j, s"(= %x@0 %y@0)")
                }
            }
        }
    }

    for (bits <- intSizes) {
        for ((tipe, exp, sig) <- floatTypes) {
            if (bits == exp + sig) {
                insnTermTest(
                    s"%x = bitcast i$bits %y to $tipe",
                    s"(= %x@0 ((_ to_fp $exp $sig) %y@0))",
                    "(= %x@0 %y@0)"
                )
                insnTermTest(
                    s"%x = bitcast $tipe %y to i$bits",
                    s"(and (= %y@0 (fp %x$$p@0 %x$$e@0 %x$$s@0)) (= %x@0 (concat %x$$p@0 (concat %x$$e@0 %x$$s@0))))",
                    "(= %x@0 %y@0)"
                )
            }

            val i = s"%x = fptosi $tipe %y to i$bits"
            test(s"$i (bit)") {
                hasBitInsnTerm(i, s"(= %x@0 ((_ fp.to_sbv $bits) RTZ %y@0))")
            }
            // test(s"$i (math)") {
            //     hasMathInsnTerm(i, s"(= %x@0 (to_int %y@0))")
            // }

            val j = s"%x = fptoui $tipe %y to i$bits"
            test(s"$j (bit)") {
                hasBitInsnTerm(j, s"(= %x@0 ((_ fp.to_ubv $bits) RTZ %y@0))")
            }
            // test(s"$j (math)") {
            //     hasMathInsnTerm(j, s"(= %x@0 (to_int %y@0))")
            // }

            val k = s"%x = sitofp i$bits %y to $tipe"
            test(s"$k (bit)") {
                hasBitInsnTerm(k, s"(= %x@0 ((_ to_fp $exp $sig) @_fprmode@0 %y@0))")
            }
            // test(s"$k (math)") {
            //     hasMathInsnTerm(k, s"(= %x@0 (to_real %y@0))")
            // }

            val l = s"%x = uitofp i$bits %y to $tipe"
            test(s"$l (bit)") {
                hasBitInsnTerm(l, s"(= %x@0 ((_ to_fp_unsigned $exp $sig) @_fprmode@0 %y@0))")
            }
            // test(s"$l (math)") {
            //     hasMathInsnTerm(l, s"(= %x@0 (to_real %y@0))")
            // }
        }
    }

    /*
    // Loads

    for (bits <- 1 +: intSizes) {
        val i = s"%x = load i$bits, i$bits* %y"
        test(s"$i (bit)") {
            hasBitInsnTerm(i, term"(= %x@0 %y@0)")
        }
        test(s"$i (math)") {
            hasMathInsnTerm(i, term"(= %x@0 %y@0)")
        }
    }

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
*/

    // Phi instructions

    {
        val aBlock = block"a: ret void"
        val bBlock = block"b: ret void"
        val cBlock = block"c: ret void"

        for (bits <- intSizes) {
            val i = s"%x = phi i$bits [0, %a], [1, %b]"
            phiInsnTermTest(i, Some(aBlock), s"(= %x@0 (_ bv0 $bits))", "(= %x@0 0)")
            phiInsnTermTest(i, Some(bBlock), s"(= %x@0 (_ bv1 $bits))", "(= %x@0 1)")

            val j = s"phi i$bits [0, %a], [1, %b]"
            phiInsnTermTest(j, Some(aBlock), "true")
            phiInsnTermTest(j, Some(bBlock), "true")

            test(s"a i$bits phi insn with no previous block is an error (bit)") {
                val e = intercept[RuntimeException] {
                    hasBitPhiInsnTerm(i, None, "true")
                }
                e.getMessage shouldBe s"phiInsnTerm: found %x = phi i$bits [ 0, %a ], [ 1, %b ] but have no previous block"
            }
            test(s"a i$bits phi insn with no previous block is an error (math)") {
                val e = intercept[RuntimeException] {
                    hasMathPhiInsnTerm(i, None, "true")
                }
                e.getMessage shouldBe s"phiInsnTerm: found %x = phi i$bits [ 0, %a ], [ 1, %b ] but have no previous block"
            }
            test(s"a i$bits phi insn with a bogus previous block is an error (bit)") {
                val e = intercept[RuntimeException] {
                    hasBitPhiInsnTerm(i, Some(cBlock), "true")
                }
                e.getMessage shouldBe s"phiInsnTerm: can't find %c in %x = phi i$bits [ 0, %a ], [ 1, %b ]"
            }
            test(s"a i$bits phi insn with a bogus previous block is an error (math)") {
                val e = intercept[RuntimeException] {
                    hasMathPhiInsnTerm(i, Some(cBlock), "true")
                }
                e.getMessage shouldBe s"phiInsnTerm: can't find %c in %x = phi i$bits [ 0, %a ], [ 1, %b ]"
            }
        }

        for ((tipe, exp, sig) <- floatTypes) {
            val i = s"%x = phi $tipe [0.5, %a], [1.25, %b]"
            phiInsnTermTest(
                i,
                Some(aBlock),
                s"(= %x@0 ((_ to_fp $exp $sig) RNE 0.5))",
                "(= %x@0 0.5)"
            )
            phiInsnTermTest(
                i,
                Some(bBlock),
                s"(= %x@0 ((_ to_fp $exp $sig) RNE 1.25))",
                "(= %x@0 1.25)"
            )
        }

        traceTermsTest(
            "multiple phi instructions are encoded to run in paralell",
            """define void @func() {
                   0:
                       br label %1

                   1:
                       %x = phi i32 [ 0, %0 ], [ %y, %1 ]
                       %y = phi i32 [ 1, %0 ], [ %x, %1 ]
                       br label %1
               }""",
            Seq(0, 0, 0),
            Vector(
                "(= @_fprmode@0 RNE)",
                "(and (= %x@1 (_ bv0 32)) (= %y@1 (_ bv1 32)))",
                "(and (= %x@2 %y@1) (= %y@2 %x@1))"
            ),
            Vector(
                "true",
                "(and (= %x@1 0) (= %y@1 1))",
                "(and (= %x@2 %y@1) (= %y@2 %x@1))"
            )
        )
    }

    // Terminator instructions

    {
        def testBadChoices(i : String, choices : Seq[Int]) {
            for (choice <- choices) {
                test(s"$i (choice $choice) (bit)") {
                    val e = intercept[RuntimeException] {
                        hasBitExitTerm(i, choice, "true")
                    }
                    e.getMessage shouldBe s"exitTerm: can't handle choice $choice of $i"
                }
                test(s"$i (choice $choice) (math)") {
                    val e = intercept[RuntimeException] {
                        hasMathExitTerm(i, choice, "true")
                    }
                    e.getMessage shouldBe s"exitTerm: can't handle choice $choice of $i"
                }
            }
        }

        val i = "br label %a"
        exitTermTest(i, 0, "true")
        testBadChoices(i, List(-1, 1))

        val j = "br i1 %x, label %a, label %b"
        exitTermTest(j, 0, "%x@0")
        exitTermTest(j, 1, "(not %x@0)")
        testBadChoices(j, List(-1, 2))

        val l = "ret void"
        exitTermTest(l, 0, "true")
        testBadChoices(l, List(-1, 1))

        for (bits <- intSizes) {
            val i = s"ret i$bits 0"
            exitTermTest(i, 0, "true")
            testBadChoices(i, List(-1, 1))

            val j = s"switch i$bits %x, label %a [ i$bits 0, label %b i$bits 1, label %c ]"
            exitTermTest(j, 0, s"(= %x@0 (_ bv0 $bits))", "(= %x@0 0)")
            exitTermTest(j, 1, s"(= %x@0 (_ bv1 $bits))", "(= %x@0 1)")
            exitTermTest(j, 2,
                s"(and (not (= %x@0 (_ bv0 $bits))) (not (= %x@0 (_ bv1 $bits))))",
                "(and (not (= %x@0 0)) (not (= %x@0 1)))")
            testBadChoices(j, List(-1, 3))
        }
    }

    // Global variable initialisation

    {
        val i = "@x = global i1"
        itemTermTest(i, "true")

        val j = "@x = global i1 zero"
        itemTermTest(j, "true")

        val k = "@x = global i1 1"
        test(s"$k (math)") {
            hasMathItemTerm(k, "(= @x@0 true)")
        }

        val l = "@x = global i1 0"
        test(s"$l (math)") {
            hasMathItemTerm(l, "(= @x@0 false)")
        }

        for (bits <- intSizes) {
            val i = s"@x = global i$bits"
            itemTermTest(i, "true")

            val j = s"@x = global i$bits 42"
            test(s"$j (math)") {
                hasMathItemTerm(j, "(= @x@0 42)")
            }
        }

        for ((tipe, exp, sig) <- floatTypes) {
            val i = s"@x = global $tipe"
            itemTermTest(i, "true")

            val j = s"@x = global $tipe 1.5"
            test(s"$j (math)") {
                hasMathItemTerm(j, "(= @x@0 1.5)")
            }
        }
    }

    {
        for (bits <- 1 +: intSizes) {
            val i = s"@x = global [10 x i$bits]"
            itemTermTest(i, "true")

            val j = s"@x = global [10 x i$bits] zero"
            itemTermTest(j, "true")
        }
    }

    /*
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
*/

    /*
    // getelementptr

    {
        val p =
            """define void @func() {
                   0:
                       %a = alloca [5 x i32], align 16
                       %x = getelementptr inbounds i32, i32* %a, i32 4
                       %y = getelementptr inbounds i32, i32* %a, i32 0, i32 8
                       ret void
               }"""

        test("getelementptrs for indexing single-dimension array has no effect (math)") {
            hasMathTraceTerms(p, Seq(0), Vector("true"))
        }

        val q =
            """define void @func() {
                      0:
                          %a = alloca [5 x i32], align 16
                          %x = getelementptr inbounds i32, i32* %a, i32 4, i32 8
                          ret void
               }"""

        test("getelementptr with multiple indexes is not supported (math)") {
            val e = intercept[RuntimeException] {
                hasMathTraceTerms(q, Seq(0), Vector("true"))
            }
            e.getMessage shouldBe s"insnTerm: unsupported getelementptr insn %x = getelementptr inbounds i32, i32* %a, i32 4, i32 8"
        }

    }
*/

    // Library calls

    val fabss = Vector("fabs", "fabsf", "fabsl")

    for ((tipe, exp, sig) <- floatTypes) {
        for (fabs <- fabss) {
            insnTermTest(
                s"%x = call $tipe @$fabs ($tipe %y)",
                "(= %x@0 (fp.abs %y@0))",
                "(= %x@0 (abs %y@0))"
            )
        }
        insnTermTest(
            s"%x = call $tipe @llvm.fabs.f${exp + sig} ($tipe %y)",
            "(= %x@0 (fp.abs %y@0))",
            "(= %x@0 (abs %y@0))"
        )
    }

    val assumes = Vector("assume", "__VERIFIER_assume", "pagai.invariant")

    for (assume <- assumes) {
        insnTermTest(s"call void @$assume (i1 %x)", "%x@0")
        for (bits <- intSizes) {
            insnTermTest(
                s"call void @$assume (i$bits %x)",
                s"(not (= %x@0 (_ bv0 $bits)))",
                "(not (= %x@0 0))"
            )
        }
    }

    val fmins = Vector("fmin", "fminf", "fminl")

    for ((tipe, exp, sig) <- floatTypes) {
        for (fmin <- fmins) {
            insnTermTest(
                s"%x = call $tipe @$fmin ($tipe %y, $tipe %z)",
                "(= %x@0 (fp.min %y@0 %z@0))",
                "(= %x@0 (ite (<= %y@0 %z@0) %y@0 %z@0))"
            )
        }
        insnTermTest(
            s"%x = call $tipe @llvm.minnum.f${exp + sig} ($tipe %y, $tipe %z)",
            "(= %x@0 (fp.min %y@0 %z@0))",
            "(= %x@0 (ite (<= %y@0 %z@0) %y@0 %z@0))"
        )
    }

    val fmaxs = Vector("fmax", "fmaxf", "fmaxl")

    for ((tipe, exp, sig) <- floatTypes) {
        for (fmax <- fmaxs) {
            insnTermTest(
                s"%x = call $tipe @$fmax ($tipe %y, $tipe %z)",
                "(= %x@0 (fp.max %y@0 %z@0))",
                "(= %x@0 (ite (>= %y@0 %z@0) %y@0 %z@0))"
            )
        }
        insnTermTest(
            s"%x = call $tipe @llvm.maxnum.f${exp + sig} ($tipe %y, $tipe %z)",
            "(= %x@0 (fp.max %y@0 %z@0))",
            "(= %x@0 (ite (>= %y@0 %z@0) %y@0 %z@0))"
        )
    }

    for (bits <- intSizes) {
        val i = s"%x = call i$bits* @malloc (i32 42)"
        test(s"$i (math)") {
            hasMathInsnTerm(i, "(not (= %x@0 0))")
        }
    }

    // Matchers

    class SameTermMatcher(right : Term) extends Matcher[Term] {

        def apply(left : Term) = {
            val leftStr = show(left)
            val rightStr = show(right)
            MatchResult(
                left == right,
                s"$leftStr was not the same term as $rightStr",
                s"$leftStr was the same term as $rightStr"
            )
        }

    }

    class SameTermsMatcher(right : Seq[Term]) extends Matcher[Seq[Term]] {

        def showTerms(terms : Seq[Term]) : String =
            terms.map(show(_)).mkString(", ")

        def apply(left : Seq[Term]) = {
            val leftStr = showTerms(left)
            val rightStr = showTerms(right)
            MatchResult(
                left == right,
                s"$leftStr was not the same term as $rightStr",
                s"$leftStr was the same term as $rightStr"
            )
        }

    }

    def beSameTermAs(right : Term) = new SameTermMatcher(right)
    def beSameTermsAs(right : Seq[Term]) = new SameTermsMatcher(right)

    // Test builders

    def exitTermTest(insn : String, choice : Int, term : String) {
        exitTermTest(insn, choice, term, term)
    }

    def exitTermTest(insn : String, choice : Int, bitTerm : String, mathTerm : String) {
        test(s"$insn (choice $choice) (bit)") {
            hasBitExitTerm(insn, choice, bitTerm)
        }
        test(s"$insn (choice $choice) (math)") {
            hasMathExitTerm(insn, choice, mathTerm)
        }
    }

    def insnTermTest(insn : String, term : String) {
        insnTermTest(insn, term, term)
    }

    def insnTermTest(insn : String, bitTerm : String, mathTerm : String) {
        test(s"$insn (bit)") {
            hasBitInsnTerm(insn, bitTerm)
        }
        test(s"$insn (math)") {
            hasMathInsnTerm(insn, mathTerm)
        }
    }

    def itemTermTest(item : String, term : String) {
        test(s"$item (bit)") {
            hasBitItemTerm(item, term)
        }
        test(s"$item (math)") {
            hasMathItemTerm(item, term)
        }
    }

    def phiInsnTermTest(insn : String, optPrevBlock : Option[Block], term : String) {
        phiInsnTermTest(insn, optPrevBlock, term, term)
    }

    def phiInsnTermTest(insn : String, optPrevBlock : Option[Block], bitTerm : String, mathTerm : String) {
        val pred =
            optPrevBlock match {
                case Some(block) => s"from %${funanalyser.blockName(block)}"
                case None        => "none"
            }
        test(s"$insn ($pred) (bit)") {
            hasBitPhiInsnTerm(insn, optPrevBlock, bitTerm)
        }
        test(s"$insn ($pred) (math)") {
            hasMathPhiInsnTerm(insn, optPrevBlock, mathTerm)
        }
    }

    def traceTermsTest(label : String, program : String, choices : Seq[Int], bitTerms : Seq[String], mathTerms : Seq[String]) {
        test(s"$label (bit)") {
            hasBitTraceTerms(program, choices, bitTerms)
        }
        test(s"$label (math)") {
            hasMathTraceTerms(program, choices, mathTerms)
        }
    }

    def valueTermTestB(insn : String, value : String) {
        valueTermTestB(insn, value, value)
    }

    def valueTermTestB(value : String, bitTerm : String, mathTerm : String) {
        test(s"$value (bit)") {
            hasBitValueTermB(value, bitTerm)
        }
        test(s"$value (math)") {
            hasMathValueTermB(value, mathTerm)
        }
    }

    def valueTermTestI(value : String, bits : Int, bitTerm : String, mathTerm : String) {
        test(s"$value i$bits (bit)") {
            hasBitValueTermI(value, bits, bitTerm)
        }
        test(s"$value i$bits (math)") {
            hasMathValueTermI(value, bits, mathTerm)
        }
    }

    def valueTermTestR(value : String, exp : Int, sig : Int, bitTerm : String, mathTerm : String) {
        test(s"$value ($exp, $sig) (bit)") {
            hasBitValueTermR(value, exp, sig, bitTerm)
        }
        test(s"$value ($exp, $sig) (math)") {
            hasMathValueTermR(value, exp, sig, mathTerm)
        }
    }

    // Checkers

    val noMetadata = Metadata(Vector())

    def hasBitInsnTerm(insn : String, term : String) {
        bitTermBuilder.insnTerm(MetaInstruction(insn"$insn", noMetadata)).termDef should beSameTermAs(term"$term")
    }

    def hasMathInsnTerm(insn : String, term : String) {
        mathTermBuilder.insnTerm(MetaInstruction(insn"$insn", noMetadata)).termDef should beSameTermAs(term"$term")
    }

    def hasBitValueTermB(value : String, term : String) {
        bitTermBuilder.vtermB(value"$value").termDef should beSameTermAs(term"$term")
    }

    def hasMathValueTermB(value : String, term : String) {
        mathTermBuilder.vtermB(value"$value").termDef should beSameTermAs(term"$term")
    }

    def hasBitValueTermI(value : String, bits : Int, term : String) {
        bitTermBuilder.vtermI(value"$value", bits).termDef should beSameTermAs(term"$term")
    }

    def hasMathValueTermI(value : String, bits : Int, term : String) {
        mathTermBuilder.vtermI(value"$value", bits).termDef should beSameTermAs(term"$term")
    }

    def hasBitValueTermR(value : String, exp : Int, sig : Int, term : String) {
        bitTermBuilder.vtermR(value"$value", exp + sig).termDef should beSameTermAs(term"$term")
    }

    def hasMathValueTermR(value : String, exp : Int, sig : Int, term : String) {
        mathTermBuilder.vtermR(value"$value", exp + sig).termDef should beSameTermAs(term"$term")
    }

    def hasBitPhiInsnTerm(insn : String, optPrevBlock : Option[Block], term : String) {
        bitTermBuilder.phiInsnTerm(MetaPhiInstruction(phiInsn"$insn", noMetadata), optPrevBlock).termDef should beSameTermAs(term"$term")
    }

    def hasMathPhiInsnTerm(insn : String, optPrevBlock : Option[Block], term : String) {
        mathTermBuilder.phiInsnTerm(MetaPhiInstruction(phiInsn"$insn", noMetadata), optPrevBlock).termDef should beSameTermAs(term"$term")
    }

    def hasBitExitTerm(insn : String, choice : Int, term : String) {
        bitTermBuilder.exitTerm(MetaTerminatorInstruction(termInsn"$insn", noMetadata), choice).termDef should beSameTermAs(term"$term")
    }

    def hasMathExitTerm(insn : String, choice : Int, term : String) {
        mathTermBuilder.exitTerm(MetaTerminatorInstruction(termInsn"$insn", noMetadata), choice).termDef should beSameTermAs(term"$term")
    }

    def hasBitItemTerm(item : String, term : String) {
        bitTermBuilder.itemTerm(item"$item").termDef should beSameTermAs(term"$term")
    }

    def hasMathItemTerm(item : String, term : String) {
        mathTermBuilder.itemTerm(item"$item").termDef should beSameTermAs(term"$term")
    }

    def hasTraceTerms(program : String, trace : Trace, terms : Seq[String], args : Array[String]) = {
        val prog = prog"$program"
        prog.items match {
            case Vector(funcdef : FunctionDefinition) =>
                Main.createAndInitConfig(args) match {
                    case Left(message) =>
                        fail(s"hasTraceTerms: $message")
                    case Right(config) =>
                        val ts = terms.map(t => term"$t")
                        val function = new LLVMFunction(prog, funcdef, config)
                        function.traceToTerms(trace).map(_._1.termDef) should beSameTermsAs(ts)
                }
            case _ =>
                fail(s"hasTraceTerms: expected a single function")
        }
    }

    def hasBitTraceTerms(program : String, choices : Seq[Int], terms : Seq[String]) =
        hasTraceTerms(program, Trace(choices), terms, Array("-n", "bit"))

    def hasMathTraceTerms(program : String, choices : Seq[Int], terms : Seq[String]) =
        hasTraceTerms(program, Trace(choices), terms, Array("-n", "math"))

    // Utilities

    def parseProgram(prog : String, config : SkinkConfig) : (Program, LLVMFunction) = {
        val positions = new Positions
        val source = new StringSource(prog)
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val prog = p.value(pr).asInstanceOf[Program]
            val funs = prog.items.collect {
                case func : FunctionDefinition =>
                    new LLVMFunction(prog, func, config)
            }
            if (funs.length != 1)
                fail(s"parseProgram: expected exactly one function, got ${funs.length}")
            (prog, funs(0))
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

    def mkFloatArg(v : String) =
        s"((_ to_fp 11 53) @_fprmode@0 $v)"

    def pow2(num : Int) : Int =
        math.pow(2, num).toInt

}
