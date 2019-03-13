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
 *
 * Frontend for C using clang to produce LLVM then LLVM frontend.
 */
class EMCCWASMFrontend(config : SkinkConfig) extends Frontend {

    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.skink.ir.IR
    import org.bitbucket.inkytonik.kiama.util.Messaging.{Messages, error}
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Positions, Source}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    val name = "EMCCWASM"

    def buildIR(source : Source, positions : Positions) : Either[IR, Messages] = {
        programLogger.debug("* Program from source\n")
        programLogger.debug(source.content)
        source.optName match {
            case Some(filename) =>
                buildIRFromFile(filename, positions)
            case None =>
                val msg = "C frontend requires a file source"
                logger.info(s"buildIR: $msg")
                Right(error(msg, msg))
        }
    }

    def buildIRFromFile(filename : String, positions : Positions) : Either[IR, Messages] = {

        // Setup filenames
        val wasmFile = replaceExtension(filename, ".wasm")
        val watFile = replaceExtension(filename, ".wat")

        // Programs we may run
        val emcc = "emcc"
        val programs = Vector(emcc)

        val wasm2wat = "wasm2wat"
        val wasm2watargs = Seq(
            //input
            wasmFile,
            // output
            "-o", watFile
        )

        // emcc command arguments
        val emccargs = Seq(
            // input
            filename,
            "-Os",
            // js params
            "-s", "WASM=1",
            "-s", "SIDE_MODULE=1",
            "-s", "ERROR_ON_UNDEFINED_SYMBOLS=0",
            "-s", "TOTAL_STACK=1024",
            "-s", "TOTAL_MEMORY=65536",
            // output
            "-o", wasmFile
        )

        //Compile C to WASM
        checkFor(emcc) match {
            case Vector() =>
                deleteFile(wasmFile)
                val (res, output) = runPipeline(
                    emcc +: emccargs
                )
            case msgs =>
                return Right(msgs)
        }

        def run() : Either[IR, Messages] = {
            deleteFile(watFile)
            val (res, output) = runPipeline(
                wasm2wat +: wasm2watargs
            )
            if (res == 0) {
                logfile("emcc + wasm2wat output", watFile)
                logger.info(s"\nbuild IRFromFile: preparing WAT code succeeded\n")
                logger.info(s"buildIRFromFile: running WASM frontend on ${watFile}\n")
                val wasmFrontend = new WasmFrontend(config)
                val llvm = wasmFrontend.buildIR(FileSource(watFile), positions)
                if (config.cleanup())
                    deleteFile(wasmFile)
                deleteFile(watFile)
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
