/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
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

import au.edu.mq.comp.skink.{Frontend, SkinkConfig}

/**
 * Frontend for LLVM.
 */
class LLVMFrontend(config : SkinkConfig) extends Frontend {

    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}
    import org.scalallvm.assembly.Assembly
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    val name = "LLVM"

    def buildIR(source : Source, positions : Positions) : Either[IR, Messages] = {
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            logger.info("buildIR: LLVM program build succeeded")
            val program = p.value(pr).asInstanceOf[Program]
            val ir = new LLVMIR(program, config)
            programLogger.debug("* Program from source\n")
            programLogger.debug(ir.show)
            programLogger.debug("\n* AST from source\n\n")
            programLogger.debug(layout(any(program)))
            programLogger.debug("\n\n")
            Left(ir)
        } else {
            val message = p.errorToMessage(pr.parseError)
            logger.info(s"buildFromSource: LLVM program build failed: $message")
            Right(Vector(message))
        }
    }

}
