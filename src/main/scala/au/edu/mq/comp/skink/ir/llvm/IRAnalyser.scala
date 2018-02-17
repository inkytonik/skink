package au.edu.mq.comp.skink
package ir.llvm

// import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program
import org.bitbucket.inkytonik.kiama.attribution.Attribution

import org.bitbucket.inkytonik.kiama.relation.Tree

/**
 * An analyser for LLVM IR.
 */
class IRAnalyser(program : Program, val progTree : Tree[Product, Product],
        funNameToLLVMFun : Map[String, LLVMFunction]) extends Attribution {

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

    // lazy val progTree = new Tree[Product, Product](ir.program)

    val decorators = new Decorators(progTree)
    import decorators.downErr

    //  Retrieve the enclosing function of a block
    private val enclosingFunDecorator : ASTNode => LLVMFunction =
        downErr {
            case fun : FunctionDefinition => funNameToLLVMFun(nameToString(fun.global))
        }

    /**
     *  Find the enclosing LLVMfunction of a given block.
     *
     *  @param      b   The block.
     *  @return         The LLVMFunction the block is in.
     */
    def enclosingFun(b : Block) : LLVMFunction = {
        import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showBlock}

        logger.debug(s"Looking up enclosing function for block ${showBlock(b)}")

        logger.debug(s"Call")
        val r = enclosingFunDecorator(b)

        logger.debug(s"End Call")
        r

    }

    /**
     * Find the name of a block. The name may depend on the enclosing function
     * for the first block.
     * @note We retrieve the enclosing function and use the function blockName
     */
    def blockName(b : Block) : String = {
        enclosingFun(b).blockName(b)
    }

    /**
     * Analysers for each FunctionDefinition
     */
    // lazy val funAnalyser : Map[String, LLVMFunction] = (ir.functions map {
    //     case f => (f.name, f)
    // }).toMap

    /**
     * The enclosing function name of a node in the program AST
     */
    // FIXME make it private somehow and force use with Block
    // val enclosingFun : ASTNode => String =
    //     downErr {
    //         case fun : FunctionDefinition => nameToString(fun.global)
    //     }

    /**
     * Find the name of a block. The name may depend on the enclosing FunDef
     * for the first block if a function.
     * @note We retrieve the enclosing function and use the funAnalyser for thjis function
     * to generate the block name
     */
    // def blockName(b : Block) : String = funAnalyser(enclosingFun(b)).blockName(b)

}

import org.scalallvm.assembly.AssemblySyntax._

/**
 * Support for analysing LLVM assembly programs. The support in this class
 * is dependent on access to the function's tree context.
 */
class IRAnalyser2(tree : Tree[ASTNode, Program]) extends Attribution {
    import org.scalallvm.assembly._
    import org.scalallvm.assembly.Analyser._
    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collect
    import org.bitbucket.inkytonik.kiama.util.Position
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper.nameToString

    import org.bitbucket.inkytonik.kiama.attribution.Decorators

    import au.edu.mq.comp.skink.Skink.getLogger
    val logger = getLogger(this.getClass)

    /**
     * The number of anonymous arguments that this function has.
     */
    // def anonArgCount  : Int = {
    //     val args =
    //         tree.root.arguments match {
    //             case VarArgs(args) => args
    //             case Args(args)    => args
    //         }
    //     args.count(_.optLocal.isEmpty)
    // }

    val decorators = new Decorators(tree)
    import decorators.downErr

    //  Retrieve the enclosing function of a block
    private val enclosingFunDecorator : ASTNode => FunctionDefinition =
        downErr {
            case fun : FunctionDefinition => fun
        }

    /**
     *  Find the enclosing LLVMfunction of a given block.
     *
     *  @param      b   The block.
     *  @return         The LLVMFunction the block is in.
     */
    def enclosingFun(b : Block) : FunctionDefinition = {
        import org.scalallvm.assembly.AssemblyPrettyPrinter.{show => showBlock}

        logger.debug(s"Looking up enclosing function for block ${showBlock(b)}")

        logger.debug(s"Call")
        val r = enclosingFunDecorator(b)

        logger.debug(s"End Call")
        r

    }

    /**
     * The anonArgCount of a function.
     *
     * @param   name    The name of the function
     */
    val anonArgCount : FunctionDefinition => ASTNode => Int =
        paramAttr {
            fun =>
                {
                    case f : FunctionDefinition if f == fun =>
                        val args =
                            f.arguments match {
                                case VarArgs(args) => args
                                case Args(args)    => args
                            }
                        args.count(_.optLocal.isEmpty)
                }
        }

