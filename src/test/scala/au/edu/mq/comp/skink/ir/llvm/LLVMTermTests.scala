package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.inkytonik.kiama.util.Tests
<<<<<<< HEAD
import org.scalallvm.assembly.AssemblySyntax._
import org.scalallvm.assembly.AssemblyPrettyPrinter.show

class DummyNamer extends LLVMNamer {

    def indexOf(use : Product, s : String) : Int =
        0

    def nameOf(name : Name) : String =
        show(name)
}


/**
 * Helpers for all term tests.
 */
trait LLVMTermTests extends Tests with Core {

    import au.edu.mq.comp.skink.SkinkConfig
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{IntSort, BoolSort, Sort, Term}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm}
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}

    val namer = new DummyNamer
    import namer._

    def createAndInitConfig(args : Seq[String]) : SkinkConfig = {
        val config = new SkinkConfig(args)
        config.verify()
        config
    }

    val termBuilder : LLVMTermBuilder

    val noMetadata = Metadata(Vector())

    // Helpers to build useful instructions and terms

    def makeLocal(id : String) =
        Local(id)

    val x = makeLocal("x")
    val y = makeLocal("y")
    val z = makeLocal("z")

    def makeLocalExp(id : String) =
        Named(makeLocal(id))

    val xexp = makeLocalExp("x")
    val yexp = makeLocalExp("y")
    val zexp = makeLocalExp("z")

    def makeVarTermB(id : String) : VarTerm[BoolTerm] =
        new VarTerm(id, BoolSort(), Some(0))

    val bx = makeVarTermB("%x")
    val by = makeVarTermB("%y")
    val bz = makeVarTermB("%z")

    def makeCall(id : String, args : Vector[CallArgument]) =
        Call(NoBinding(), NotTail(), DefaultCC(), Vector(), VoidT(),
            Function(Named(Global(id))), args, Vector())

    def makeLabel(name : String) =
        Label(Local(name))

    // Helper functions

    def hasNoEffect(insn : Instruction) {
        termBuilder.insnTerm(MetaInstruction(insn, noMetadata)) shouldBe True()
    }

    def hasEffect[A, B <: Term](insn : Instruction, effect : TypedTerm[A, B]) {
        termBuilder.insnTerm(MetaInstruction(insn, noMetadata)) shouldBe effect
    }

    def hasPhiEffect[A, B <: Term](
        insn : PhiInstruction,
        optPrevBlock : Option[Block],
        effect : TypedTerm[A, B]
    ) {
        termBuilder.phiInsnTerm(MetaPhiInstruction(insn, noMetadata), optPrevBlock) shouldBe effect
    }

    def hasExitEffect[A, B <: Term](
        insn : TerminatorInstruction,
        choice : Int,
        effect : TypedTerm[A, B]
    ) {
        termBuilder.exitTerm(MetaTerminatorInstruction(insn, noMetadata), choice) shouldBe effect
    }

    def isNotHandled(insn : Instruction, msg : String) {
        val e = intercept[RuntimeException] {
            termBuilder.insnTerm(MetaInstruction(insn, noMetadata))
        }
        e.getMessage shouldBe msg
    }

}
