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

package au.edu.mq.comp.skink.c

import au.edu.mq.comp.skink.{Frontend, SkinkConfig}

/**
 * Frontend for C using clang to produce LLVM then LLVM frontend.
 */
class CFrontend(config : SkinkConfig) extends Frontend {

    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.ir.llvm.LLVMFrontend
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Message, Positions, Source}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    val name = "C"

    def buildIR(source : Source, positions : Positions) : Either[IR, Messages] = {
        programLogger.debug("* Program from source\n")
        programLogger.debug(source.content)
        source.optName match {
            case Some(filename) =>
                buildIRFromFile(filename, positions)
            case None =>
                val msg = "C frontend requires a file source"
                logger.info(s"buildIR: $msg")
                Right(Vector(Message(msg, msg)))
        }
    }

    def buildIRFromFile(filename : String, positions : Positions) : Either[IR, Messages] = {

        // Setup filenames
        val clangllfile = replaceExtension(filename, ".ll")

        // Programs we may run
        val clang = "clang"
        val programs = Vector(clang)

        // Clang command arguments
        val clangargs = Seq(
            "-c", "-S", "-emit-llvm",
            // architecture
            "-target", "i386-pc-linux-gnu", s"-m${config.architecture()}",
            // optimisation
            s"-O${config.optLevel()}",
            // warnings
            "-Wno-implicit-function-declaration", "-Wno-incompatible-library-redeclaration",
            // functionality
            "-fno-vectorize", "-fno-slp-vectorize",
            // others
            "-gline-tables-only", "-Xclang", "-disable-lifetime-markers",
            "-Rpass=.*", "-Rpass-missed=.*", "-Rpass-analysis=.*",
            // LLVM
            "-mllvm", "-inline-threshold=15000",
            // CPP definitions
            "-Dassert=__VERIFIER_assert",
            // output
            "-o", clangllfile,
            // language
            "-x", "c",
            // input
            filename
        )

        def run() : Either[IR, Messages] = {
            deleteFile(clangllfile)
            val (res, output) = runPipeline(
                clang +: clangargs
            )
            if (res == 0) {
                logfile("Clang output", clangllfile)
                logger.info(s"\nbuildIRFromFile: preparing LLVM code succeeded\n")
                logger.info(s"buildIRFromFile: running LLVM frontend on ${clangllfile}\n")
                val llvmFrontend = new LLVMFrontend(config)
                llvmFrontend.buildIR(FileSource(clangllfile), positions)
            } else {
                logger.info("buildIRFromFile: preparing LLVM code failed\n")
                logger.info(output)
                fail(s"buildIRFromFile: preparing LLVM code failed with code $res")
            }
        }

        programs.flatMap(checkFor) match {
            case Vector() =>
                run()
            case msgs =>
                Right(msgs)
        }

    }

}