    /**
     * Get the name of a block. Blocks that have labels get those as their
     * name. An anonymous block that occurs at the start of a function
     * gets as name the number of anonymous arguments to the function,
     * follwing the LLVM convention. Anonymous blocks should not be found
     * in other positions, but if they are they get name `"0"`.
     */
    lazy val blockName : Block => String =
        attr {
            case block =>
                if ((block.optBlockLabel == NoLabel()) && (tree.index(block) == 0))
                    anonArgCount(enclosingFunDecorator(block)).toString
                else
                    defaultBlockName(block, "0")
        }

    /**
     * Analyse a function definition to determine the properties of the variables
     * used based on how those values are used in the typed IR code. Assumes
     * that the IR fragment is correctly typed.
     */
    lazy val propertiesOfFunction : FunctionDefinition => Map[Name, Properties] =
        attr {
            case function =>
                val fromBindings = function.functionBody.blocks.flatMap(propertiesOfBlockBindings)
                val fromUses = propertiesOfUses(function.functionBody)
                (fromBindings ++ fromUses).groupBy(_._1).mapValues(_.flatMap(_._2)).toMap
        }

    /**
     * Look for named (constant) values that are immediately preceded by types
     * at the same level. This indicates that those values are being used at
     * those types, so record them. Arguments of binary and comparison instructions
     * are handled specially since the type is only specified once for both
     * arguments.
     *
     * We need this pass for two reasons:
     *   1) we currently do not process global declarations,
     *   2) some types cannot be recovered from the bindings (e.g., getelementptr
     *      results where the indices are not constant)
     * The idea is that the uses tell us the types. For most variables this will
     * duplicate information from the bindings but in some cases it will fill in
     * gaps.
     */
    val propertiesOfUses =
        collect[Vector, (Name, Properties)] {
            case tree.parent.pair(Named(name), Binary(_, _, tipe, _, _)) =>
                (name, Vector(TypeProperty(tipe)))
            case tree.parent.pair(Named(name), Compare(_, _, tipe, _, _)) =>
                (name, Vector(TypeProperty(tipe)))
            case tree.prev.pair(Named(name), tipe : Type) =>
                (name, Vector(TypeProperty(tipe)))
            case tree.prev.pair(Const(NameC(name)), tipe : Type) =>
                (name, Vector(TypeProperty(tipe)))
            case tree.prev.pair(NameC(name), tipe : Type) =>
                (name, Vector(TypeProperty(tipe)))
        }

    /**
     * Return a map that associates local names with the meta instructions that
     * bind or store to them, or calls to llvm.dbg.declare instrinsic that
     * declare their properties.
     */
    val getBindingInstructions : FunctionDefinition => Map[String, ASTNode] =
        attr {
            case function =>
                val collectBindingInstructions =
                    collect[Vector, (String, ASTNode)] {
                        case tree.parent.pair(Binding(Local(name)), tree.parent(metainsn)) =>
                            (name, metainsn)
                        case metainsn @ MetaInstruction(Store(_, _, _, _, Named(Local(name)), _), _) =>
                            (name, metainsn)
                        case metainsn @ MetaInstruction(
                            Call(_, _, _, _, VoidT(), Function(Named(Global("llvm.dbg.declare"))),
                                MDArg(MDValue(_, Named(Local(name)))) +: _, _), _) =>
                            (name, metainsn)
                    }
                collectBindingInstructions(function).toMap
        }

    /**
     * Return the position associated with an instruction node. If that node's
     * metadata has a position use that, otherwise go up to the enclosing block
     * and try to get a position from that.
     */
    def instructionPosition(program : Program, insn : ASTNode, metadata : Metadata) : Option[Position] =
        positionFromAttributes(program, metadata.optMetadataAttributes).orElse {
            insn match {
                case tree.parent(block : Block) =>
                    blockPosition(program, block)
                case _ =>
                    None
            }
        }

    /**
     * Return the position in the source code that defines the given local name.
     * If there is an instruction in the given function that binds the name and
     * that instruction has an associated position, return that. Otherwise, look
     * fowrard in the block of the instruction and find the next position.
     */
    def definingPosition(program : Program, function : FunctionDefinition, name : String) : Option[Position] =
        getBindingInstructions(function).get(name) match {
            case Some(insn @ MetaPhiInstruction(_, metadata)) =>
                instructionPosition(program, insn, metadata)
            case Some(insn @ MetaLandingPadInstruction(_, metadata)) =>
                instructionPosition(program, insn, metadata)
            case Some(insn @ MetaInstruction(_, metadata)) =>
                instructionPosition(program, insn, metadata)
            case Some(insn @ MetaTerminatorInstruction(_, metadata)) =>
                instructionPosition(program, insn, metadata)
            case _ =>
                None
        }

}
