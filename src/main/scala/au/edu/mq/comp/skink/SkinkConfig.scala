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
    override def toString = "-n bit"
}
case class Math() extends NumberMode {
    override def toString = "-n math"
}

sealed abstract class Solver
case class Boolector() extends Solver
case class CVC4() extends Solver
case class MathSat() extends Solver
case class SMTInterpol() extends Solver
case class Yices() extends Solver
case class YicesNonIncr() extends Solver
case class Z3() extends Solver

class SkinkConfig(args : Seq[String]) extends Config(args) {

    config =>

    import au.edu.mq.comp.skink.c.CFrontend
    import au.edu.mq.comp.skink.ir.llvm.LLVMFrontend
    import org.rogach.scallop.{ArgType, ValueConverter}
    import scala.concurrent.duration.Duration
    import scala.reflect.runtime.universe.TypeTag

    def argStrings(s : List[(String, List[String])]) : List[String] =
        s.map(_._2).flatten.map(_.toLowerCase)

    version(s"${BuildInfo.name} ${BuildInfo.version}")

    lazy val architecture = opt[Int]("architecture", short = 'a',
        descr = "Architecture specified by bits (default: 32)",
        default = Some(32))

    lazy val cleanup = opt[Boolean]("cleanup", short = 'c',
        descr = "Clean up any generated files (default: false)",
        default = Some(false))

    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = "Execute the target code (default: false)",
        default = Some(false))

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

    lazy val lli = opt[String]("lli", noshort = true,
        descr = "Program to use to execute target code (default: lli)",
        default = Some("lli"))

    lazy val maxIterations = opt[Int]("max", short = 'm',
        descr = "Maximum number of refinement iterations (default: 40)",
        default = Some(40))

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

    lazy val optLevel = opt[Int]("optlevel", short = 'O',
        descr = "Optimisation level for source compilation (default: 2)",
        default = Some(2))

    lazy val quiet = opt[Boolean]("quiet", short = 'q',
        descr = "Don't print output (default: false)",
        default = Some(false))

    val solversUsageMessage = "Available SMT solvers: Boolector, CVC4, MathSat (default), SMTInterpol, Yices, Yices-nonIncr, Z3"

    val solversConverter =
        new ValueConverter[List[Solver]] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[List[Solver]]] = {
                val solvers = argStrings(s).map {
                    case "boolector"    => Some(Boolector())
                    case "cvc4"         => Some(CVC4())
                    case "mathsat"      => Some(MathSat())
                    case "smtinterpol"  => Some(SMTInterpol())
                    case "yices"        => Some(Yices())
                    case "yicesnonincr" => Some(YicesNonIncr())
                    case "z3"           => Some(Z3())
                    case _              => None
                }
                if (solvers.isEmpty)
                    Right(None)
                else if (solvers.contains(None))
                    Left(solversUsageMessage)
                else
                    Right(Some(solvers.map(_.get)))
            }

            val tag = implicitly[TypeTag[List[Solver]]]

        }

    lazy val solvers = opt[List[Solver]]("solver", short = 'e',
        descr = solversUsageMessage,
        default = Some(List(MathSat())))(solversConverter)

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

    lazy val solverTimeOut = opt[Duration]("timeout", short = 'o',
        descr = "Timeout for SMT solvers in seconds (default : 30s)",
        default = Some(Duration(30, "second")))(solverTimeOutConverter)

    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = "Verify the target code (default: false)",
        default = Some(false))

    lazy val witnessFile = opt[String]("witness-file", short = 'w',
        descr = "File into which witness is written (- means standard output, default: witness.graphml)",
        default = Some("witness.graphml"))

}
