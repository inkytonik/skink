package au.edu.mq.comp.perentiemq.cfg

import org.scalallvm.assembly.AssemblySyntax._

/**
 * CFG builder for LLVM assembly functions.
 */
class AssemblyCFGBuilder extends CFGBuilder[FunctionDefinition,Block] {

    import org.kiama.relation.Bridge
    import org.scalallvm.assembly.AssemblyPrettyPrinter

    def render (astNode : ASTNode) : String =
        AssemblyPrettyPrinter.format (astNode).layout

    def blockName (function : FunctionDefinition, block : Block) : String =
        block.optBlockLabel match {
            case BlockLabel (s)    => s
            case ImplicitLabel (i) => s"%$i"
            case NoLabel ()        => "<no label>"
        }

    def isEntry (function : FunctionDefinition, block : Block) : Boolean =
        function.functionBody.blocks.head == block

    def isExit (function : FunctionDefinition, block : Block) : Boolean =
        block.terminatorInstruction match {
            case _ : Ret | _ : RetVoid =>
                true
            case _ =>
                false
        }

    def blocksOf (function : FunctionDefinition) : List[CFGBlock] =
        function.functionBody.blocks.map {
            case block =>
                CFGBlock (Bridge (block), exitOf (function, block))
        }

    def exitOf (function : FunctionDefinition, block : Block) : CFGExit =
            block.terminatorInstruction match {

                // Any exit cblock
                case _ if (isExit (function, block)) =>
                    CFGExit (Nil)

                // Unconditional branch
                case Branch (Label (Local (label))) =>
                    CFGExit (List (CFGGoto (label)))

                // Twos-sided conditional branch
                case BranchCond (cmp, Label (Local (trueLabel)), Label (Local (falseLabel))) =>
                    val name = render (cmp)
                    CFGExit (List (CFGChoice (name, 1, trueLabel),
                                   CFGChoice (name, 0, falseLabel)))

                case i =>
                    sys.error (s"exitOf: terminator not handled: $i")

            }

    def functionName (function : FunctionDefinition) : String =
        render (function.global)

    // Top-level interface

    def buildCFGs (program : Program) : List[CFG] =
        program.items.collect {
            case fd : FunctionDefinition =>
                cfg (fd)
        }

}
