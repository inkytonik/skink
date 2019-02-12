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

import au.edu.mq.comp.skink.SkinkConfig
import au.edu.mq.comp.skink.ir.IR
import org.scalallvm.assembly.AssemblySyntax.Program

/**
 * Representation of LLVM IR.
 */
class LLVMIR(ir : Program, config : SkinkConfig) extends IR {

    import au.edu.mq.comp.skink.ir.IRFunction
    import org.scalallvm.assembly.AssemblyPrettyPrinter
    import org.scalallvm.assembly.AssemblySyntax.FunctionDefinition
    import org.scalallvm.assembly.Executor

    // Implementation of IR interface

    def execute() : (String, Int) =
        Executor.execute(ir, config.lli())

    def functions : Vector[IRFunction] =
        ir.items.collect {
            case fd : FunctionDefinition =>
                new LLVMFunction(ir, fd, config)
        }

    def show : String =
        AssemblyPrettyPrinter.show(ir, 5)

    def sortIds(ids : Vector[String])(implicit ordering : Ordering[String]) : Vector[String] =
        ids.sorted

}
