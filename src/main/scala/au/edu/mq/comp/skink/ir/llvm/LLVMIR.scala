package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program

/**
 * Representation of LLVM IR.
 */
class LLVMIR(val program : Program, config : SkinkConfig) extends IR {

    import au.edu.mq.comp.skink.ir.IRFunction
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import org.scalallvm.assembly.AssemblySyntax.FunctionDefinition
    import org.scalallvm.assembly.Executor
    import org.scalallvm.assembly.Analyser.{metadata, filepath}

    // Implementation of IR interface

    def execute() : (String, Int) =
        Executor.execute(program, config.lli())

    def functions : Vector[LLVMFunction] =
        program.items.collect {
            case fd : FunctionDefinition =>
                new LLVMFunction(this, fd)
        }

    lazy val name : String =
        filepath(metadata(program)) match {
            case Some(name) => name
            case None       => "unknown name"
        }

    def show : String =
        AssemblyPrettyPrinter.show(program, 5)

}
