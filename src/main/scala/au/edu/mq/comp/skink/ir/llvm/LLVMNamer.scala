/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2019
 * Programming Languages and Verification Research Group
 * Macquarie University
 *
 * Skink is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Skink is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * See COPYING and COPYING.LESSER for full license terms.
 * More information at http://www.gnu.org/licenses.
 */

package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.inkytonik.kiama.relation.Tree
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax._
import org.scalallvm.assembly.AssemblyPrettyPrinter.show

/**
 * Interface for support of naming within structures.
 */
trait LLVMNamer {

    /**
     * Get the default index of a program variable. I.e., the index that
     * should be used for the initial value of that variable.
     */
    def defaultIndexOf(name : Name) : Int

    /**
     * Retrieve the index of a particular occurrence of a program variable
     * in a trace.
     */
    def indexOf(use : Product, name : Name) : Int

    /**
     * Return the id that should be used in the term for a variable with
     * a given base id. Default: return `baseid`.
     */
    def termid(baseid : String) : String =
        baseid

    /*
     * Get the array element property for name, if there is one.
     */
    def elementProperty(name : Name) : Option[(Name, Value)]

}

/**
 * Naming for a given function which names uniquely over the given name tree.
 */
class LLVMFunctionNamer(funanalyser : Analyser, funtree : Tree[ASTNode, FunctionDefinition],
    nametree : Tree[Product, Product],
    helper : LLVMHelper) extends LLVMNamer {

    import org.bitbucket.inkytonik.kiama.attribution.Decorators
    import org.bitbucket.inkytonik.kiama.relation.NodeNotInTreeException
    import org.bitbucket.inkytonik.kiama.util.Comparison.same
    import org.bitbucket.inkytonik.kiama.==>
    import org.scalallvm.assembly.ElementProperty

    // Properties and decoration of function tree

    val properties = funanalyser.propertiesOfFunction(funtree.root)
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
        case n @ Store(_, _, _, _, Named(name), _) =>
            bumpcount(in(n), name)
        case n @ helper.LibFunctionCall1(_, _, "fesetround", _, _) =>
            bumpcount(in(n), helper.fprmodeName)
    }

    def defaultIndexOf(name : Name) : Int =
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
    def indexOf(use : Product, name : Name) : Int =
        try {
            val map =
                enclosingPhi(use) match {
                    case Some(phi) =>
                        stores.in(enclosingBlock(phi))
                    case _ =>
                        stores(use)
                }
            map.get(show(name)).getOrElse(defaultIndexOf(name))
        } catch {
            case e @ NodeNotInTreeException(t : Product) if same(t, use) =>
                // Not in the function so global and it's the initial version
                defaultIndexOf(name)
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

}
