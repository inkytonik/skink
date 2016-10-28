package au.edu.mq.comp.skink.ir.llvm

import org.scalallvm.assembly.AssemblyPrettyPrinter.{show}
import org.scalallvm.assembly.AssemblySyntax.Name

/**
 * A dummy namer for use in tests where naming is not relevant.
 * Always returns an index of zero.
 */
class DummyNamer extends LLVMNamer {
    def defaultIndexOf(s : String) : Int =
        0
    def indexOf(use : Product, s : String) : Int =
        0

    def nameOf(name : Name) : String =
        show(name)
}
