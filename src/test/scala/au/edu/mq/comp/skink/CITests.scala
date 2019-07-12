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

    import au.edu.mq.comp.skink.verifier.Helper.{
        checkFalseWitness,
        checkTrueWitness
    }
    import java.io.File
    import org.bitbucket.inkytonik.kiama.util.Filenames.makeTempFilename
    import org.bitbucket.inkytonik.kiama.util.FileSource
    import org.bitbucket.inkytonik.kiama.util.IO.deleteFile
    import org.rogach.scallop.throwError

    val testPath = "src/test/resources/citests"

    mkFileTests(testPath, List("C"), List(Bit(), Math()), List(0, 2), List("main"))
    mkFileTests(testPath + "/bit", List("C"), List(Bit()), List(0, 2), List("main"))
    mkFileTests(testPath + "/bit/O2", List("C"), List(Bit()), List(2), List("main"))
    mkFileTests(testPath + "/O2", List("C"), List(Bit(), Math()), List(2), List("main"))

    // Utilities

    def mkFileTests(path : String, frontends : List[String], modes : List[NumberMode],
        optLevels : List[Int], functions : List[String]) {

        def mkFileTest(
            tester : (String, NumberMode, Int, String, String, File) => Unit,
            path : String, filename : String, file : File
        ) {
            for (frontend <- frontends)
                for (mode <- modes)
                    for (optLevel <- optLevels)
                        for (function <- functions)
                            test(s"-f $frontend -n $mode -O${optLevel} -F $function $filename") {
                                tester(frontend, mode, optLevel, function, filename, file)
                            }
        }

        for (file <- testFiles(path)) {
            val filename = file.getAbsolutePath()
            if (filename.endsWith("_false-unreach-call.c"))
                mkFileTest(falseTest, path, filename, file)
            else if (filename.endsWith("_true-unreach-call.c"))
                mkFileTest(trueTest, path, filename, file)
        }
    }

    def testFiles(path : String) : Seq[File] = {
        val file = new File(path)
        if (file.exists())
            file.listFiles
        else
            sys.error(s"testFiles: path '$path' does not exist")
    }

    def falseTest(frontend : String, mode : NumberMode, optLevel : Int,
        function : String, filename : String, file : File) {
        val (verout, witness, config) = runVerifier(frontend, mode, optLevel, function, filename)
        verout shouldBe "FALSE\n"

        val witSource = FileSource(witness)
        val (valout, valerr) = checkFalseWitness(witSource, filename, config)
        valout shouldBe s"${file.getName()}: OK\nFALSE\n"
        valerr shouldBe ""

        if (config.cleanup())
            deleteFile(witness)
    }

    def trueTest(frontend : String, mode : NumberMode, optLevel : Int,
        function : String, filename : String, file : File) {
        val (verout, witness, config) = runVerifier(frontend, mode, optLevel, function, filename)
        verout shouldBe "TRUE\n"

        val witSource = FileSource(witness)
        val (valout, valerr) = checkTrueWitness(witSource, filename, config)
        valout shouldBe ""
        valerr shouldBe ""

        if (config.cleanup())
            deleteFile(witness)
    }

    /**
     * Run Skink on filename using a given frontend, number mode, optimisation level
     * and function name. Return standard output, witness file name and the configuration
     * that was used.
     */
    def runVerifier(frontend : String, mode : NumberMode, optLevel : Int,
        function : String, filename : String) : (String, String, SkinkConfig) = {

        val witnessFileName = makeTempFilename("xml")
        val args =
            Seq(
                "-c", "-v",
                "-f", frontend,
                s"-O${optLevel}",
                "-n", mode.toString,
                "-F", function,
                "-w", witnessFileName,
                filename
            )

        // Set Scallop so that errors don't just exit the process
        val saveThrowError = throwError.value
        throwError.value = true
        val config = Main.createConfig("--Koutput" +: "string" +: args)
        throwError.value = saveThrowError

        try {
            config.driver.compileFile(filename, config)
        } catch {
            case e : Exception =>
                info("failed with an exception ")
                throw (e)
        }
        (config.stringEmitter.result, witnessFileName, config)
    }

}
