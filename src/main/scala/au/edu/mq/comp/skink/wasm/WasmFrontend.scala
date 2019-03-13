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

package au.edu.mq.comp.skink.wasm

import au.edu.mq.comp.skink.{Frontend, SkinkConfig}

/**
 * Frontend for C using clang to produce LLVM then LLVM frontend.
 */
class WasmFrontend(config : SkinkConfig) extends Frontend {

    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.ir.llvm.LLVMFrontend
    import org.bitbucket.inkytonik.kiama.util.Messaging.{Messages, error}
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Positions, Source}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    val name = "WASM"

    def buildIR(source : Source, positions : Positions) : Either[IR, Messages] = {
        programLogger.debug("* Program from source\n")
        programLogger.debug(source.content)
        source.optName match {
            case Some(filename) =>
                buildIRFromFile(filename, positions)
            case None =>
                val msg = "WASM frontend requires a file source"
                logger.info(s"buildIR: $msg")
                Right(error(msg, msg))
        }
    }

    def buildIRFromFile(filename : String, positions : Positions) : Either[IR, Messages] = {

        // Setup filenames
        val outputFile = replaceExtension(filename, "-wasm2llvm.ll")

        // Programs we may run
        val wasm2llvmshell = "wasm2llvm"
        val programs = Vector(wasm2llvmshell)

        // Clang command arguments
        val args = Seq(
            filename
        )

        def run() : Either[IR, Messages] = {
            deleteFile(outputFile)
            val (res, output) = runPipeline(
                wasm2llvmshell +: args
            )
            if (res == 0) {
                logfile("wasm2llvm output", outputFile)
                logger.info(s"\nbuildIRFromFile: preparing LLVM code succeeded\n")
                logger.info(s"buildIRFromFile: running LLVM frontend on $outputFile\n")
                val llvmFrontend = new LLVMFrontend(config)
                val llvm = llvmFrontend.buildIR(FileSource(outputFile), positions)
                if (config.cleanup())
                    deleteFile(outputFile)
                llvm
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
