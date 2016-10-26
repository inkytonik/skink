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
     * Retrieve the index of a particular occurrence of a program variable
     * in a trace.
     */
    def indexOf(use : Product, s : String) : Int

    /**
     * Retrieve the unique name of a particular variable (needed
     * when there are nested/concurrent scopes within a program).
     */
    def nameOf(name : Name) : String

    // Concrete methods

    /**
     * Return the id that should be used in the term for a variable with
     * a given base id. Default: return `baseid`.
     */
    def termid(baseid : String) : String =
        baseid

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
    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.==>
    import org.scalallvm.assembly.{Analyser, ElementProperty}

    var stores = Map[String, Int]()

    def bumpcount(s : String) = {
        stores = stores + (s -> (stores.get(s).getOrElse(0) + 1))
    }

    def indexOf(use : Product, s : String) : Int = {
        use match {
            case n @ Binding(name) =>
                bumpcount(s)
            case n @ Store(_, _, _, _, Named(name), _) =>
                bumpcount(s)
            case _ =>
            // Do Nothing
        }
        stores.get(s).getOrElse(0)
    }
}

class LLVMInitNamer extends LLVMNamer {

    def indexOf(use : Product, s : String) : Int = {
        return 0
    }

    def nameOf(name : Name) : String = s"global${show(name)}"
}

class LLVMGlobalNamer extends LLVMNamer {

    var stores = Map[String, Int]()

    def bumpcount(s : String) = {
        stores = stores + (s -> (stores.get(s).getOrElse(0) + 1))
    }

    def indexOf(use : Product, s : String) : Int = {
        use match {
            case n @ Binding(name) =>
                bumpcount(s)
            case n @ Store(_, _, _, _, Named(name), _) =>
                bumpcount(s)
            case _ =>
            // Do Nothing
        }
        stores.get(s).getOrElse(0)
    }

    def nameOf(name : Name) : String = s"global${show(name)}"
}

/**
 * Naming for a given function which names uniquely over the given name tree.
 */
class LLVMFunctionNamer(funanalyser : Analyser, funtree : Tree[ASTNode, FunctionDefinition],
        nametree : Tree[Product, Product], threadId : Int, globalNamer : LLVMGlobalNamer) extends LLVMStoreIndexer(nametree) {

    import org.scalallvm.assembly.{Analyser, ElementProperty}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger

    private val logger = getLogger(this.getClass)

    // Properties of function tree

    val properties = funanalyser.propertiesOfFunction(funtree.root)

    /**
     * Extractor to match stores to array elements. Currently only looks for
     * array element references that have a zero index (to deref the array
     * pointer), followed by the actual index.
     * FIXME: there may well be other cases we should detect.
     */
    //    override val ArrayElement =
    //        new ArrayElementExtractor {
    //            def unapply(value : Value) : Option[(Name, Value)] =
    //                value match {
    //                    case Named(name) if isLocalName(name) =>
    //                        logger.info(s"Calling element property on $name")
    //                        elementProperty(name)
    //                    case _ =>
    //                        None
    //                }
    //        }

    //    /*
    //     * Get the array element property for name, if there is one.
    //     */
    //    def elementProperty(name : Name) : Option[(Name, Value)] =
    //        properties(name).collectFirst {
    //            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), Const(IntC(i))), ElemIndex(IntT(_), index))) if i == 0 =>
    //                (array, index)
    //            case ElementProperty(Named(array), Vector(ElemIndex(IntT(_), index))) =>
    //                (array, index)
    //        }

    /*
     * Retrieve the index of a particular occurrence of a program variable
     * in a trace.
     */
    override def indexOf(use : Product, s : String) : Int = {
        logger.info(s"Getting indexOf $use")
        if (isLocalName(use))
            super.indexOf(use, s)
        else
            globalNamer.indexOf(use, s)
    }

    def nameOf(name : Name) : String = {
        name match {
            case Global(_) => globalNamer.nameOf(name)
            case Local(_)  => s"thread$threadId${show(name)}"
        }
    }
}

