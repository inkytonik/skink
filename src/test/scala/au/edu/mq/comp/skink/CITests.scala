/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2018
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

package au.edu.mq.comp.skink

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.TestCompilerWithConfig

trait CITests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {
    val witnessFormats = List("trace", "nondet")
    val optLevels = List(0, 2)

    def makeTests(path : String, optLevel : Int, witnessFormat : String, extraArgs : List[String] = List()) = {
        val args = List(List("-v", "-w", "-", s"-O$optLevel", "-W", witnessFormat) ++ extraArgs)
        filetests(s"citests ($path)", s"src/test/resources/citests/$path", "_true-unreach-call.c",
            s"_true-unreach-call.verif", argslist = args)
        filetests(s"citests ($path)", s"src/test/resources/citests/$path", "_false-unreach-call.c",
            s"_false-unreach-call.O$optLevel.$witnessFormat.verif", argslist = args)
    }
}

class MathCITests extends CITests {
    for (witnessFormat <- witnessFormats) {
        for (optLevel <- optLevels) {
            makeTests("math", optLevel, witnessFormat)
        }
        makeTests(s"math/function-Yices-nonIncr", 2, witnessFormat)
        makeTests(s"math/function-Z3", 2, witnessFormat)
    }
}

class BitCITests extends CITests {
    for (witnessFormat <- witnessFormats) {
        for (optLevel <- optLevels) {
            makeTests("bit", optLevel, witnessFormat)
        }
    }
}
