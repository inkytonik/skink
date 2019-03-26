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
    import au.edu.mq.comp.skink.LoggerFactory.getLogger
    import au.edu.mq.comp.skink.verifier.Helper.{checkFor, fail, runPipeline}
    import au.edu.mq.comp.skink.verifier.Helper.uriToName
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Positions, Source}
    import org.bitbucket.inkytonik.kiama.util.Filenames.makeTempFilename
    import org.bitbucket.inkytonik.kiama.util.IO.deleteFile
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages

    val logger = getLogger(this.getClass, config)
    val programLogger = getLogger(this.getClass, config, ".program")

    val name = "Skink"

    def buildIR(origSource : Source, source : Source, positions : Positions) : Either[IR, Messages] = {

        def buildIRFromFile(filename : String, positions : Positions) : Either[IR, Messages] = {

            // Setup filenames
            val clangllfile = makeTempFilename(".ll")
            val cfile = uriToName(filename)

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
                cfile
            )

            def run() : Either[IR, Messages] = {
                deleteFile(clangllfile)
                val (res, output) = runPipeline(
                    logger,
                    origSource,
                    clang +: clangargs
                )
                if (res == 0) {
                    logger.logfile(origSource, "Clang output", clangllfile)
                    logger.info(origSource, s"\nbuildIRFromFile: preparing LLVM code succeeded\n")
                    logger.info(origSource, s"buildIRFromFile: running LLVM frontend on ${clangllfile}\n")
                    val llvmFrontend = new LLVMFrontend(config)
                    val llvm = llvmFrontend.buildIR(origSource, FileSource(clangllfile), positions)
                    if (config.cleanup())
                        deleteFile(clangllfile)
                    llvm
                } else {
                    logger.info(origSource, "buildIRFromFile: preparing LLVM code failed\n")
                    logger.info(origSource, output)
                    fail(logger, origSource, s"buildIRFromFile: preparing LLVM code failed with code $res", config)
                }
            }

            programs.flatMap(checkFor(logger, origSource, _)) match {
                case Vector() =>
                    run()
                case msgs =>
                    Right(msgs)
            }

        }

        programLogger.debug(origSource, "* Program from source\n")
        programLogger.debug(origSource, source.content)
        buildIRFromFile(origSource.name, positions)
    }

}
