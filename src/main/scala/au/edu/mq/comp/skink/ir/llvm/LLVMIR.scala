package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program

/**
 * Representation of LLVM IR.
 */
class LLVMIR(ir : Program) extends IR {

    import au.edu.mq.comp.skink.ir.IRFunction
    import au.edu.mq.comp.skink.SkinkConfig
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import org.scalallvm.assembly.AssemblySyntax.FunctionDefinition
    import org.scalallvm.assembly.Executor

    def execute(config : SkinkConfig) : (String, Int) =
        Executor.execute(ir, config.lli())

    def functions : Vector[IRFunction] =
        ir.items.collect {
            case fd : FunctionDefinition =>
                new LLVMFunction(ir, fd)
        }

    def show : String =
        AssemblyPrettyPrinter.show(ir, 5)

}
