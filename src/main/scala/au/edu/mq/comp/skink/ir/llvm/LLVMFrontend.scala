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
