package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.ir.IRProvider
import au.edu.mq.comp.skink.SkinkConfig

/**
 * Provider for LLVM IR.
 */
class LLVMProvider(config : SkinkConfig) extends IRProvider {

    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinter
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}
    import org.scalallvm.assembly.Assembly
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout}

    val logger = getLogger(this.getClass)
    val astLogger = getLogger(this.getClass, ".ast")

    // Implementation of IRProvider interface

    val name = "LLVM"

    def buildFromSource(source : Source, positions : Positions) : Either[IR, Messages] = {
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            logger.info("buildFromSource: LLVM program build succeeded")
            val program = p.value(pr).asInstanceOf[Program]
            val ir = new LLVMIR(program)
            astLogger.debug(layout(any(program)))
            astLogger.debug(ir.show)
            Left(ir)
        } else {
            val message = p.errorToMessage(pr.parseError)
            logger.info(s"buildFromSource: LLVM program build failed: $message")
            Right(Vector(message))
        }
    }

}
