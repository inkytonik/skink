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

/**
 * Interface for Skink frontends. Gives the API that must be provided
 * by a frontend, plus useful utilities for running commands, managing
 * files, logging, etc.
 */
trait Frontend {

    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.Logger
    import au.edu.mq.comp.skink.verifier.Helper.checkFor
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}

    /**
     * The configuration of this execution.
     */
    def config : SkinkConfig

    /**
     * The main logger to be used by this frontend.
     */
    def logger : Logger

    /**
     * The logger used to log program text. Used to keep long code
     * listings out of the main frontend log.
     */
    def programLogger : Logger

    /**
     * The name of this frontend.
     */
    def name : String

    /**
     * The names of external programs that this frontend uses. The runner
     * will check that these programs exist and are executable before trying
     * to build the IR.
     */
    def programs : Vector[String]

    /**
     * Build IR from the given source or complain by returning
     * error messages explaining what went wrong. `origSource`
     * is the original source (e.g., C file if we are processing
     * LLVM IR compiled from C). Checks for the executability of
     * the required programs before callng `run` to do the real
     * work.
     */
    def buildIR(origSource : Source, source : Source, positions : Positions) : Either[IR, Messages] = {
        programLogger.debug(origSource, "* Program from source\n")
        programLogger.debug(origSource, source.content)
        programs.flatMap(checkFor(logger, origSource, _, config)) match {
            case Vector() =>
                run(origSource, source, positions)
            case msgs =>
                Right(msgs)
        }
    }

    /**
     * Actually build the IR.
     */
    def run(origSource : Source, source : Source, positions : Positions) : Either[IR, Messages]

}
