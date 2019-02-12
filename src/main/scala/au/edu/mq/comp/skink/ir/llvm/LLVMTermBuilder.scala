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

import org.bitbucket.franck44.scalasmt.theories.Core

/**
 * Interface for LLVM term builders in all modes.
 */
trait LLVMTermBuilder extends Core {

    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
    import org.scalallvm.assembly.AssemblySyntax.{Block, Item, MetaInstruction, MetaPhiInstruction, MetaTerminatorInstruction, Program}

    /**
     * Return terms that express the semantics of running the given block,
     * (optionally) coming from the given previous block, then leaving the
     * current block with the given choice.
     */
    def blockTerms(block : Block, optPrevBlock : Option[Block], choice : Int) : Vector[TypedTerm[BoolTerm, Term]]

    /**
     * Return terms that express the semantics of a give block exit instruction
     * (terminator) assuming we exit with the given choice.
     */
    def exitTerm(metaInsn : MetaTerminatorInstruction, choice : Int) : TypedTerm[BoolTerm, Term]

    /**
     * Return terms that express the initialisation fo the program,
     * global data initialisation, etc.
     */
    def initTerm(program : Program) : TypedTerm[BoolTerm, Term]

    /**
     * Return terms that express the semantics of the given normal instruction.
     */
    def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term]

    /**
     *  Return terms that express the semantics of the given top-level item.
     */
    def itemTerm(item : Item) : TypedTerm[BoolTerm, Term]

    /**
     * Return terms that express the semantics of a phi instruction, assuming
     * (optionally) control flow from a given previous block.
     */
    def phiInsnTerm(metaInsn : MetaPhiInstruction, optPrevBlock : Option[Block]) : TypedTerm[BoolTerm, Term]

    // Utility methods

    /**
     * Combine terms via conjunction, dealing with case where there are no
     * terms so effect is "true". Any true terms in the sequence are removed.
     */
    def combineTerms(terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] =
        if (terms.isEmpty)
            True()
        else
            terms.reduceLeft((l, r) => if (r == True()) l else l & r)

}
