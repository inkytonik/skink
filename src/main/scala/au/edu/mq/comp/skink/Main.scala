/*
 * This file is part of Skink.
 *
 * Copyright (C) 2019
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

import au.edu.mq.comp.skink.ir.IR
import au.edu.mq.comp.skink.verifier.Helper.uriToName
import org.bitbucket.inkytonik.kiama.util.CompilerBase

object Main {

    import au.edu.mq.comp.skink.LoggerFactory
    import org.rogach.scallop.exceptions.ScallopException

    def main(args : Array[String]) {
        val config = createConfig(args)
        if (config.logLevel.isSupplied)
            LoggerFactory.setRootLevel(config.logLevel())
        config.driver.main(args)
    }

    def createConfig(args : Seq[String]) : SkinkConfig = {
        lazy val config : SkinkConfig =
            new SkinkConfig(args) {
                lazy val driver = new Driver(config)
            }
        try {
            config.verify
        } catch {
            case e : ScallopException =>
                System.err.println(s"skink: ${e.message}, use --help for option list")
                sys.exit(1)
        }
        config
    }

}

class Driver(config : SkinkConfig) extends CompilerBase[IR, IR, SkinkConfig] {

    self =>

    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.Source
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages

    val name = "skink"

    val logger = getLogger(this.getClass, config)

    override def main(args : Array[String]) {
        super.main(args)
    }

    override def createConfig(args : Seq[String]) : SkinkConfig =
        config

    def verifiedFunction(fileuri : String) : String = {
        val verifiedFunctions = settingArray("verifiedFunctions")
        for (i <- 0 until verifiedFunctions.size()) {
            val entry = verifiedFunctions.get(i).getAsJsonObject
            val uri = entry.get("uri")
            val name = entry.get("name")
            if ((uri != null) && (name != null) && (uri.getAsString == fileuri)) {
                return name.getAsString
            }
        }
        "main"
    }

    def settingStrTrim(setting : String) : String =
        settingStr(setting).trim()

    override def compileString(uri : String, input : String, config : SkinkConfig) {
        val fullConfig =
            if (config.server()) {
                val fullArgs = config.args ++
                    Seq(
                        "-v", "-w", "-", "-c", "-q",
                        "-e", settingStrTrim("solvers"),
                        "-f", settingStrTrim("frontend"),
                        "-F", verifiedFunction(uri),
                        "-n", settingStrTrim("numericMode"),
                        s"""-O${settingInt("optLevel")}""",
                        "--fshellw2tpath", settingStrTrim("fshellw2tPath"),
                        "--checktruewitnesspath", settingStrTrim("checkTrueWitnessPath")
                    )
                val fullConfig =
                    new SkinkConfig(fullArgs) {
                        val driver = self
                    }
                fullConfig.verify()
                fullConfig
            } else
                config
        super.compileString(uriToName(uri), input, fullConfig)
    }

    /**
     * Build an IR representation for the given source using the current
     * frontend.
     */
    override def makeast(source : Source, config : SkinkConfig) : Either[IR, Messages] = {
        val frontend = config.frontend()
        logger.info(source, s"makeast: building IR using ${frontend.name} frontend")
        frontend.buildIR(source, source, positions)
    }

    /**
     * Processing for IR.
     */
    def process(source : Source, ir : IR, config : SkinkConfig) {

        import au.edu.mq.comp.skink.verifier.Verifier

        for (function <- ir.functions) {

            if (config.verifyTarget()) {
                if (function.name == config.functionName()) {
                    logger.info(source, s"processIR: processing ${function.name}")
                    val verifier = new Verifier(source, ir, config)
                    verifier.verify(function)
                } else {
                    logger.info(source, s"processIR: skipping ${function.name}")
                }
            }

        }

        if (config.execute()) {
            logger.info(source, "processIR: running program")

            val (output, code) = ir.execute()
            if (!config.quiet()) {
                config.output().emit(output)
                if (code != 0)
                    config.output().emitln(s"exit code: $code")
            }
        }

    }

    def format(ir : IR) : Document =
        ir.format

}
