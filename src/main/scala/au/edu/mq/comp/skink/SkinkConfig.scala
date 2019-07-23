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

package au.edu.mq.comp.skink

import org.bitbucket.inkytonik.kiama.util.Config

sealed abstract class NumberMode extends Product
case class Bit() extends NumberMode {
    override def toString = "bit"
}
case class Math() extends NumberMode {
    override def toString = "math"
}

abstract class SkinkConfig(args : Seq[String]) extends Config(args) {

    config =>

    import au.edu.mq.comp.skink.c.CFrontend
    import au.edu.mq.comp.skink.ir.llvm.LLVMFrontend
    import org.rogach.scallop.{ArgType, ValueConverter}
    import scala.concurrent.duration.Duration
    import scala.reflect.runtime.universe.TypeTag

    def argStrings(s : List[(String, List[String])]) : List[String] =
        s.map(_._2).flatten.map(_.toLowerCase)

    version(s"${BuildInfo.name} ${BuildInfo.version}")

    val architectureDefault = 32

    lazy val architecture = opt[Int]("architecture", short = 'a',
        descr = s"Architecture specified by bits (default: $architectureDefault)",
        default = Some(architectureDefault))

    val checkTrueWitnessPathDefwault = "./scripts"

    lazy val checkTrueWitnessPath = opt[String]("checktruewitnesspath", noshort = true,
        descr = s"Path to the check-true-witness.sh correctness witness validator directory (default: $checkTrueWitnessPathDefwault)",
        default = Some(checkTrueWitnessPathDefwault))

    val cleanupDefault = false

    lazy val cleanup = opt[Boolean]("cleanup", short = 'c',
        descr = s"Clean up any generated files (default: $cleanupDefault)",
        default = Some(cleanupDefault))

    def driver : Driver

    lazy val executeDefault = false

    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = s"Execute the target code (default: $executeDefault)",
        default = Some(executeDefault))

    val frontendUsageMessage = "A single frontend from C (default), LLVM"

    val frontendConverter =
        new ValueConverter[Frontend] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[Frontend]] =
                argStrings(s) match {
                    case List("c") =>
                        Right(Some(new CFrontend(config)))
                    case List("llvm") =>
                        Right(Some(new LLVMFrontend(config)))
                    case _ =>
                        if (s.isEmpty)
                            Right(None)
                        else
                            Left(s"expected: $frontendUsageMessage")
                }

            val tag = implicitly[TypeTag[Frontend]]

        }

    lazy val frontend = opt[Frontend]("frontend", short = 'f',
        descr = frontendUsageMessage,
        default = Some(new CFrontend(config)))(frontendConverter)

    val fshellw2tPathDefault = "./fshell-w2t"

    lazy val fshellw2tPath = opt[String]("fshellw2tpath", noshort = true,
        descr = s"Path to the fshell-w2t violation witness validator directory (default: $fshellw2tPathDefault)",
        default = Some(fshellw2tPathDefault))

    val functionNameDefault = "main"

    lazy val functionName = opt[String]("functionname", short = 'F',
        descr = s"The name of the function to verify (default: $functionNameDefault)",
        default = Some(functionNameDefault))

    val lliDefault = "lli"

    lazy val lli = opt[String]("lli", noshort = true,
        descr = s"Program to use to execute target code (default: $lliDefault)",
        default = Some(lliDefault))

    val maxIterationsDefault = 40

    lazy val maxIterations = opt[Int]("max", short = 'm',
        descr = s"Maximum number of refinement iterations (default: $maxIterationsDefault)",
        default = Some(maxIterationsDefault))

    val noSliceDefault = false

    lazy val noSlice = opt[Boolean]("noslice", short = 's',
        descr = s"Don't slice candidate traces (default: $noSliceDefault)",
        default = Some(noSliceDefault))

    val numberModeUsageMessage = "A single number mode from bit (default), math"

    val numberModeConverter =
        new ValueConverter[NumberMode] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[NumberMode]] =
                argStrings(s) match {
                    case List("bit") =>
                        Right(Some(Bit()))
                    case List("math") =>
                        Right(Some(Math()))
                    case _ =>
                        if (s.isEmpty)
                            Right(None)
                        else
                            Left(s"expected: $numberModeUsageMessage")
                }

            val tag = implicitly[TypeTag[NumberMode]]

        }

    lazy val numberMode = opt[NumberMode]("num", short = 'n',
        descr = numberModeUsageMessage,
        default = Some(Bit()))(numberModeConverter)

    val optLevelDefault = 2

    lazy val optLevel = opt[Int]("optlevel", short = 'O',
        descr = s"Optimisation level for source compilation (default: $optLevelDefault)",
        default = Some(optLevelDefault))

    val outputWitnessDefault = false

    lazy val outputWitness = opt[Boolean]("output-witness", short = 'W',
        descr = s"Output a witness for the vefification result (default: $outputWitnessDefault)",
        default = Some(outputWitnessDefault))

    val quietDefault = false

    lazy val quiet = opt[Boolean]("quiet", short = 'q',
        descr = s"Don't print output (default: $quietDefault)",
        default = Some(quietDefault))

    val solversDefault = "mathsat,z3"

    lazy val solvers = opt[String]("solvers", short = 'e',
        descr = s"Comma-separated solver names (boolector, cvc4, mathsat, smtinterpol, yices, z3, z3-fpbv) (default: $solversDefault)",
        default = Some(solversDefault))

    val solverTimeOutConverter =
        new ValueConverter[Duration] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[Duration]] =
                s match {
                    case List((_, List(s))) =>
                        if (s.forall(_.isDigit))
                            Right(Some(Duration(s.toLong, "second")))
                        else
                            Left("expected numeric duration in seconds")
                    case List((_, _)) =>
                        Left("expected numeric duration in seconds")
                    case _ =>
                        Right(None)
                }

            val tag = implicitly[TypeTag[Duration]]

        }

    val solverTimeOutDefault = 30

    lazy val solverTimeOut = opt[Duration]("timeout", short = 'o',
        descr = s"Timeout for SMT solvers in seconds (default : $solverTimeOutDefault)",
        default = Some(Duration(solverTimeOutDefault, "second")))(solverTimeOutConverter)

    val verifyDefault = false

    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = s"Verify the target code (default: $verifyDefault)",
        default = Some(verifyDefault))

    val witnessFileDefault = "witness.graphml"

    lazy val witnessFile = opt[String]("witness-file", short = 'w',
        descr = s"File into which witness is written (- means standard output, default: $witnessFileDefault)",
        default = Some(witnessFileDefault))

}
