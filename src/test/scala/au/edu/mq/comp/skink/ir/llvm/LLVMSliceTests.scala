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

class LLVMSliceTests extends LLVMTests {

    import au.edu.mq.comp.skink.ir.Trace
    import org.scalallvm.assembly.PrettyPrinter._

    def slicetest(prog : String, choices : Seq[Int], slice : Vector[String]) {
        val setup = setupProgram(prog)
        val blockTrace = setup.function.traceToBlockTrace(Trace(choices))
        val sliceTrace = setup.function.sliceTrace(blockTrace)
        sliceTrace.trace shouldBe Trace(choices)
        sliceTrace.blocks.map(show(_, 5)) shouldBe slice
    }

    test("single block slice") {
        slicetest(
            """
            define i32 @main() {
              a:
                %1 = alloca i32
                %2 = alloca i32
                %3 = icmp eq i32 %2, 0
                br i1 %3, label %b, label %c

              b:
                ret i32 0

              c:
                ret i32 1
            }
            """,
            Seq(0, 0),
            Vector(
                """
                |a:
                |  %2 = alloca i32
                |  %3 = icmp eq i32 %2, 0
                |  br i1 %3, label %b, label %c
                |""".stripMargin,
                """
                |b:
                |  ret i32 0
                |""".stripMargin
            )
        )
    }

    test("multiple block slice") {
        slicetest(
            """
            define i32 @main() {
              a:
                %1 = alloca i32
                %2 = alloca i32
                br label %b

              b:
                %3 = icmp eq i32 %2, 0
                br i1 %3, label %c, label %d

              c:
                ret i32 0

              d:
                ret i32 1
            }
            """,
            Seq(0, 0, 0),
            Vector(
                """
                |a:
                |  %2 = alloca i32
                |  br label %b
                |""".stripMargin,
                """
                |b:
                |  %3 = icmp eq i32 %2, 0
                |  br i1 %3, label %c, label %d
                |""".stripMargin,
                """
                |c:
                |  ret i32 0
                |""".stripMargin
            )
        )
    }

    test("phi slice") {
        slicetest(
            """
            define i32 @main() {
              a:
                %1 = alloca i32
                %2 = alloca i32
                br label %c

              b:
                br label %c

              c:
                %3 = phi i32 [%1, %a], [%2, %b]
                %4 = phi i32 [%2, %a], [%1, %b]
                br i1 %3, label %d, label %e

              d:
                ret i32 0

              e:
                ret i32 1
            }
            """,
            Seq(0, 0, 0),
            Vector(
                """
                |a:
                |  %1 = alloca i32
                |  br label %c
                |""".stripMargin,
                """
                |c:
                |  %3 = phi i32 [ %1, %a ], [ %2, %b ]
                |  br i1 %3, label %d, label %e
                |""".stripMargin,
                """
                |d:
                |  ret i32 0
                |""".stripMargin
            )
        )
    }

    test("assume slice") {
        slicetest(
            """
            define i32 @main() {
              a:
                %1 = alloca i32
                %2 = alloca i32
                %3 = icmp eq i32 %1, 0
                %4 = icmp eq i32 %2, 0
                %5 = call i32 bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32)*)(i32 %4)
                br i1 %3, label %b, label %c

              b:
                ret i32 0

              c:
                ret i32 1
            }
            """,
            Seq(0, 0),
            Vector(
                """
                |a:
                |  %1 = alloca i32
                |  %2 = alloca i32
                |  %3 = icmp eq i32 %1, 0
                |  %4 = icmp eq i32 %2, 0
                |  %5 = call i32 bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32)*)(i32 %4)
                |  br i1 %3, label %b, label %c
                |""".stripMargin,
                """
                |b:
                |  ret i32 0
                |""".stripMargin
            )
        )
    }

    test("direct memory slice") {
        slicetest(
            """
            define i32 @main() {
              a:
                %1 = alloca [10 x i32]
                %2 = load i32, i32* %1
                %3 = icmp eq i32 %2, 0
                br i1 %3, label %y, label %z

              y:
                ret i32 0

              z:
                ret i32 1
            }
            """,
            Seq(0, 0),
            Vector(
                """
                |a:
                |  %1 = alloca [10 x i32]
                |  %2 = load i32, i32* %1
                |  %3 = icmp eq i32 %2, 0
                |  br i1 %3, label %y, label %z
                |""".stripMargin,
                """
                |y:
                |  ret i32 0
                |""".stripMargin
            )
        )
    }

    test("indirect memory slice") {
        slicetest(
            """
            define i32 @main() {
              a:
                %1 = alloca [10 x i32]
                %2 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 3
                store i32 42, i32* %2

                %3 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 2
                store i32 99, i32* %3

                %4 = alloca [10 x i32]
                %5 = getelementptr [10 x i32], [10 x i32]* %4, i32 0, i32 4
                store i32 111, i32* %5

                %6 = load i32, i32* %1
                %7 = icmp eq i32 %6, 0
                br i1 %7, label %y, label %z

              y:
                ret i32 0

              z:
                ret i32 1
            }
            """,
            Seq(0, 0),
            Vector(
                """
                |a:
                |  %1 = alloca [10 x i32]
                |  %2 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 3
                |  store i32 42, i32* %2
                |  %3 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 2
                |  store i32 99, i32* %3
                |  %6 = load i32, i32* %1
                |  %7 = icmp eq i32 %6, 0
                |  br i1 %7, label %y, label %z
                |""".stripMargin,
                """
                |y:
                |  ret i32 0
                |""".stripMargin
            )
        )
    }

}
