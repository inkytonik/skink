package au.edu.mq.comp.perentiemq.cfg

import org.kiama.attribution.Attribution

/**
 * Abstract builder for control-flow graphs. The CFGs are layered on top of
 * structure provided by sub-classes. A sub-class provides the type `F` for
 * functions and the type `B` for blocks. Also, the sub-class must provide
 * support methods such as to find the blocks of a function or the exit
 * conditions of a block. From this informaton the builder constructs a
 * structure that directly represents the control flow while retaining
 * access to the underlying structure.
 */
abstract class CFGBuilder[F,B] extends Attribution {

    import org.kiama.relation.Bridge

    // Support methods that descendants must provide

    def blockName (function : F, block : B) : String
    def blocksOf (function : F) : List[CFGBlock]
    def functionName (function : F) : String
    def isEntry (function : F, block : B) : Boolean
    def isExit (function : F, block : B) : Boolean

    // CFG representation

    type BlockName = String
    type VarName = String

    /**
     * Base class of all CFG AST nodes.
     */
    abstract class CFGASTNode extends Product

    /**
     * A control flow graph for function `F` consisting of a sequence of CFG blocks.
     */
    case class CFG (function : Bridge[F], blocks : List[CFGBlock]) extends CFGASTNode

    /**
     * A CFG block that represents the given underlying `block`.
     */
    case class CFGBlock (block : Bridge[B], exitInfo : CFGExit) extends CFGASTNode

    /**
     * An exit descriptor consisting of zero or more conditions which are
     * to be interpreted in the order given.
     */
    case class CFGExit (conditions : List[CFGExitCond]) extends CFGASTNode

    /**
     * Base class of exit conditions representing situations where control
     * transfers from a block to another.
     */
    sealed abstract class CFGExitCond extends CFGASTNode {
        def target : BlockName
    }

    /**
     * An exit condition that means that if the variable called `name` has the value
     * `choice` then control is transferred to `target`.
     */
    case class CFGChoice (name : VarName, choice : Int, target : BlockName) extends CFGExitCond

    /**
     * An exit condition that means always transfer control to `target`.
     */
    case class CFGGoto (target : BlockName) extends CFGExitCond

    // Construction

    /**
     * Make a CFG from a function.
     */
    lazy val cfg : F => CFG =
        attr {
            case function =>
                CFG (Bridge (function), blocksOf (function))
        }

    // CFG analysis

    class CFGAnalyser (cfg : CFG) {

        import org.kiama.attribution.Decorators
        import org.kiama.output.PrettyPrinter._
        import org.kiama.output.PrettyPrinterTypes.Document
        import org.kiama.relation.Tree

        val tree = new Tree[CFGASTNode,CFG] (cfg)
        val decorators = new Decorators (tree)

        import tree._
        import decorators._

        // CFG properties

        /**
         * The function that is represented by this graph.
         */
        lazy val function : CFGASTNode => F =
            atRoot {
                case CFG (Bridge (function), _) =>
                    function
            }

        /**
         * The CFG blocks.
         */
        lazy val cfgBlocks : CFGASTNode => List[CFGBlock] =
            atRoot {
                case cfg : CFG =>
                    cfg.blocks
            }

        /**
         * The unique entry block for this CFG. It is a run-time error if the
         * underlying function has more than one entry block.
         */
        lazy val entry : CFGASTNode => CFGBlock =
            atRoot {
                case CFG (Bridge (function), blocks) =>
                    val entries = blocks.filter {
                                      case CFGBlock (Bridge (block), _) =>
                                          isEntry (function, block)
                                  }
                    if (entries.length == 0)
                        sys.error (s"${functionName (function)}: no entry block")
                    if (entries.length > 1)
                        sys.error (s"${functionName (function)}: ${entries.length} entry blocks")
                    entries.head
            }

        /**
         * The exit blocks for this CFG.
         */
        lazy val exits : CFGASTNode => List[CFGBlock] =
            atRoot {
                case CFG (Bridge (function), blocks) =>
                    blocks.filter {
                        case CFGBlock (Bridge (block), _) =>
                            isExit (function, block)
                    }
            }

        // Block properties

        /**
         * The underlying name of this block.
         */
        lazy val name : CFGBlock => BlockName =
            attr {
                case cfgBlock @ CFGBlock (Bridge (block), _) =>
                    blockName (function (cfgBlock), block)
            }

        // Name resolver

        /**
         * The resolved target block of a choice exit condition.
         */
        lazy val target : CFGExitCond => Option[CFGBlock] =
            attr {
                case astNode =>
                    resolve (astNode.target) (astNode)
            }

        /**
         * Resolve an underlying block name to get the corresponding CFG block.
         * FIXME: assumes that the block names are unique.
         */
        lazy val resolve : BlockName => CFGASTNode => Option[CFGBlock] =
           paramAttr {
                blockName => (
                    node =>
                        cfgBlocks (node).find { case b => name (b) == blockName }
                )
           }

        // Pretty-printer

        lazy val formatString : CFG => String =
            attr {
                case cfg =>
                    format (cfg).layout
            }

        lazy val format : CFG => Document =
            attr {
                case cfg =>
                    pretty (toDoc (cfg))
            }

        lazy val toDoc : CFGASTNode => Doc =
            attr {

                case cfg @ CFG (Bridge (function), blocks) =>
                    line <> functionName (function) <+> "CFG" <> ":" <>
                        nest (
                           line <>
                           "entry block:" <+> toNameDoc (entry (cfg)) <@>
                           "exit blocks:" <+> hsep (exits (cfg).map (toNameDoc)) <@>
                           vsep (blocks.map (toDoc))
                        )

                case cfgBlock @ CFGBlock (block, exitInfo) =>
                    toNameDoc (cfgBlock) <> ":" <> nest (toDoc (exitInfo))

                case CFGExit (conditions) =>
                    if (conditions == Nil)
                        empty
                    else
                        line <> vsep (conditions.map (toDoc))

                case astNode @ CFGChoice (name, choice, blockName) =>
                    "if" <+> name <+> "==" <+> value (choice) <+> "goto" <+>
                        toTargetDoc (astNode, blockName)

                case astNode @ CFGGoto (blockName) =>
                    "goto" <+> toTargetDoc (astNode, blockName)

            }

        def toNameDoc (cfgBlock : CFGBlock) : Doc =
            text (blockName (function (cfgBlock), cfgBlock.block.cross))

        def toTargetDoc (astNode : CFGASTNode, blockName : BlockName) : Doc =
            resolve (blockName) (astNode).map (toNameDoc).getOrElse ("???")

    }

}
