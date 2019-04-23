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

package au.edu.mq.comp.skink.verifier

/**
 * Helper code needed in multiple modules.
 */
object Helper {

    import au.edu.mq.comp.skink.{Logger, SkinkConfig}
    import java.io.File
    import java.lang.Double.longBitsToDouble
    import java.lang.Float.intBitsToFloat
    import java.math.BigInteger
    import org.bitbucket.inkytonik.kiama.util.Filenames.makeTempFilename
    import org.bitbucket.inkytonik.kiama.util.IO.{createFile, deleteFile}
    import org.bitbucket.inkytonik.kiama.util.Messaging.{error, Messages}
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import org.bitbucket.franck44.automat.auto.NFA
    import org.bitbucket.franck44.automat.util.DotConverter
    import org.bitbucket.franck44.dot.DOTPrettyPrinter
    import org.bitbucket.franck44.dot.DOTSyntax.{Attribute, Ident, StringLit}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import scala.math.pow
    import scala.sys.process._

    def convertFromBase(s : String, base : Int) : Long =
        new BigInteger(s, base).longValue()

    def longToSigned(l : Long, bytes : Int) : Long =
        bytes match {
            case 1 => l.toByte
            case 2 => l.toShort
            case 4 => l.toInt
            case _ => l
        }

    def intValue(s : String, desc : String = "") : (String, String) = {
        val l = convertFromBase(s, 10)
        val comment =
            if (desc == "")
                s"hex: ${l.toHexString}"
            else
                desc
        (s, comment)
    }

    def longToRealString(l : Long, bytes : Int) : String =
        bytes match {
            case 4 => intBitsToFloat(l.toInt).toString
            case 8 => longBitsToDouble(l).toString
            case _ => s"${bytes}"
        }

    /**
     * Convert a floating-point size to exponent and significand sizes (in that order).
     */
    def fpexpsig(bits : Int) : (Int, Int) = {
        bits match {
            case 16  => (5, 11)
            case 32  => (8, 24)
            case 64  => (11, 53)
            case 80  => (15, 65)
            case 128 => (15, 113)
            case _   => sys.error(s"fpexpsig: unsupported bit size $bits")
        }
    }

    def fpValue(p : String, e : String, s : String, bits : Int, desc : String = "") : (String, String) = {
        // Get the size of the components
        val (ebits, sbits) = fpexpsig(bits)

        // Exponent is 8-bit signed value adjusted down by 2^(ebits - 1) - 1
        val eadjust = pow(2, ebits - 1) - 1
        val exp = convertFromBase(e, 2) - eadjust
        val expsign = if (exp < 0) -1 else 1

        // If raw exponent is 0 (smallest posisible) then mantissa prefix is 0, else 1
        val pre = if (exp == -eadjust) 0 else 1

        // Signficand is shifted to fractional size and add prefix
        val mant = pre + convertFromBase(s, 2) / pow(2, s.length)

        // The actual value of the number
        val sign = if (p == "0") 1 else -1
        val num = sign * mant * pow(2, expsign * exp)
        val value = f"$num%a"

        // Describe the number in stadnard double notation
        val comment =
            if (desc == "")
                f"dec: $num, hex: $num%a"
            else
                desc

        (value, comment)
    }

    def ones(n : Int) : String =
        "1" * n

    def zeros(n : Int) : String =
        "0" * n

    // See https://www.h-schmidt.net/FloatConverter/IEEE754.html
    // for IEEE FP bit representations

    /*
     * Returns the C value string for a term, plus extra explanation.
     */
    def termToCValueString(term : Term) : (String, String) =
        term match {
            case ConstantTerm(BinLit(s)) =>
                intValue(convertFromBase(s, 2).toString)
            case ConstantTerm(DecBVLit(BVvalue(s), _)) =>
                intValue(s)
            case ConstantTerm(HexaLit(s)) =>
                intValue(convertFromBase(s, 16).toString)
            case ConstantTerm(NumLit(i)) =>
                intValue(i.toString)

            case NegTerm(ConstantTerm(DecBVLit(BVvalue(s), _))) =>
                intValue(s"-$s")
            case NegTerm(ConstantTerm(NumLit(i))) =>
                intValue(s"-$i")

            case QIdTerm(SimpleQId(SymbolId(SSymbol("true")))) =>
                ("1", "true")
            case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) =>
                ("0", "false")

