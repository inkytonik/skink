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

class CITests extends Driver with TestCompilerWithConfig[IR, SkinkConfig] {

    def makeTests(optLevel : Int, mode : String, subpath : String = "") = {
        val path = s"src/test/resources/citests$subpath"
        val args = List(List("-v", "-w", "-", mode, s"-O$optLevel"))
        filetests(s"citests", path, "_true-unreach-call.c", s"_true-unreach-call.verif", argslist = args)
        filetests(s"citests", path, "_false-unreach-call.c", s"_false-unreach-call.O$optLevel.verif", argslist = args)
    }

    val modes = List("-n bit", "-n math")
    val optLevels = List(0, 2)

    for (mode <- modes) {
        for (optLevel <- optLevels) {
            makeTests(optLevel, mode)
        }
    }
    makeTests(2, "-n bit", "/bit")

}
