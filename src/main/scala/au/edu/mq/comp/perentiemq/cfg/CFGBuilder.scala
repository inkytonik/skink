package au.edu.mq.comp.perentiemq.cfg

import org.kiama.attribution.Attribution
import org.kiama.relation.Bridge

/**
 * Base class of all CFG AST nodes.
 */
abstract class CFGASTNode[F,B] extends Product

/**
 * A control flow graph for function consisting of a sequence of CFG blocks.
 */
case class CFG[F,B] (function : Bridge[F], blocks : Vector[CFGBlock[F,B]]) extends CFGASTNode[F,B]

/**
 * A CFG block that represents the given underlying `block`.
 */
case class CFGBlock[F,B] (block : Bridge[B], exitInfo : CFGExit[F,B]) extends CFGASTNode[F,B]

/**
 * An exit descriptor consisting of zero or more conditions which are
 * to be interpreted in the order given.
 */
case class CFGExit[F,B] (conditions : Vector[CFGExitCond[F,B]]) extends CFGASTNode[F,B]

/**
 * Base class of exit conditions representing situations where control
 * transfers from a block to another.
 */
sealed abstract class CFGExitCond[F,B] extends CFGASTNode[F,B] {
    def target : String
}

/**
 * An exit condition that means that if the variable called `name` has the value
 * `choice` then control is transferred to `target`.
 */
case class CFGChoice[F,B] (name : String, choice : Int, target : String) extends CFGExitCond[F,B]

/**
 * An exit condition that means always transfer control to `target`.
 */
case class CFGGoto[F,B] (target : String) extends CFGExitCond[F,B]

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

    // Support methods that descendants must provide

    def blockName (function : F, block : B) : String
    def blocksOf (function : F) : Vector[CFGBlock[F,B]]
    def functionName (function : F) : String
    def isEntry (function : F, block : B) : Boolean
    def isExit (function : F, block : B) : Boolean

    // Construction

    /**
     * Make a CFG from a function.
     */
    lazy val cfg : F => CFG[F,B] =
        attr {
            case function =>
                CFG (Bridge (function), blocksOf (function))
        }

    // CFG analysis

    class CFGAnalyser (cfg : CFG[F,B]) {

        import au.edu.mq.comp.automat.auto.NFA
        import au.edu.mq.comp.automat.edge.Edge
        import au.edu.mq.comp.automat.edge.Implicits._
        import org.kiama.attribution.Decorators
        import org.kiama.output.PrettyPrinter._
        import org.kiama.output.PrettyPrinterTypes.Document
        import org.kiama.relation.Tree
        import scala.collection.mutable.ListBuffer

        val tree = new Tree[CFGASTNode[F,B],CFG[F,B]] (cfg)
        val decorators = new Decorators (tree)

        import tree._
        import decorators._

        // CFG properties

        /**
         * The function that is represented by this graph.
         */
        lazy val function : CFGASTNode[F,B] => F =
            atRoot {
                case CFG (Bridge (function), _) =>
                    function
            }

        /**
         * The CFG blocks.
         */
        lazy val cfgBlocks : CFGASTNode[F,B] => Vector[CFGBlock[F,B]] =
            atRoot {
                case cfg : CFG[F,B] =>
                    cfg.blocks
            }

        /**
         * The unique entry block for this CFG. It is a run-time error if the
         * underlying function has more than one entry block.
         */
        lazy val entry : CFGASTNode[F,B] => CFGBlock[F,B] =
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
        lazy val exits : CFGASTNode[F,B] => Vector[CFGBlock[F,B]] =
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
        lazy val name : CFGBlock[F,B] => String =
            attr {
                case cfgBlock @ CFGBlock (Bridge (block), _) =>
                    blockName (function (cfgBlock), block)
            }

        // Name resolver

        /**
         * The resolved target block of a choice exit condition.
         */
        lazy val target : CFGExitCond[F,B] => Option[CFGBlock[F,B]] =
            attr {
                case astNode =>
                    resolve (astNode.target) (astNode)
            }

        /**
         * Resolve an underlying block name to get the corresponding CFG block.
         * FIXME: assumes that the block names are unique.
         */
        lazy val resolve : String => CFGASTNode[F,B] => Option[CFGBlock[F,B]] =
           paramAttr {
                blockName => (
                    node =>
                        cfgBlocks (node).find { case b => name (b) == blockName }
                )
           }

        // Conversion to an NFA

        /**
         * Node wrapper for CFG blocks. This is necessary since the automata
         * library uses `toString` to print NFA states but the class definition
         * for `CFGBlock` can't do a meaningful job since it only has generic
         * access to the underlying block.
         */
        case class Node (cfgBlock : CFGBlock[F,B]) {
            override def toString = '"' + name (cfgBlock) + '"'
        }

        /**
         * Build an NFA that represents this CFG. Nodes are CFG blocks and
         * edges show possible transitions from block to block. Edges are
         * labelled by the exit condition that enables that transition.
         */
        lazy val nfa : CFG[F,B] => NFA[Node,CFGExitCond[F,B]] =
            attr {
                case cfg @ CFG (_, blocks) =>
                    val init = Set (Node (entry (cfg)))
                    val edges = {
                        val buf = new ListBuffer[Edge[Node,CFGExitCond[F,B]]]
                        for (srcblock <- cfgBlocks (cfg)) {
                            for (exitcond <- srcblock.exitInfo.conditions) {
                                target (exitcond) match {
                                    case Some (tgtblock) =>
                                        buf += (Node (srcblock) ~> Node (tgtblock)) (exitcond)
                                    case None =>
                                        // Do nothing
                                }
                            }
                        }
                        buf.toSet
                    }
                    val accepting = exits (cfg).map (Node).toSet
                    NFA (init, edges, accepting)
            }

        // Pretty-printer

        lazy val formatString : CFG[F,B] => String =
            attr {
                case cfg =>
                    format (cfg).layout
            }

        lazy val format : CFG[F,B] => Document =
            attr {
                case cfg =>
                    pretty (toDoc (cfg))
            }

        lazy val toDoc : CFGASTNode[F,B] => Doc =
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

        def toNameDoc (cfgBlock : CFGBlock[F,B]) : Doc =
            text (blockName (function (cfgBlock), cfgBlock.block.cross))

        def toTargetDoc (astNode : CFGASTNode[F,B], blockName : String) : Doc =
            resolve (blockName) (astNode).map (toNameDoc).getOrElse ("???")

    }

}
