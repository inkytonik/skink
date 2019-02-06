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

package au.edu.mq.comp.skink

/**
 * Interface for Skink frontends. Gives the API that must be provided
 * by a frontend, plus useful utilities for running commands, managing
 * files, logging, etc.
 */
trait Frontend {

    import au.edu.mq.comp.skink.ir.IR
    import com.typesafe.scalalogging.Logger
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Message, Positions, Source}
    import scala.sys.process._

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
     * Build IR from the given source or complain by returning
     * error messages explaining what went wrong.
     */
    def buildIR(source : Source, positions : Positions) : Either[IR, Messages]

    /**
     * Check for the existence of a prorgam on the user's PATH. If it's
     * there, log its full path, and if it has a "--version" option, run
     * it and log that too. If the program is not on the path, log that.
     * The success or failure is also returned as a sequence of messages
     * describing the problem (if any).
     */
    def checkFor(program : String) : Messages = {
        val which = new java.io.ByteArrayOutputStream
        val processlogger = ProcessLogger(_ => (), _ => ())
        if ((s"which $program" #> which).!(processlogger) == 0) {
            logger.info(s"buildIRFromFile: $program is $which")
            val version = new java.io.ByteArrayOutputStream
            if ((s"$program --version" #> version).!(processlogger) == 0)
                logger.info(s"buildIRFromFile: $program version is $version")
            Vector()
        } else {
            val msg = s"buildIRFromFile: $program not present on PATH"
            logger.info(msg)
            Vector(Message(msg, msg))
        }
    }

    /**
     * Run a pipeline of commands, return status and output. The commands
     * are assumed to exist, so `checkFor` should be used to check first.
     */
    def runPipeline(command : Seq[String], rest : Seq[String]*) : (Int, String) = {
        val outputBuilder = new StringBuilder
        for (stage <- command +: rest) {
            logger.info(s"buildIRFromFile: $stage\n")
        }
        val process = rest.foldLeft(Process(command))(_ #&& _)
        val processLoggger = ProcessLogger(
            line => outputBuilder.append(s"$line\n"),
            line => outputBuilder.append(s"$line\n")
        )
        val status = process ! processLoggger
        val output = outputBuilder.result()
        logger.info(output)
        (status, output)
    }

    /**
     * Replace the extension of a filename with a new extension. E.g.
     * if the new extension is ".ll" and the filename is "foo.c", you
     * get "foo.ll". If the filename has no extension then the new
     * extension is just appended.
     */
    def replaceExtension(filename : String, newext : String) : String = {
        (if (filename.lastIndexOf(".") >= 0)
            filename.substring(0, filename.lastIndexOf('.'))
        else
            filename) + newext
    }

    /**
     * Fail the frontend by logging and returning the given message.
     */
    def fail(msg : String) : Either[IR, Messages] = {
        logger.info(msg)
        Right(Vector(Message(msg, msg)))
    }

    /**
     * Log a file's contents to the program logger. A heading using
     * title is prepended to the logged output.
     */
    def logfile(title : String, filename : String) {
        programLogger.debug(s"\n* $title\n\n")
        programLogger.debug(FileSource(filename).content)
    }

    /**
     * Delete the file with the given filename.
     */
    def deleteFile(filename : String) {
        java.nio.file.Files.deleteIfExists(java.nio.file.Paths.get(filename))
    }

}