            case ConstantTerm(DecLit(a, b)) =>
                val num = s"$a.$b"
                (num, f"dec: $num, hex: ${num.toDouble}%a")
            case NegTerm(ConstantTerm(DecLit(a, b))) =>
                val num = s"-$a.$b"
                (num, f"dec: $num, hex: ${num.toDouble}%a")

            case ConstantTerm(FPPlusInfinity(_, _)) =>
                ("1.0 / 0.0", "+Infinity")
            case ConstantTerm(FPMinusInfinity(_, _)) =>
                ("-(1.0 / 0.0)", "-Infinity")
            case ConstantTerm(FPBVPlusZero(_, _)) =>
                ("0.0", "+Zero")
            case ConstantTerm(FPBVMinusZero(_, _)) =>
                ("-0.0", "-Zero")
            case ConstantTerm(FPBVNaN(_, _)) =>
                ("0.0 / 0.0", "NaN")

            case FPBVvalueTerm(ConstantTerm(BinLit(p)), ConstantTerm(BinLit(e)), ConstantTerm(BinLit(s))) =>
                fpValue(p, e, s, p.length + e.length + s.length)

            case RealDivTerm(ConstantTerm(NumLit(a)), List(ConstantTerm(NumLit(b)))) =>
                (s"${a.toDouble} / ${b.toDouble}", f"${a.toDouble / b.toDouble}%f")
            case NegTerm(t : RealDivTerm) =>
                val (s, c) = termToCValueString(t)
                (s"-($s)", s"-$c")

            case ConstantTerm(RoundingModeLit(RNE())) =>
                ("FE_TONEAREST", "RNE")
            case ConstantTerm(RoundingModeLit(RTN())) =>
                ("FE_DOWNWARD", "RTN")
            case ConstantTerm(RoundingModeLit(RTP())) =>
                ("FE_UPWARD", "RTP")
            case ConstantTerm(RoundingModeLit(RTZ())) =>
                ("FE_TOWARDZERO", "RTZ")

            case ConstArrayTerm(_, elem) =>
                val (s, c) = termToCValueString(elem)
                (s"[$s..]", "")
            case StoreTerm(array, index, elem) =>
                val (sa, ca) = termToCValueString(array)
                val (si, ci) = termToCValueString(index)
                val (se, ce) = termToCValueString(elem)
                (s"$sa[$si -> $se]", "")

