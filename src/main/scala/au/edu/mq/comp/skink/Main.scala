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

import au.edu.mq.comp.skink.ir.IR
import org.bitbucket.inkytonik.kiama.util.{CompilerBase, Config}

sealed abstract class NumberMode
case class Bit() extends NumberMode
case class Math() extends NumberMode

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

    version(s"${BuildInfo.name} ${BuildInfo.version}")

    lazy val architecture = opt[Int]("architecture", short = 'a',
        descr = "Architecture specified by bits (default: 32)",
        default = Some(32))

    lazy val execute = opt[Boolean]("execute", short = 'x',
        descr = "Execute the target code (default: false)",
        default = Some(false))

    val frontendUsageMessage = "A single frontend from C (default), LLVM"

    val frontendConverter =
        new ValueConverter[Frontend] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[Frontend]] =
                s match {
                    case List((_, List("C"))) =>
                        Right(Some(new CFrontend(config)))
                    case List((_, List("LLVM"))) =>
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
                s match {
                    case List((_, List("bit"))) =>
                        Right(Some(Bit()))
                    case List((_, List("math"))) =>
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

    val solversUsageMessage = "Available SMT solvers: Boolector, CVC4, MathSat (default), SMTInterpol, Yices, Yices-nonIncr, Z3"

    val solversConverter =
        new ValueConverter[List[Solver]] {

            val argType = ArgType.LIST

            def parse(s : List[(String, List[String])]) : Either[String, Option[List[Solver]]] = {
                val allArgs = s.map(_._2).flatten
                val solvers = allArgs.map {
                    case "Boolector"    => Some(Boolector())
                    case "CVC4"         => Some(CVC4())
                    case "MathSat"      => Some(MathSat())
                    case "SMTInterpol"  => Some(SMTInterpol())
                    case "Yices"        => Some(Yices())
                    case "YicesNonIncr" => Some(YicesNonIncr())
                    case "Z3"           => Some(Z3())
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
        descr = "Timeout for SMT solvers in seconds (default : 10s)",
        default = Some(Duration(10, "second")))(solverTimeOutConverter)

    lazy val verifyTarget = opt[Boolean]("verify", short = 'v',
        descr = "Verify the target code (default: false)",
        default = Some(false))

    lazy val witnessFile = opt[String]("witness-file", short = 'w',
        descr = "File into which witness is written (- means standard output, default: witness.graphml)",
        default = Some("witness.graphml"))

}

trait Driver extends CompilerBase[IR, SkinkConfig] {

    import au.edu.mq.comp.skink.ir.IR
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.inkytonik.kiama.output.PrettyPrinterTypes.Document
    import org.bitbucket.inkytonik.kiama.util.Source
    import org.bitbucket.inkytonik.kiama.util.Messaging.Messages
    import org.rogach.scallop.exceptions.ScallopException

    val logger = getLogger(this.getClass)

    override def main(args : Array[String]) {
        logger.info(s"""main: ${args.mkString(" ")}""")
        super.main(args)
    }

    override def createConfig(args : Seq[String]) : SkinkConfig =
        new SkinkConfig(args)

    override def createAndInitConfig(args : Seq[String]) : Either[String, SkinkConfig] =
        try {
            super.createAndInitConfig(args)
        } catch {
            case e : ScallopException =>
                println(e.getMessage())
                sys.exit(1)
        }

    override def processfile(filename : String, config : SkinkConfig) {
        logger.info(s"processfile: $filename")
        super.processfile(filename, config)
    }

    /**
     * Build an IR representation for the given source using the current
     * frontend.
     */
    override def makeast(source : Source, config : SkinkConfig) : Either[IR, Messages] = {
        val frontend = config.frontend()
        logger.info(s"makeast: building IR using ${frontend.name} frontend")
        frontend.buildIR(source, positions)
    }

    /**
     * Processing for IR.
     */
    def process(source : Source, ir : IR, config : SkinkConfig) {

        import au.edu.mq.comp.skink.verifier.Verifier

        for (function <- ir.functions) {

            if (config.verifyTarget()) {
                if (function.name == "main") {
                    logger.info(s"processIR: processing ${function.name}")
                    val verifier = new Verifier(ir, config)
                    verifier.verify(this, function)
                } else {
                    logger.info(s"processIR: skipping ${function.name}")
                }
            }

        }

        if (config.execute()) {
            logger.info("processIR: running program")

            val (output, code) = ir.execute()
            config.output().emit(output)
            if (code != 0)
                config.output().emitln(s"exit code: $code")
        }

    }

    def format(ir : IR) : Document =
        new Document(ir.show, Nil)

}

object Main extends Driver
