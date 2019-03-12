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

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.CompilerBase

trait Driver extends CompilerBase[IR, IR, SkinkConfig] {

    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.Source
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages

    val name = "c"

    val logger = getLogger(this.getClass)

    override def main(args : Array[String]) {
        logger.info(s"""main: ${args.mkString(" ")}""")
        super.main(args)
    }

    override def createConfig(args : Seq[String]) : SkinkConfig =
        new SkinkConfig(args)

    override def compileFile(filename : String, config : SkinkConfig,
        encoding : String = "UTF-8") {
        logger.info(s"processfile: $filename")
        super.compileFile(filename, config)
    }

    /**
     * Build an IR representation for the given source using the current
     * frontend.
     */
    override def makeast(source : Source, config : SkinkConfig) : Either[IR, Messages] = {
        val frontend = config.frontend()
        logger.info(s"makeast: building IR using ${frontend.name} frontend")
        frontend.buildIR(source, positions)
    }

    /**
     * Processing for IR.
     */
    def process(source : Source, ir : IR, config : SkinkConfig) {

        import au.edu.mq.comp.skink.verifier.Verifier

        for (function <- ir.functions) {

            if (config.verifyTarget()) {
                if (function.name == "main") {
                    logger.info(s"processIR: processing ${function.name}")
                    val verifier = new Verifier(ir, config)
                    verifier.verify(this, function)
                } else {
                    logger.info(s"processIR: skipping ${function.name}")
                }
            }

        }

        if (config.execute()) {
            logger.info("processIR: running program")

            val (output, code) = ir.execute()
            if (!config.quiet()) {
                config.output().emit(output)
                if (code != 0)
                    config.output().emitln(s"exit code: $code")
            }
        }

    }

    def format(ir : IR) : Document =
        new Document(ir.show, Nil)

}

object Main extends Driver
