package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program

/**
 * Representation of LLVM IR.
 */
class LLVMIR(ir : Program, config : SkinkConfig) extends IR {

    import au.edu.mq.comp.skink.ir.IRFunction
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import org.scalallvm.assembly.AssemblySyntax.FunctionDefinition
    import org.scalallvm.assembly.Executor

    // Implementation of IR interface

    def execute() : (String, Int) =
        Executor.execute(ir, config.lli())

    def functions : Vector[IRFunction] =
        ir.items.collect {
            case fd : FunctionDefinition =>
                new LLVMFunction(ir, fd, config)
        }

    def show : String =
        AssemblyPrettyPrinter.show(ir, 5)

}
