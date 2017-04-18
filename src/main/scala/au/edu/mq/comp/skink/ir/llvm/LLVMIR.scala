package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program

/**
 * Representation of LLVM IR.
 */
class LLVMIR(ir : Program, config : SkinkConfig) extends IR {

    import au.edu.mq.comp.skink.ir.IRFunction
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper.SortedQIdOrdering
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.SortedQId
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

    def sortIds(ids : Vector[SortedQId]) : Vector[SortedQId] =
        ids.sorted

}
