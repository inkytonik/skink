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
case class CFGChoice[F,B,T] (name : String, choice : T, target : String) extends CFGExitCond[F,B]

/**
 * An exit condition that means always transfer control to `target`.
 */
case class CFGGoto[F,B] (target : String) extends CFGExitCond[F,B]

/**
 * A CFG entry represents a step in the execution of the function represented
 * by the CFG. It means that the constituent block has been executed and the
 * condition describes how execution flows to the next block that is executed.
 */
case class CFGEntry[F,B] (block : B, condition : CFGExitCond[F,B])

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

    import au.edu.mq.comp.automat.auto.NFA

    // Support methods that descendants must provide

    def blockName (function : F, block : B) : String
    def blocksOf (function : F) : Vector[CFGBlock[F,B]]
    def functionName (function : F) : String
    def isEntry (function : F, block : B) : Boolean
    def isExit (function : F, block : B) : Boolean

    // Types

    /**
     * The type of NFAs made from the built CFGs.
     */
    type CFGNFA = NFA[CFGBlock[F,B],CFGEntry[F,B]]

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

        import au.edu.mq.comp.automat.edge.Edge
        import au.edu.mq.comp.automat.edge.Implicits._
        import au.edu.mq.comp.automat.util.DotConverter
        import au.edu.mq.comp.dot.DOTSyntax.{Attribute, DotSpec, Ident, StringLit}
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
                    resolveByName (astNode.target) (astNode)
            }

        /**
         * Resolve an underlying block name to get the corresponding CFG block.
         * FIXME: assumes that the block names are unique.
         */
        lazy val resolveByName : String => CFGASTNode[F,B] => Option[CFGBlock[F,B]] =
            paramAttr {
                blockName => (
                    node =>
                        cfgBlocks (node).find { case b => name (b) == blockName }
                )
            }

        /**
         * Resolve an underlying block to get the corresponding CFG block.
         * FIXME: assumes that the block names is only referred to by at most one CFG block.
         */
        lazy val resolveByBlock : B => CFGASTNode[F,B] => Option[CFGBlock[F,B]] =
            attr {
                block => (
                    node =>
                        cfgBlocks (node).find { case b => b.block.cross == block }
                )
            }

        // Conversion to an NFA

        /**
         * Build an NFA that represents the error traces through this CFG.
         * States are blocks of the CFG. Edges are labelled with entries that
         * describe the transition represented by the edge. The only accepting
         * state of the NFA is the .error block (if it exists).
         */
        lazy val nfa : CFG[F,B] => CFGNFA =
            attr {
                case cfg @ CFG (_, blocks) =>
                    val init = Set (entry (cfg))
                    val edges = {
                        val buf = new ListBuffer[Edge[CFGBlock[F,B],CFGEntry[F,B]]]
                        for (srcblock <- cfgBlocks (cfg)) {
                            for (exitcond <- srcblock.exitInfo.conditions) {
                                target (exitcond) match {
                                    case Some (tgtblock) =>
                                        val label = CFGEntry[F,B] (srcblock.block.cross, exitcond)
                                        buf += (srcblock ~> tgtblock) (label)
                                    case None =>
                                        // Do nothing
                                }
                            }
                        }
                        buf.toSet
                    }
                    val accepting = resolveByName (".error") (cfg).toSet
                    NFA (init, edges, accepting)
            }

        /**
         * Return the DOT representation of a CFG NFA.
         */
        def toDot (nfa : NFA[CFGBlock[F,B],CFGEntry[F,B]]) : DotSpec =
            DotConverter.toDot (
                nfa,
                (b : CFGBlock[F,B]) => {
                    val label = Attribute ("label", StringLit (name (b)))
                    val style =
                        Attribute ("shape", if (nfa.init.contains (b))
                                                Ident ("circle")
                                            else if (nfa.accepting.contains (b))
                                                Ident ("doublecircle")
                                            else
                                                Ident ("oval"))
                    List (label, style)
                },
                (b : CFGBlock[F,B]) => '"' + name (b) + '"',
                (l : CFGEntry[F,B]) =>  l.condition.toString
            )

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
            resolveByName (blockName) (astNode).map (toNameDoc).getOrElse ("???")

    }

}
