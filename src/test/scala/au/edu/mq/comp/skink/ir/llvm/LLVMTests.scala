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

import org.bitbucket.inkytonik.kiama.util.Tests

trait LLVMTests extends Tests {

    import au.edu.mq.comp.skink.{Main, SkinkConfig}
    import org.bitbucket.inkytonik.kiama.relation.Tree
    import org.bitbucket.inkytonik.kiama.util.{Positions, Source, StringSource}
    import org.scalallvm.assembly.Analyser
    import org.scalallvm.assembly.Assembly
    import org.scalallvm.assembly.AssemblySyntax.{ASTNode, FunctionDefinition, Program}

    case class ProgramSetup(
        source : Source,
        program : Program,
        function : LLVMFunction,
        analyser : Analyser,
        namer : LLVMNamer,
        helper : LLVMHelper,
        config : SkinkConfig
    )

    /**
     * Return all of the information needed to process the given program text.
     * Assumes the function of interest is the first one.
     */
    def setupProgram(prog : String) : ProgramSetup = {
        val config = Main.createConfig(Seq())
        config.verify()

        val namer = new DummyNamer
        val helper = new LLVMHelper(config)

        val source = StringSource(prog)
        val (program, func) = parseProgram(source, config)
        val tree = new Tree[ASTNode, FunctionDefinition](func.function)
        val analyser = new Analyser(tree)

        ProgramSetup(source, program, func, analyser, namer, helper, config)
    }

    def parseProgram(source : Source, config : SkinkConfig) : (Program, LLVMFunction) = {
        val positions = new Positions
        val p = new Assembly(source, positions)
        val pr = p.pProgram(0)
        if (pr.hasValue) {
            val prog = p.value(pr).asInstanceOf[Program]
            val funs = prog.items.collect {
                case func : FunctionDefinition =>
                    new LLVMFunction(source, source, prog, func, config)
            }
            if (funs.length != 1)
                fail(s"parseProgram: expected exactly one function, got ${funs.length}")
            (prog, funs(0))
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

}
