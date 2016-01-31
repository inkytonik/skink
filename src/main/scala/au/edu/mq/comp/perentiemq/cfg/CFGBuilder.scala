package au.edu.mq.comp.perentiemq.cfg

import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.bitbucket.inkytonik.kiama.relation.Bridge

/**
 * Base class of all CFG AST nodes.
 */
abstract class CFGASTNode[F, B] extends Product

/**
 * A control flow graph for function consisting of a sequence of CFG blocks.
 */
case class CFG[F, B](function : Bridge[F], blocks : Vector[CFGBlock[F, B]]) extends CFGASTNode[F, B]

/**
 * A CFG block that represents the given underlying `block`.
 */
case class CFGBlock[F, B](block : Bridge[B], exitInfo : CFGExit[F, B]) extends CFGASTNode[F, B]

/**
 * An exit descriptor consisting of zero or more conditions which are
 * to be interpreted in the order given.
 */
case class CFGExit[F, B](conditions : Vector[CFGExitCond[F, B]]) extends CFGASTNode[F, B]

/**
 * Base class of exit conditions representing situations where control
 * transfers from a block to another.
 */
sealed abstract class CFGExitCond[F, B] extends CFGASTNode[F, B] {
    def target : String
}

/**
 * An exit condition that means that if the variable called `name` has the value
 * `choice` then control is transferred to `target`.
 */
case class CFGChoice[F, B, T](name : String, choice : T, target : String) extends CFGExitCond[F, B]

/**
 * An exit condition that means always transfer control to `target`.
 */
case class CFGGoto[F, B](target : String) extends CFGExitCond[F, B]

/**
 * A CFG entry represents a step in the execution of the function represented by the CFG.
 */
sealed abstract class CFGEntry[F, B] {
    val isBlockEntry : Boolean
}

/**
 * A block entry means that a step in the execution evaluated the specified block.
 */
case class CFGBlockEntry[F, B](block : B) extends CFGEntry[F, B] {
    val isBlockEntry = true
}

/**
 * An exit condition entry means that a step in the execution was taken because
 * the given exit condition held.
 */
case class CFGExitCondEntry[F, B](condition : CFGExitCond[F, B]) extends CFGEntry[F, B] {
    val isBlockEntry = false
}

/**
 * Abstract builder for control-flow graphs. The CFGs are layered on top of
 * structure provided by sub-classes. A sub-class provides the type `F` for
 * functions and the type `B` for blocks. Also, the sub-class must provide
 * support methods such as to find the blocks of a function or the exit
 * conditions of a block. From this informaton the builder constructs a
 * structure that directly represents the control flow while retaining
 * access to the underlying structure.
 */
abstract class CFGBuilder[F, B] extends Attribution {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.util.DotConverter
    import au.edu.mq.comp.dot.DOTSyntax.{Attribute, DotSpec, Ident, StringLit}

    // Support methods that descendants must provide

    def blockName(block : B) : String
    def blocksOf(function : F) : Vector[CFGBlock[F, B]]
    def functionName(function : F) : String
    def isExit(block : B) : Boolean

    // Types

    /**
     * The type of NFAs made from the built CFGs.
     */
    type CFGNFA = NFA[String, CFGEntry[F, B]]

    // Construction

    /**
     * Make a CFG from a function.
     */
    lazy val cfg : F => CFG[F, B] =
        attr {
            case function =>
                CFG(Bridge(function), blocksOf(function))
        }

    // NFA support

    /**
     * Return the DOT representation of a CFG NFA.
     */
    def toDot(nfa : NFA[String, CFGEntry[F, B]]) : DotSpec =
        DotConverter.toDot(
            nfa,
            (b : String) => {
                val label = Attribute("label", StringLit(b))
                val style =
                    Attribute("shape", if (nfa.init.contains(b))
                        Ident("circle")
                    else if (nfa.accepting.contains(b))
                        Ident("doublecircle")
                    else
                        Ident("oval"))
                List(label, style)
            },
            (b : String) => '"' + b + '"',
            (e : CFGEntry[F, B]) => e match {
                case CFGBlockEntry(b) =>
                    blockName(b)
                case CFGExitCondEntry(c) =>
                    c.toString
            }
        )

    // CFG analysis

    class CFGAnalyser(cfg : CFG[F, B]) {

        import org.bitbucket.inkytonik.kiama.attribution.Decorators
        import org.bitbucket.inkytonik.kiama.output.PrettyPrinter._
        import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
        import org.bitbucket.inkytonik.kiama.relation.Tree

