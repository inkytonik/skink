package au.edu.mq.comp.skink
package ir.llvm

// import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program
import org.bitbucket.inkytonik.kiama.attribution.Attribution

/**
 * An analyser for LLVM IR.
 */
class IRAnalyser(val ir : LLVMIR) extends Attribution {

    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.relation.Tree
    // import org.scalallvm.assembly.Analyser
    // import org.scalallvm.assembly.AssemblySyntax._
    // import org.scalallvm.assembly.AssemblyPrettyPrinter.show
    import au.edu.mq.comp.skink.Skink.getLogger

    // import au.edu.mq.comp.skink.ir.{IRFunction, Trace, Choice, State, FailureTrace, NonDetCall, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper.nameToString
    // import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.SortedQId
    import org.scalallvm.assembly.AssemblySyntax.{ASTNode, Block, FunctionDefinition}
    // import org.scalallvm.assembly.Executor
    // import au.edu.mq.comp.skink.Skink.getLogger
    // import org.bitbucket.inkytonik.kiama.relation.{EnsureTree, Tree}
    // import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    // import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    // import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{ASTNode => _, _}
    // import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    // import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    // import org.scalallvm.assembly.AssemblySyntax._
    //
    // import org.scalallvm.assembly.Analyser
    // import org.scalallvm.assembly.Analyser.defaultBlockName
    // import scala.collection.mutable.{Map => MutableMap}

    val logger = getLogger(this.getClass)

    lazy val progTree = new Tree[Product, Product](ir.program)

    val decorators = new Decorators(progTree)
    import decorators.downErr

    /**
     * Analysers for each FunctionDefinition
     */
    lazy val funAnalyser : Map[String, LLVMFunction] = (ir.functions map {
        case f => (f.name, f)
    }).toMap

    /**
     * The enclosing function name of a node in the program AST
     */
    // FIXME make it private somehow and force use with Block
    val enclosingFun : ASTNode => String =
        downErr {
            case fun : FunctionDefinition => nameToString(fun.global)
        }

    /**
     * Find the name of a block. The name may depend on the enclosing FunDef
     * for the first block if a function.
     * @note We retrieve the enclosing function and use the funAnalyser for thjis function
     * to generate the block name
     */
    def blockName(b : Block) : String = funAnalyser(enclosingFun(b)).blockName(b)

}
