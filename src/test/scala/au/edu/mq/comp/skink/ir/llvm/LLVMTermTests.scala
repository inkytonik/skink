package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.inkytonik.kiama.util.Tests
import org.bitbucket.franck44.scalasmt.theories.Core

/**
 * Helpers for all term tests.
 */
trait LLVMTermTests extends Tests with Core {

    import au.edu.mq.comp.skink.SkinkConfig
    import au.edu.mq.comp.skink.ir.Trace
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BoolSort, Term}
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{Positions, StringSource}
    import org.scalallvm.assembly.{Analyser, Assembly}
    import org.scalallvm.assembly.AssemblySyntax._

    val namer = new DummyNamer

    def createAndInitConfig(args : Seq[String]) : SkinkConfig = {
        val config = new SkinkConfig(args)
        config.verify()
        config
    }

    def config : SkinkConfig

    def termBuilder : LLVMTermBuilder

    val noMetadata = Metadata(Vector())

    val intSizes = Vector(8, 16, 32, 64)

    // Dummy function and analyser for standalone tests

    val Vector(func) = parseProgram("define i32 @main() { ret i32 0 }")
    val funTree = new Tree[ASTNode, FunctionDefinition](func.function)
    val funAnalyser = new Analyser(funTree)

    // Helpers to build useful instructions and terms

    def makeLocal(id : String) : Name =
        Local(id)

    val x = makeLocal("x")
    val y = makeLocal("y")
    val z = makeLocal("z")

    def makeLocalExp(id : String) : Value =
        Named(makeLocal(id))

    val xexp = makeLocalExp("x")
    val yexp = makeLocalExp("y")
    val zexp = makeLocalExp("z")

    def makeVarTermB(id : String) : VarTerm[BoolTerm] =
        new VarTerm(id, BoolSort(), Some(0))

    val bx = makeVarTermB("%x")
    val by = makeVarTermB("%y")
    val bz = makeVarTermB("%z")

    val v = "1"
    val w = "2"

    def makeInt(i : String) : ConstantValue =
        IntC(i.toInt)

    val ivconst = makeInt(v)
    val iwconst = makeInt(w)

    def makeFloat(f : String) : ConstantValue =
        FloatC(f)

    val fpvconst = makeFloat(v)
    val fpwconst = makeFloat(w)

    def makeCall(binding : OptBinding, id : String, args : Vector[CallArgument]) =
        Call(binding, NotTail(), DefaultCC(), Vector(), VoidT(),
            Function(Named(Global(id))), args, Vector())

    def makeLabel(name : String) : Label =
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

    def hasItemEffect[A, B <: Term](
        item : Item,
        effect : TypedTerm[A, B]
    ) {
        termBuilder.itemTerm(item) shouldBe effect
    }

    def isNotHandled(insn : Instruction, msg : String) {
        val e = intercept[RuntimeException] {
            termBuilder.insnTerm(MetaInstruction(insn, noMetadata))
        }
        e.getMessage shouldBe msg
    }

    // Support for processing functions

    /**
     * Parses `prog` as a program and returns a vector of LLVMFunctions
     * that represent the functions in the program.
     */
    def parseProgram(prog : String) : Vector[LLVMFunction] = {
        val positions = new Positions
        val source = new StringSource(prog)
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val prog = p.value(pr).asInstanceOf[Program]
            prog.items.collect {
                case func : FunctionDefinition =>
                    new LLVMFunction(prog, func, config)
            }
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

    /**
     * The effect of a trace of a given program.
     */
    def traceEffect(prog : String, trace : Trace) : Seq[TypedTerm[BoolTerm, Term]] = {
        val Vector(func) = parseProgram(prog)
        func.traceToTerms(trace)
    }

    // Support for testing phi insns

    def makeDummyBlock(name : String) =
        Block(BlockLabel(name), Vector(), None, Vector(),
            MetaTerminatorInstruction(Unreachable(), noMetadata))

    val fooBlock = makeDummyBlock("foo")
    val barBlock = makeDummyBlock("bar")
    val bleBlock = makeDummyBlock("ble")

    // Support for testing global variable initialisation

    def makeGlobalInitVar(id : String, tipe : Type, constantValue : ConstantValue) : GlobalVariableDefinition =
        GlobalVariableDefinition(
            GlobalBinding(Global(id)), Common(), DefaultVisibility(),
            DefaultDLLStorageClass(), NoThreadLocalSpec(), NamedAddr(),
            DefaultAddrSpace(), NotExternallyInitialized(), GlobalVar(),
            tipe, Init(constantValue), DefaultSection(), NoComdat(), Align(4),
            Metadata(Vector())
        )

}
