package au.edu.mq.comp.skink.ir.llvm

import org.scalallvm.assembly.AssemblySyntax.Name

/**
 * A dummy namer for use in tests where naming is not relevant.
 * Always returns an index of zero.
 */
class DummyNamer extends LLVMNamer {
    def defaultIndexOf(name : Name) : Int =
        0
    def indexOf(use : Product, name : Name) : Int =
        0
}
