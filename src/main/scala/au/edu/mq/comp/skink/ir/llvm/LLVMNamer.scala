/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
 * Franck Cassez, Anthony M. Sloane, Matthew Roberts.
 *
 * Skink is free software: you can redistribute it and/or modify it  under
 * the terms of the  GNU Lesser General Public License as published by the
 * Free Software Foundation,  either version 3 of the License, or (at your
 * option) any later version.
 *
 * Skink is distributed  in the hope  that it will  be useful, but WITHOUT
 * ANY WARRANTY;  without  even the implied   warranty  of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Skink.  (See files COPYING and  COPYING.LESSER.)  If not, see
 * <http://www.gnu.org/licenses/>.
 */

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
 * As for `ArrayElementExtractor` but for constant values.
 */
trait ArrayElementCExtractor {
    def unapply(constantValue : ConstantValue) : Option[(Name, Value)]
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

    /**
     * As for `ArrayElement` but for constant values.
     */
    val ArrayElementC =
        new ArrayElementCExtractor {
            def unapply(constantValue : ConstantValue) : Option[(Name, Value)] =
                None
        }

    /*
     * Get the array element property for name, if there is one.
     * By default, there isn't one.
     */
    def elementProperty(name : Name) : Option[(Name, Value)] =
        None

}

/**
 * Naming for a given function which names uniquely over the given name tree.
 */
class LLVMFunctionNamer(funanalyser : Analyser, funtree : Tree[ASTNode, FunctionDefinition],
        nametree : Tree[Product, Product]) extends LLVMNamer {

    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.relation.NodeNotInTreeException
    import org.bitbucket.inkytonik.kiama.util.Comparison.same
    import org.bitbucket.inkytonik.kiama.==>
    import org.scalallvm.assembly.ElementProperty

    // Properties and decoration of function tree

    val properties = funanalyser.propertiesOfFunction(funtree.root)
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
                    case Const(ArrayElementC(name, index)) =>
                        Some((name, index))
                    case _ =>
                        None
                }
        }

    override val ArrayElementC =
        new ArrayElementCExtractor {
            def unapply(valconstantValueue : ConstantValue) : Option[(Name, Value)] =
                valconstantValueue match {
                    case GetElementPtrC(_, _, _, NameC(name), Vector(ElemIndex(IntT(_), Const(IntC(i))), ElemIndex(IntT(_), index))) if i == 0 =>
                        Some((name, index))
                    case _ =>
                        None
                }
        }

    /*
     * Get the array element property for name, if there is one.
     */
    override def elementProperty(name : Name) : Option[(Name, Value)] =
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
     * its incoming map. If the use is not in this function then it's
     * global data and we are referring to its initial value, so a
     * default index is returned.
     */
    def indexOf(use : Product, s : String) : Int =
        try {
            val map =
                enclosingPhi(use) match {
                    case Some(phi) =>
                        stores.in(enclosingBlock(phi))
                    case _ =>
                        stores(use)
                }
            map.get(s).getOrElse(defaultIndexOf(s))
        } catch {
            case e @ NodeNotInTreeException(t : Product) if same(t, use) =>
                // Not in the function so global and it's the initial version
                defaultIndexOf(s)
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
