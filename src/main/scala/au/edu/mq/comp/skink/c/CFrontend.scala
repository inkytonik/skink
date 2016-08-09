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
    import org.bitbucket.inkytonik.kiama.util.Message
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Positions, Source}

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
                Right(Vector(Message(null, msg)))
        }
    }

    def buildIRFromFile(filename : String, positions : Positions) : Either[IR, Messages] = {
        import sys.process._

        // Setup args and filenames
        val clangwargs = "-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration"
        val clangdefs = "-Dassert=__VERIFIER_assert"
        val clangargs = s"-c -emit-llvm -g -o - -S -x c $clangdefs $clangwargs"
        val llfile = dotc2dotll(filename)
        logger.info(s"buildIRFromFile: generate temp ll file: $filename > $llfile")

        // Check for clang and opt on PATH
        val devnull = new java.io.ByteArrayOutputStream
        val clangq = ("which clang" #> devnull).! == 0
        val optq = ("which opt" #> devnull).! == 0
        if (!clangq || !optq) {
            val msg = "buildIRFromFile: clang or opt not present on path"
            logger.info(msg)
            return Right(Vector(Message(null, msg)))
        }
        val clangv = "clang --version".!!
        val optv = "opt --version".!!
        logger.info(s"buildIRFromFile: clang version is $clangv")
        logger.info(s"buildIRFromFile: opt version is $optv")

        // Run clang and opt
        val res = (s"clang $clangargs $filename" #| s"opt -S -inline -o $llfile").!
        if (res == 0) {
            logger.info("buildIRFromFile: LLVM program build succeeded")
        } else {
            val msg = s"buildIRFromFile: conversion to LLVM failed with code $res"
            logger.info(msg)
            return Right(Vector(Message(null, msg)))
        }

        // Use LLVM frontend from here
        (new LLVMFrontend(config)).buildIR(FileSource(llfile), positions)
    }

    def dotc2dotll(filename : String) : String = {
        (if (filename.lastIndexOf(".") >= 0)
            filename.substring(0, filename.lastIndexOf('.'))
        else
            filename) + ".ll"
    }

}
