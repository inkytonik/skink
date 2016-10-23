package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.smtlib.theories.{ArrayExInt, ArrayExOperators, Core, IntegerArithmetics}
import org.bitbucket.inkytonik.kiama.relation.Tree
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax._
import org.scalallvm.assembly.AssemblyPrettyPrinter.show

trait ArrayElementExtractor {
    def unapply(value : Value) : Option[(Name, Value)]
}

trait LLVMNamer extends Core with IntegerArithmetics with ArrayExInt with ArrayExOperators {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{IntSort, BoolSort, Term}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, IntTerm}
    import org.scalallvm.assembly.ElementProperty

    // Methods for constructing basic terms for named entities

    // Abstract methods

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
     * Make an ArrayTerm for the named variable where `id` is the base name
     * identifier and include an optional index.
     */
    def arrayTerm(id : String, index : Int) : TypedTerm[ArrayTerm[IntTerm], Term] =
        ArrayInt1(termid(id)).indexed(index)

    /**
     * Return an array term that expresses a name when referenced from node.
     */
    def arrayTermAt(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTerm(nameOf(name), indexOf(node, show(name)))

    /**
     * Return a term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAt(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTerm(nameOf(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

    /**
     * Make an integer term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermI(id : String, index : Int) : TypedTerm[IntTerm, Term] =
        new VarTerm(termid(id), IntSort(), Some(index))

    /**
     * Make a Boolean term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermB(id : String, index : Int) : TypedTerm[BoolTerm, Term] =
        new VarTerm(termid(id), BoolSort(), Some(index))

    /**
     * Return an integer term that expresses a name when referenced from node.
     */
    def ntermAtI(node : ASTNode, name : Name) : TypedTerm[IntTerm, Term] =
        varTermI(nameOf(name), indexOf(node, show(name)))

    /**
     * Return a Boolean term that expresses a name when referenced from node.
     */
    def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
        varTermB(nameOf(name), indexOf(node, show(name)))

    /**
     * Return an integer term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermI(name : Name) : TypedTerm[IntTerm, Term] =
        ntermAtI(name, name)

    /**
     * Return a Boolean term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermB(name : Name) : TypedTerm[BoolTerm, Term] =
        ntermAtB(name, name)

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

    val decorators = new Decorators(nametree)
    import decorators._

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
}

class LLVMGlobalNamer(nametree : Tree[Product, Product]) extends LLVMStoreIndexer(nametree) {

    def indexOf(use : Product, s : String) : Int = {
        use match {
            case Global(_) => 0
            case _         => stores(use).get(s).getOrElse(0)
        }
    }

    def nameOf(name : Name) : String = s"global${show(name)}"
}

/**
 * A namer for the given function which names uniquely over the given name tree.
 */
class LLVMFunctionNamer(funanalyser : Analyser, funtree : Tree[ASTNode, FunctionDefinition],
        nametree : Tree[Product, Product], threadId : Int, globalNamer : LLVMGlobalNamer) extends LLVMStoreIndexer(nametree) {

    import org.scalallvm.assembly.{Analyser, ElementProperty}

    val properties = funanalyser.propertiesOfFunction(funtree.root)

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

    /*
     * Retrieve the index of a particular occurrence of a program variable
     * in a trace.
     */
    def indexOf(use : Product, s : String) : Int = {
        def isLocalName(use : Product) : Boolean = {
            use match {
                case Local(_)                              => true
                case Binding(Local(_))                     => true
                case Load(_, _, _, _, Named(Local(_)), _)  => true
                case Store(_, _, _, _, Named(Local(_)), _) => true
                case _ =>
                    false
            }
        }

        if (isLocalName(use))
            stores(use).get(s).getOrElse(0)
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

