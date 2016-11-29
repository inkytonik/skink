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

    val devnull = new java.io.ByteArrayOutputStream

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

        def checkFor(program : String) : Option[Messages] =
            if ((s"which $program" #> devnull).! == 0) {
                val progv = s"$program --version".!!
                logger.info(s"buildIRFromFile: $program version is $progv")
                None
            } else {
                val msg = s"buildIRFromFile: $program not present on path"
                logger.info(msg)
                Some(Vector(Message(msg, msg)))
            }

        def dotc2dotext(filename : String, ext : String) : String = {
            (if (filename.lastIndexOf(".") >= 0)
                filename.substring(0, filename.lastIndexOf('.'))
            else
                filename) + ext
        }

        // Setup filenames
        val llfile = dotc2dotext(filename, ".ll")

        // Setup command arguments
        val clangwargs = s"-Wno-implicit-function-declaration -Wno-incompatible-library-redeclaration $filename"
        val clangdefs = "-Dassert=__VERIFIER_assert"
        val clangargs = s"-c -emit-llvm -g -o - -S -x c $clangdefs $clangwargs"
        val optargs = s"-S -inline -inline-threshold=150000 -indvars -loops -lcssa -licm -loop-simplify -loop-unroll -unroll-count=10 -simplifycfg -adce -strip-debug-declare -o $llfile"

        // Run a pipeline of commands, return status and output
        def runPipeline(command : String, rest : String*) : (Int, String) = {
            logger.info(s"buildIRFromFile: ${rest.foldLeft(command)(_ ++ " | " ++ _)}")
            val process = rest.foldLeft(Process(command))(_ #| _)
            val os = new java.io.ByteArrayOutputStream
            val res = (process #> os).!
            (res, os.toString("utf8"))
        }

        // Fail the run with a given message
        def fail(msg : String) : Either[IR, Messages] = {
            logger.info(msg)
            Right(Vector(Message(msg, msg)))
        }

        def run() : Either[IR, Messages] = {
            val (res, output) = runPipeline(s"clang $clangargs", s"opt $optargs")
            if (res == 0) {
                logger.info(s"buildIRFromFile: compile and optimize succeeded with output '$output'")
                logger.info(s"buildIRFromFile: running LLVM frontend on $llfile")
                (new LLVMFrontend(config)).buildIR(FileSource(llfile), positions)
            } else {
                fail(s"buildIRFromFile: compile and optimize failed with code $res and output '$output'")
            }
        }

        // Check for required programs on PATH and if ok, run them
        checkFor("clang") match {
            case Some(msgs) =>
                Right(msgs)
            case None =>
                checkFor("opt") match {
                    case Some(msgs) =>
                        Right(msgs)
                    case None =>
                        checkFor("grep") match {
                            case Some(msgs) =>
                                Right(msgs)
                            case None =>
                                run()
                        }
                }
        }
    }

}
