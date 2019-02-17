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

package au.edu.mq.comp.skink

import org.scalatest.{FunSuiteLike, Matchers}

class CITests extends FunSuiteLike with Matchers {

    import java.io.File
    import org.rogach.scallop.throwError
    import scala.sys.process._

    val testPath = "src/test/resources/CITests"

    mkTests(testPath, List(Bit(), Math()), List(0, 2))
    mkTests(testPath + "/bit", List(Bit()), List(0, 2))
    mkTests(testPath + "/bit/O2", List(Bit()), List(2))
    mkTests(testPath + "/O2", List(Bit(), Math()), List(2))

    // Utilities

    def mkTests(path : String, modes : List[NumberMode], optLevels : List[Int]) {
        for (file <- testFiles(path)) {
            val filename = file.getAbsolutePath()
            if (filename.endsWith("_false-unreach-call.c")) {
                for (mode <- modes) {
                    for (optLevel <- optLevels) {
                        test(s"$mode -O${optLevel} $filename") {
                            falseTest(file, filename, mode, optLevel)
                        }
                    }
                }
            } else if (filename.endsWith("_true-unreach-call.c")) {
                for (mode <- modes) {
                    for (optLevel <- optLevels) {
                        test(s"$mode -O${optLevel} $filename") {
                            trueTest(file, filename, mode, optLevel)
                        }
                    }
                }
            }
        }
    }

    def testFiles(path : String) : Array[File] = {
        new File(path).listFiles
    }

    def falseTest(file : File, filename : String, mode : NumberMode, optLevel : Int) {
        val verout = runVerifier(filename, mode, optLevel)
        verout shouldBe "FALSE\n"

        val (valout, valerr) =
            runCmd(
                Array(
                    "./test-gen.sh", "-m32", "--propertyfile", "../properties/unreach-call.prp",
                    "--graphml-witness", "../witness.graphml", filename
                ),
                "fshell-w2t"
            )
        valout shouldBe s"${file.getName()}: OK\nFALSE\n"
        valerr shouldBe ""
    }

    def trueTest(file : File, filename : String, mode : NumberMode, optLevel : Int) {
        val verout = runVerifier(filename, mode, optLevel)
        verout shouldBe "TRUE\n"

        val (valout, valerr) =
            runCmd(
                Array(
                    "./scripts/check-true-witness.sh", "witness.graphml", filename
                )
            )
        valout shouldBe ""
        valerr shouldBe ""
    }

    /**
     * Run Skink on filename using a number mode and optimisation level. Return
     * standard output.
     */
    def runVerifier(filename : String, mode : NumberMode, optLevel : Int) : String = {
        val args =
            Array(
                "-c", "-v", s"-O${optLevel}", "-n", mode.productPrefix.toLowerCase(),
                "-w", "witness.graphml", filename
            )

        // Set Scallop so that errors don't just exit the process
        val saveThrowError = throwError.value
        throwError.value = true
        val errOrConfig = Main.createAndInitConfig("--Koutput" +: "string" +: args)
        throwError.value = saveThrowError

        errOrConfig match {
            case Left(message) =>
                fail(message)
            case Right(config) =>
                try {
                    Main.processfile(filename, config)
                } catch {
                    case e : Exception =>
                        info("failed with an exception ")
                        throw (e)
                }
                config.stringEmitter.result
        }
    }

    /**
     * Run a command, returning whatever is written to standard output and stadnard error.
     */
    def runCmd(cmd : Array[String], cwd : String = ".") : (String, String) = {
        val process = Process(cmd, new File(cwd))
        val stdoutBuilder = new StringBuilder
        val stderrBuilder = new StringBuilder
        val processLoggger = ProcessLogger(
            line => stdoutBuilder.append(s"$line\n"),
            line => stderrBuilder.append(s"$line\n")
        )
        process ! processLoggger
        (stdoutBuilder.result(), stderrBuilder.result())
    }

}