        val tree = new Tree[CFGASTNode[F, B], CFG[F, B]](cfg)
        val decorators = new Decorators(tree)

        import tree._
        import decorators._

        // CFG properties

        /**
         * The function that is represented by this graph.
         */
        lazy val function : CFGASTNode[F, B] => F =
            atRoot {
                case CFG(Bridge(function), _) =>
                    function
            }

        /**
         * The CFG blocks.
         */
        lazy val cfgBlocks : CFGASTNode[F, B] => Vector[CFGBlock[F, B]] =
            atRoot {
                case cfg : CFG[F, B] =>
                    cfg.blocks
            }

        /**
         * The unique entry block for this CFG. We assume that there is
         * exactly one entry block and it's the first block in the function.
         */
        lazy val entry : CFGASTNode[F, B] => CFGBlock[F, B] =
            atRoot {
                case CFG(Bridge(function), Vector()) =>
                    sys.error(s"entry: ${functionName(function)} has no blocks")
                case CFG(_, entry +: _) =>
                    entry
            }

        /**
         * The exit blocks for this CFG.
         */
        lazy val exits : CFGASTNode[F, B] => Vector[CFGBlock[F, B]] =
            atRoot {
                case CFG(Bridge(function), blocks) =>
                    blocks.filter {
                        case CFGBlock(Bridge(block), _) =>
                            isExit(block)
                    }
            }

        // Block properties

        /**
         * The underlying name of this block.
         */
        lazy val name : CFGBlock[F, B] => String =
            attr {
                case cfgBlock @ CFGBlock(Bridge(block), _) =>
                    blockName(block)
            }

        // Name resolver

        /**
         * The resolved target block of a choice exit condition.
         */
        lazy val target : CFGExitCond[F, B] => Option[CFGBlock[F, B]] =
            attr {
                case astNode =>
                    resolveByName(astNode.target)(astNode)
            }

        /**
         * Resolve an underlying block name to get the corresponding CFG block.
         * FIXME: assumes that the block names are unique.
         */
        lazy val resolveByName : String => CFGASTNode[F, B] => Option[CFGBlock[F, B]] =
            paramAttr {
                blockName =>
                    (
                        node =>
                            cfgBlocks(node).find { case b => name(b) == blockName }
                    )
            }

        /**
         * Resolve an underlying block to get the corresponding CFG block.
         * FIXME: assumes that the block names is only referred to by at most one CFG block.
         */
        lazy val resolveByBlock : B => CFGASTNode[F, B] => Option[CFGBlock[F, B]] =
            attr {
                block =>
                    (
                        node =>
                            cfgBlocks(node).find { case b => b.block.cross == block }
                    )
            }

        // Pretty-printer

        lazy val formatString : CFG[F, B] => String =
            attr {
                case cfg =>
                    format(cfg).layout
            }

        lazy val format : CFG[F, B] => Document =
            attr {
                case cfg =>
                    pretty(toDoc(cfg))
            }

        lazy val toDoc : CFGASTNode[F, B] => Doc =
            attr {

                case cfg @ CFG(Bridge(function), blocks) =>
                    line <> functionName(function) <+> "CFG" <> ":" <>
                        nest(
                            line <>
                                "entry block:" <+> toNameDoc(entry(cfg)) <@>
                                "exit blocks:" <+> hsep(exits(cfg).map(toNameDoc)) <@>
                                vsep(blocks.map(toDoc))
                        )

                case cfgBlock @ CFGBlock(block, exitInfo) =>
                    toNameDoc(cfgBlock) <> ":" <> nest(toDoc(exitInfo))

                case CFGExit(conditions) =>
                    if (conditions == Nil)
                        empty
                    else
                        line <> vsep(conditions.map(toDoc))

                case astNode @ CFGChoice(name, choice, blockName) =>
                    "if" <+> name <+> "==" <+> value(choice) <+> "goto" <+>
                        toTargetDoc(astNode, blockName)

                case astNode @ CFGGoto(blockName) =>
                    "goto" <+> toTargetDoc(astNode, blockName)

            }

        def toNameDoc(cfgBlock : CFGBlock[F, B]) : Doc =
            text(blockName(cfgBlock.block.cross))

        def toTargetDoc(astNode : CFGASTNode[F, B], blockName : String) : Doc =
            resolveByName(blockName)(astNode).map(toNameDoc).getOrElse("???")

    }

}
