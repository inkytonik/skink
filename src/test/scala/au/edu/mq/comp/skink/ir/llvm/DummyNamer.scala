package au.edu.mq.comp.skink.ir.llvm

/**
 * A dummy namer for use in tests where naming is not relevant.
 * Always returns an index of zero.
 */
class DummyNamer extends LLVMNamer {
    def indexOf(use : Product, s : String) : Int =
        0
}
