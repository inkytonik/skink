/*
 * This file is part of Skink.
 *
 * Copyright (C) 2019
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

import au.edu.mq.comp.skink.verifier.Interpolators

object LLVMInterpolators extends Interpolators {

    import org.bitbucket.inkytonik.kiama.util.Source
    import org.scalallvm.assembly.Assembly
    import org.scalallvm.assembly.AssemblySyntax.{Block, Instruction, Item, PhiInstruction, Program, TerminatorInstruction, Value}
    import xtc.parser.Result

    implicit class LLVMInterpolatorHelper(val sc : StringContext) extends AnyVal {

        def block(args : Any*) : Block =
            interpolate(sc, parseBlock)(args)

        def insn(args : Any*) : Instruction =
            interpolate(sc, parseInsn)(args)

        def item(args : Any*) : Item =
            interpolate(sc, parseItem)(args)

        def phiInsn(args : Any*) : PhiInstruction =
            interpolate(sc, parsePhiInsn)(args)

        def prog(args : Any*) : Program =
            interpolate(sc, parseProg)(args)

        def termInsn(args : Any*) : TerminatorInstruction =
            interpolate(sc, parseTermInsn)(args)

        def value[T](args : Any*) : Value =
            interpolate(sc, parseValue)(args)

    }

    def parseBlock(source : Source) : Block =
        parseLLVM(source, _.pBlock)

    def parseInsn(source : Source) : Instruction =
        parseLLVM(source, _.pInstruction)

    def parseItem(source : Source) : Item =
        parseLLVM(source, _.pItem)

    def parsePhiInsn(source : Source) : PhiInstruction =
        parseLLVM(source, _.pPhiInstruction)

    def parseProg(source : Source) : Program =
        parseLLVM(source, _.pProgram)

    def parseTermInsn(source : Source) : TerminatorInstruction =
        parseLLVM(source, _.pTerminatorInstruction)

    def parseValue(source : Source) : Value =
        parseLLVM(source, _.pValue)

    def parseLLVM[T](source : Source, parser : Assembly => Int => Result) : T = {
        val p = new Assembly(source, positions)
        val pr = parser(p)(0)
        if (pr.hasValue)
            p.value(pr).asInstanceOf[T]
        else {
            val msg = messaging.formatMessage(p.errorToMessage(pr.parseError))
            throw new RuntimeException(msg)
        }
    }

}