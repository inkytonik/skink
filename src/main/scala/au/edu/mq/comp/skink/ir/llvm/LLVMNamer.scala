package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.inkytonik.kiama.relation.Tree
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax._
import org.scalallvm.assembly.AssemblyPrettyPrinter.show

/**
 * Interface for extractors of array elements. If successful, the return
 * is the name of the array and a value that encodes the index of the
 * identified element.
 */
trait ArrayElementExtractor {
    def unapply(value : Value) : Option[(Name, Value)]
}

/**
 * Interface for support of naming within structures.
 */
trait LLVMNamer {

    /**
     * Get the default index of a program variable. I.e., the index that
     * should be used for the initial value of that variable.
     */
    def defaultIndexOf(s : String) : Int

    /**
     * Retrieve the index of a particular occurrence of a program variable
     * in a trace.
     */
    def indexOf(use : Product, s : String) : Int

    /**
     * Retrieve the unique name of a particular variable (needed
     * when there are nested/concurrent scopes within a program).
     */
    def nameOf(name : Name) : String

    /**
     * Extractor to match stores to array elements. By default, we don't
     * know if anything is an array, so we always fail.
     */
    val ArrayElement =
        new ArrayElementExtractor {
            def unapply(value : Value) : Option[(Name, Value)] =
                None
        }
}

abstract class LLVMStoreIndexer(nametree : Tree[Product, Product]) extends LLVMNamer {
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.==>
    import org.scalallvm.assembly.{Analyser, ElementProperty}

    val logger = getLogger(this.getClass)

    val decorators = new Decorators(nametree)
    import decorators._

    // Chain keeping track of stores to memory. Each assignment to a
    // local variable or store to memory location is counted so that
    // we can treat each such occurrence in SSA form.
    type StoreMap = Map[String, Int]

    lazy val stores : Chain[StoreMap] =
        chain(storesin)

    def bumpcount(m : StoreMap, name : Name) : StoreMap = {
        val s = nameOf(name)
        val count = m.getOrElse(s, 0)
        m.updated(s, count + 1)
    }

    def storesin(in : Product => StoreMap) : Product ==> StoreMap = {
        case n if nametree.isRoot(n) =>
            Map[String, Int]()
        case n @ Binding(name) =>
            bumpcount(in(n), name)
        case n @ Store(_, tipe, from, _, ArrayElement(name, _), _) =>
            bumpcount(in(n), name)
        case n @ Store(_, _, _, _, Named(name), _) =>
            bumpcount(in(n), name)
    }
}

class LLVMInitNamer extends LLVMNamer {

    def defaultIndexOf(s : String) : Int = 0

    def indexOf(use : Product, s : String) : Int = 0

    def nameOf(name : Name) : String = s"global${show(name)}"
}

/**
 * A namer for global variables
 */
class LLVMGlobalNamer(nametree : Tree[Product, Product]) extends LLVMStoreIndexer(nametree) {

    def defaultIndexOf(s : String) : Int = 0

    override def indexOf(use : Product, s : String) : Int = stores(use).get(s).getOrElse(0)

    def nameOf(name : Name) : String = s"global${show(name)}"
}

/**
 * Naming for a given function which names uniquely over the given name tree.
 */
class LLVMFunctionNamer(funanalyser : Analyser, funtree : Tree[ASTNode, FunctionDefinition],
        nametree : Tree[Product, Product]) extends LLVMNamer {

    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.==>
    import org.scalallvm.assembly.ElementProperty
    import LLVMHelper.nameToString
    import au.edu.mq.comp.skink.Skink.getLogger

    val logger = getLogger(this.getClass)

    // Properties and decoration of function tree

    val properties = funanalyser.propertiesOfFunction(funtree.root)

    val functionName : String = nameToString(funtree.root.global)

    val decorators = new Decorators(nametree)
    import decorators._

    /**
     * Extractor to match stores to array elements. Currently only looks for
     * array element references that have a zero index (to deref the array
     * pointer), followed by the actual index.
     * FIXME: there may well be other cases we should detect.
     */
    override val ArrayElement =
        new ArrayElementExtractor {
            def unapply(value : Value) : Option[(Name, Value)] =
                value match {
                    case Named(name) =>
                        elementProperty(name)
                    case _ =>
                        None
                }
        }

    /*
     * Get the array element property for name, if there is one.
     */
    def elementProperty(name : Name) : Option[(Name, Value)] =
        properties(name).collectFirst {
            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), Const(IntC(i))), ElemIndex(IntT(_), index))) if i == 0 =>
                (array, index)
            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), index))) =>
                (array, index)
        }

    // Chain keeping track of stores to memory. Each assignment to a
    // local variable or store to memory location is counted so that
    // we can treat each such occurrence in SSA form.

    type StoreMap = Map[String, Int]

    lazy val stores : Chain[StoreMap] =
        chain(storesin)

    def bumpcount(m : StoreMap, name : Name) : StoreMap = {
        val s = show(name)
        val count = m.getOrElse(s, 0)
        m.updated(s, count + 1)
    }

    def storesin(in : Product => StoreMap) : Product ==> StoreMap = {
        case n if nametree.isRoot(n) =>
            Map[String, Int]()
        case n @ Binding(name) =>
            bumpcount(in(n), name)
        case n @ Store(_, tipe, from, _, ArrayElement(name, _), _) =>
            bumpcount(in(n), name)
        case n @ Store(_, _, _, _, Named(name), _) =>
            bumpcount(in(n), name)
    }

    def defaultIndexOf(s : String) : Int =
        0

    /**
     * Normally we just access the chain at `use` but nodes that appear
     * in the predecessor specifications of `Phi` nodes are special
     * because they need to use incoming values from the block, not
     * from previous `Phi` nodes (if any). If we are in such a
     * position, we find the block that encloses the `Phi` and use
     * its incoming map.
     */
    def indexOf(use : Product, s : String) : Int = {
        val map =
            enclosingPhi(use) match {
                case Some(phi) =>
                    stores.in(enclosingBlock(phi))
                case _ =>
                    stores(use)
            }
        map.get(s).getOrElse(defaultIndexOf(s))
    }

    // def nameOf(name : Name) : String = s"${show(name)}"

    def nameOf(name : Name) : String = {
        name match {
            case Global(_) =>
                logger.info(s"Naming a global variable for thread threadId")
                show(name)
            case Local(_) =>
                logger.info(s"Naming a local variable for thread threadId")
                s"$functionName.${show(name)}"
        }
    }

    /**
     * The enclosing phi instruction of a node in a block, if there is one
     * and the node is in a phi predecessor specification.
     */
    val enclosingPhi : Product => Option[Phi] =
        downOpt {
            case nametree.parent.pair(_ : PhiPredecessor, phi : Phi) =>
                phi
        }

    /**
     * The enclosing block of a node in a block.
     */
    val enclosingBlock : Product => Block =
        downErr {
            case block : Block =>
                block
        }

}

