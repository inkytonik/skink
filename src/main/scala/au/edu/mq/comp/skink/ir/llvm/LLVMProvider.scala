package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.ir.IRProvider
import au.edu.mq.comp.skink.SkinkConfig

/**
 * Provider for LLVM IR.
 */
class LLVMProvider(config : SkinkConfig) extends IRProvider {

    import au.edu.mq.comp.skink.ir.IR
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinter
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}
    import org.scalallvm.assembly.Assembly
    import org.scalallvm.assembly.AssemblySyntax._

    // Interface

    val name = "LLVM"

    def buildFromSource(source : Source, positions : Positions) : Either[IR, Messages] = {
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val program = p.value(pr).asInstanceOf[Program]
            Left(new LLVMIR(program))
        } else
            Right(Vector(p.errorToMessage(pr.parseError)))
    }

}