            case term =>
                sys.error(s"termToCValueString: unexpected value term $term")
        }

    /**
     * Turn a (possible) URI into a user-level name.
     */
    def uriToName(uri : String) : String =
        if (uri startsWith "file://") uri.drop(7) else uri

    /**
     * Run a command, returning whatever is written to standard output and standard error.
     */
    def runCmd(cmd : Seq[String], cwd : String = ".") : (String, String) = {
        val process = Process(cmd, new File(cwd))
        val stdoutBuilder = new StringBuilder
        val stderrBuilder = new StringBuilder
        val processLoggger = ProcessLogger(
            line => stdoutBuilder.append(s"$line\n"),
            line => stderrBuilder.append(s"$line\n")
        )
        process ! processLoggger
        (stdoutBuilder.result(), stderrBuilder.result())
    }

    /**
     * Check a false witness by running fshell-w2t. The two inputs are the
     * source of the witness and the name of the file that was verified. The two return
     * values are the captured standard output and error.
     */
    def checkFalseWitness(witSource : Source, inFile : String, config : SkinkConfig) : (String, String) = {
        val property = s"CHECK(init(${config.functionName()}()), LTL(G ! call(__VERIFIER_error())))"
        val propFile = makeTempFilename(".prp")
        createFile(propFile, property)
        val result = witSource.useAsFile(
            witFile =>
                runCmd(
                    Seq(
                        "./test-gen.sh",
                        s"-m${config.architecture()}",
                        "--propertyfile", propFile,
                        "--graphml-witness", witFile, inFile
                    ),
                    config.fshellw2tPath()
                )
        )
        deleteFile(propFile)
        result
    }

    /**
     * Check a true witness by running check-true-witness.sh. The two inputs are the
     * source of the witness and the name of the file that was verified. The two return
     * values are the captured standard output and error.
     */
    def checkTrueWitness(witSource : Source, inFile : String, config : SkinkConfig) : (String, String) =
        witSource.useAsFile(
            witFile =>
                runCmd(
                    Seq(
                        "./check-true-witness.sh",
                        witFile,
                        config.architecture().toString(),
                        inFile,
                        config.functionName()
                    ),
                    config.checkTrueWitnessPath()
                )
        )

    /**
     * Check for the existence of a prorgam on the user's PATH. If it's
     * there, log its full path, and if it has a "--version" option, run
     * it and log that too. If the program is not on the path, log that.
     * The success or failure is also returned as a sequence of messages
     * describing the problem (if any).
     */
    def checkFor(logger : Logger, source : Source, program : String, config : SkinkConfig) : Messages = {
        val which = new java.io.ByteArrayOutputStream
        val processlogger = ProcessLogger(_ => (), _ => ())
        if ((s"which $program" #> which).!(processlogger) == 0) {
            logger.info(source, s"buildIRFromFile: $program is $which")
            val version = new java.io.ByteArrayOutputStream
            if ((s"$program --version" #> version).!(processlogger) == 0)
                logger.info(source, s"buildIRFromFile: $program version is $version")
            Vector()
        } else {
            val msg = s"buildIRFromFile: $program not present on PATH"
            fail(logger, source, msg, config)
        }
    }

    /**
     * Run a pipeline of commands, return status and output. The commands
     * are assumed to exist, so `checkFor` should be used to check first.
     */
    def runPipeline(logger : Logger, source : Source, command : Seq[String],
        rest : Seq[String]*) : (Int, String) = {
        val outputBuilder = new StringBuilder
        for (stage <- command +: rest) {
            logger.info(source, s"runPipeline: $stage\n")
        }
        val process = rest.foldLeft(Process(command))(_ #&& _)
        val processLoggger = ProcessLogger(
            line => outputBuilder.append(s"$line\n"),
            line => outputBuilder.append(s"$line\n")
        )
        val status = process ! processLoggger
        val output = outputBuilder.result()
        logger.info(source, output)
        (status, output)
    }

    /**
     * Fail the frontend by logging and returning the given message.
     */
    def fail(logger : Logger, source : Source, msg : String, config : SkinkConfig) : Messages = {
        logger.info(source, msg)
        config.driver.positions.setAllPositions(msg, Position(1, 1, source))
        error(msg, msg)
    }

    /**
     * Utility method to convert an automta into DOT format.
     */
    def toDot[S, L](nfa : NFA[S, L], title : String) : String =
        DOTPrettyPrinter.show(
            DotConverter.toDot(
                nfa.copy(name = title),
                (b : S) => {
                    val label = Attribute("label", StringLit(b.toString))
                    val style =
                        Attribute("shape", if (nfa.getInit.contains(b))
                            Ident("circle")
                        else if (nfa.accepting.contains(b))
                            Ident("doublecircle")
                        else
                            Ident("oval"))
                    List(label, style)
                },
                (b : S) => '"' + b.toString + '"',
                (i : L) => i.toString
            )
        )

    // Monto products

    def publishDot(logger : Logger, origSource : Source, source : Source, name : String, config : SkinkConfig) {
        val dot = "dot"
        val programs = Vector(dot)

        programs.flatMap(checkFor(logger, origSource, _, config)) match {
            case Vector() =>
                source.useAsFile(
                    dotFilename => {
                        val svgFilename = makeTempFilename(".svg")
                        runPipeline(
                            logger,
                            origSource,
                            Seq(
                                dot, "-Tsvg", dotFilename, "-o", svgFilename
                            )
                        )
                        val svg = FileSource(svgFilename, "ISO-8859-1").content
                        config.driver.publishProductStr(origSource, name, "svg", svg)
                        deleteFile(dotFilename)
                        deleteFile(svgFilename)
                    }
                )
            case msgs =>
                val formattedMsgs = config.driver.messaging.formatMessages(msgs)
                fail(logger, origSource, s"publishDot: ${formattedMsgs}", config)
        }
    }

}
