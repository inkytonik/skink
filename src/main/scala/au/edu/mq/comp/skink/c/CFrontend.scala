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
                Right(Vector(Message(msg, msg)))
        }
    }

    def buildIRFromFile(filename : String, positions : Positions) : Either[IR, Messages] = {
        import sys.process._

        def checkFor(program : String) : Messages = {
            val which = new java.io.ByteArrayOutputStream
            if ((s"which $program" #> which).! == 0) {
                logger.info(s"buildIRFromFile: $program is $which")
                val version = new java.io.ByteArrayOutputStream
                if ((s"$program --version" #> version).! == 0)
                    logger.info(s"buildIRFromFile: $program version is $version")
                Vector()
            } else {
                val msg = s"buildIRFromFile: $program not present on PATH"
                logger.info(msg)
                Vector(Message(msg, msg))
            }
        }

        def dotc2dotext(filename : String, ext : String) : String = {
            (if (filename.lastIndexOf(".") >= 0)
                filename.substring(0, filename.lastIndexOf('.'))
            else
                filename) + ext
        }

        // Run a pipeline of commands, return status and output
        def runPipeline(command : String, rest : String*) : (Int, String) = {
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

        def fail(msg : String) : Either[IR, Messages] = {
            logger.info(msg)
            Right(Vector(Message(msg, msg)))
        }

        def logfile(title : String, filename : String) {
            programLogger.debug(s"\n* $title\n\n")
            programLogger.debug(FileSource(filename).content)
        }

        def deleteFile(filename : String) {
            java.nio.file.Files.deleteIfExists(java.nio.file.Paths.get(filename))
        }

        // Setup filenames
        val clangllfile = dotc2dotext(filename, ".ll")

        // Programs we may run
        val clang = config.clang.toOption match {
            case Some(clangName) => clangName
            case _               => "clang-4.0"
        }

        val O2 = config.noO2.toOption match {
            case Some(b) => if (b == true) "" else "-O2"
            case _       => ""
        }

        val programs = List(clang)

        // Setup command arguments
        val clangwargs = s"-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration $filename"
        val clangdefs = "-Dassert=__VERIFIER_assert"
        val clangargs = s"-c -S -emit-llvm -gline-tables-only $O2 -mllvm -inline-threshold=15000 -Rpass=.* -Rpass-missed=.* -Rpass-analysis=.* -o $clangllfile -x c $clangdefs $clangwargs"

        def run() : Either[IR, Messages] = {
            deleteFile(clangllfile)
            val (res, output) = runPipeline(
                s"$clang $clangargs"
            )
            if (res == 0) {
                logfile("Clang output", clangllfile)
                logger.info(s"\nbuildIRFromFile: preparing LLVM code succeeded\n")
                logger.info(s"buildIRFromFile: running LLVM frontend on ${clangllfile}\n")
                (new LLVMFrontend(config)).buildIR(FileSource(clangllfile), positions)
            } else {
                println(output)
                fail(s"buildIRFromFile: preparing LLVM code failed with code $res")
            }
        }

        // Check for required programs on PATH, report errors or if ok, run them
        programs.flatMap(checkFor) match {
            case Nil =>
                run()
            case msgs =>
                Right(msgs.toVector)
        }

    }

}