/**
 * Naming for a given function which names uniquely over the given name tree.
 */
class LLVMTraceNamer(funanalyser : Analyser, funtree : Tree[ASTNode, FunctionDefinition],
        nametree : Tree[Product, Product]) extends LLVMNamer {

    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.==>
    import org.scalallvm.assembly.ElementProperty
    import LLVMHelper.nameToString
    import au.edu.mq.comp.skink.Skink.getLogger

    val logger = getLogger(this.getClass)

    // Properties and decoration of function tree

    val properties = funanalyser.propertiesOfFunction(funtree.root)

    val functionName : String = nameToString(funtree.root.global)

    val decorators = new Decorators(nametree)
    import decorators._

    /**
     * Extractor to match stores to array elements. Currently only looks for
     * array element references that have a zero index (to deref the array
     * pointer), followed by the actual index.
     * FIXME: there may well be other cases we should detect.
     */
    override val ArrayElement =
        new ArrayElementExtractor {
            def unapply(value : Value) : Option[(Name, Value)] =
                value match {
                    case Named(name) =>
                        elementProperty(name)
                    case _ =>
                        None
                }
        }

    /*
     * Get the array element property for name, if there is one.
     */
    def elementProperty(name : Name) : Option[(Name, Value)] =
        properties(name).collectFirst {
            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), Const(IntC(i))), ElemIndex(IntT(_), index))) if i == 0 =>
                (array, index)
            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), index))) =>
                (array, index)
        }

    // Chain keeping track of stores to memory. Each assignment to a
    // local variable or store to memory location is counted so that
    // we can treat each such occurrence in SSA form.

    type StoreMap = Map[String, Int]

    lazy val stores : Chain[StoreMap] =
        chain(storesin)

    def bumpcount(m : StoreMap, name : Name) : StoreMap = {
        val s = show(name)
        val count = m.getOrElse(s, 0)
        m.updated(s, count + 1)
    }

    def storesin(in : Product => StoreMap) : Product ==> StoreMap = {
        case n if nametree.isRoot(n) =>
            Map[String, Int]()
        case n @ Binding(name) =>
            bumpcount(in(n), name)
        case n @ Store(_, tipe, from, _, ArrayElement(name, _), _) =>
            bumpcount(in(n), name)
        case n @ Store(_, _, _, _, Named(name), _) =>
            bumpcount(in(n), name)
    }

    // type ThreadId = Int

    lazy val thread : Chain[Int] = chain(threadidsout)

    def threadidsout(out : Product => Int) : Product ==> Int = {

        case n if nametree.isRoot(n) => 0
        case ThreadId(k)             => k
    }

    def defaultIndexOf(s : String) : Int =
        0

    /**
     * Normally we just access the chain at `use` but nodes that appear
     * in the predecessor specifications of `Phi` nodes are special
     * because they need to use incoming values from the block, not
     * from previous `Phi` nodes (if any). If we are in such a
     * position, we find the block that encloses the `Phi` and use
     * its incoming map.
     */
    def indexOf(use : Product, s : String) : Int = {
        val map =
            enclosingPhi(use) match {
                case Some(phi) =>
                    stores.in(enclosingBlock(phi))
                case _ =>
                    stores(use)
            }
        map.get(s).getOrElse(defaultIndexOf(s))
    }

    def threadIdOf(use : Product) : Int = thread.in(use)
    // def nameOf(name : Name) : String = s"${show(name)}"

    def nameOf(name : Name) : String = {
        name match {
            case Global(_) =>
                logger.info(s"Naming a global variable for thread threadId")
                s"t${threadIdOf(name)}.${show(name)}"
            case Local(_) =>
                logger.info(s"Naming a local variable for thread threadId")
                s"t${threadIdOf(name)}.$functionName.${show(name)}"
        }
    }

    /**
     * The enclosing phi instruction of a node in a block, if there is one
     * and the node is in a phi predecessor specification.
     */
    val enclosingPhi : Product => Option[Phi] =
        downOpt {
            case nametree.parent.pair(_ : PhiPredecessor, phi : Phi) =>
                phi
        }

    /**
     * The enclosing block of a node in a block.
     */
    val enclosingBlock : Product => Block =
        downErr {
            case block : Block =>
                block
        }

}
