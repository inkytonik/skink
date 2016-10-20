package au.edu.mq.comp.skink.iml

import au.edu.mq.comp.skink.{Frontend, SkinkConfig}

/**
 * Skink frontend for IML.
 */
class IMLFrontend(config : SkinkConfig) extends Frontend {

    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.skink.iml.IMLSyntax.Program
    import au.edu.mq.comp.skink.iml.IMLPrettyPrinter.{any, layout, show}
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source}

    val logger = getLogger(this.getClass)
    val programLogger = getLogger(this.getClass, ".program")

    val name = "IML"

    /**
     * Compile the IML source into LLVM IR.
     */
    def buildIR(source : Source, positions : Positions) : Either[IR, Messages] = {
        val p = new IML(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            logger.info("buildIR: LLVM program build succeeded")
            val program = p.value(pr).asInstanceOf[Program]
            programLogger.debug("* Program from source\n")
            programLogger.debug(show(program))
            programLogger.debug("\n* AST from source\n\n")
            programLogger.debug(layout(any(program)))
            programLogger.debug("\n\n")
            if (config.parse())
                Right(Vector())
            else {
                val compiler = new IMLCompiler(positions, config)
                Left(compiler.compile(program))
            }
        } else
            Right(Vector(p.errorToMessage(pr.parseError)))
    }

}
