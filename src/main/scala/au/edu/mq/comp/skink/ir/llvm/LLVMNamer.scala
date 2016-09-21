package au.edu.mq.comp.skink.ir.llvm

import au.edu.mq.comp.smtlib.theories.{ArrayExInt, ArrayExOperators, Core, IntegerArithmetics}
import org.bitbucket.inkytonik.kiama.relation.Tree
import org.scalallvm.assembly.AssemblySyntax._
import org.scalallvm.assembly.AssemblyPrettyPrinter.show

trait LLVMNamer extends Core with IntegerArithmetics with ArrayExInt with ArrayExOperators {

    import org.scalallvm.assembly.ElementProperty
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.smtlib.typedterms.{TypedTerm, VarTerm}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{IntSort, BoolSort, Term}
    import au.edu.mq.comp.smtlib.theories.{ArrayTerm, BoolTerm, IntTerm}

    // Methods for constructing basic terms for named entities

    // Abstract methods

    /**
     * Retrieve the index of a particular occurrence of a program variable
     * in a trace.
     */
    def indexOf(use : Product, s : String) : Int

    // Concrete mthods

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
        arrayTerm(show(name), indexOf(node, show(name)))

    /**
     * Return a term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAt(node : Product, name : Name) : TypedTerm[ArrayTerm[IntTerm], Term] =
        arrayTerm(show(name), scala.math.max(indexOf(node, show(name)) - 1, 0))

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
        varTermI(show(name), indexOf(node, show(name)))

    /**
     * Return a Boolean term that expresses a name when referenced from node.
     */
    def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
        varTermB(show(name), indexOf(node, show(name)))

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

}

class LLVMFunctionNamer(helper : LLVMFunctionHelper, tree : Tree[Product, Product]) extends LLVMNamer {

    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.==>

    import helper._

    val decorators = new Decorators(tree)
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
        case n if tree.isRoot(n) =>
            Map[String, Int]()
        case n @ Binding(name) =>
            bumpcount(in(n), name)
        case n @ Store(_, tipe, from, _, ArrayElement(name, _), _) =>
            bumpcount(in(n), name)
        case n @ Store(_, _, _, _, Named(name), _) =>
            bumpcount(in(n), name)
    }

    /*
     * Retrieve the index of a particular occurrence of a program variable
     * in a trace.
     */
    def indexOf(use : Product, s : String) : Int = {
        stores(use).get(s).getOrElse(0)
    }

}
