package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

/**
 * Support for SV-COMP witness generation.
 */
class Witnesses(config : SkinkConfig) {

    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import au.edu.mq.comp.skink.Skink.getLogger
    import java.io.File

    val logger = getLogger(this.getClass)

    /**
     * Output in SV-COMP result format a witness for the failure given by
     * `failTrace` in the given function .
     */
    def printWitness(function : IRFunction, failTrace : FailureTrace) {

        def escapeChar(char : Char) =
            char match {
                case '&' => "&amp;"
                case '<' => "&lt;"
                case '>' => "&gt;"
                case _   => char.toString
            }

        def escapeString(string : String) =
            string.flatMap(escapeChar)

        val steps = function.traceToSteps(failTrace)
        val numsteps = steps.length

        def field[T](field : Option[T]) : String =
            field.map(_.toString).getOrElse(" ")

        for (i <- 0 until numsteps) {
            val step = steps(i)
            logger.info(s"""printWitness: step $i = block ${field(step.optBlockName)}: ${field(step.optBlockCode)} -> ${field(step.optTermCode)}""")
        }

        def mkData[T](value : Option[T], key : String) : String =
            value.map(v =>
                s"""  <data key="$key">${escapeString(v.toString)}</data>\n""").getOrElse("")

        def trimFileName(filename : String) : String =
            if (config.onlyFilenames())
                new File(filename).getName()
            else
                filename

        val nodesAndEdges =
            steps.zipWithIndex.map {
                case (step, index) =>
                    val key =
                        if (index == 0)
                            "\n  <data key=\"entry\">true</data>"
                        else if (index == numsteps - 1)
                            "\n  <data key=\"violation\">true</data>"
                        else
                            ""
                    val optFileName = step.optFileName.map(trimFileName)
                    val node =
                        s"""<node id="N$index">$key\n""" +
                            mkData(optFileName, "file") +
                            mkData(step.optBlockName, "block") +
                            mkData(step.optBlockCode, "sourcecode") +
                            "</node>\n"
                    val edge =
                        if (index == numsteps - 1)
                            ""
                        else {
                            s"""\n<edge id="E$index" source="N${index}" target="N${index + 1}">\n""" +
                                mkData(optFileName, "file") +
                                mkData(step.optTermCode, "sourcecode") +
                                mkData(step.optTermLine, "startline") +
                                mkData(step.optTermLine, "endline") +
                                "</edge>\n"
                        }
                    s"$node$edge"
            }

        val witness =
            s"""<?xml version="1.0" encoding="UTF-8" standalone="no"?>
               |<graphml xmlns="http://graphml.graphdrawing.org/xmlns/graphml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns/graphml">
               |
               |<key id="sourcecodelang" for="graph"/>
               |
               |<key id="block" for="node"/>
               |<key id="entry" for="node"><default>false</default></key>
               |<key id="file" for="node"/>
               |<key id="sourcecode" for="node"/>
               |<key id="violation" for="node"><default>false</default></key>
               |
               |<key id="endline" for="edge"/>
               |<key id="file" for="edge"/>
               |<key id="sourcecode" for="edge"/>
               |<key id="startline" for="edge"/>
               |
               |<graph edgedefault="directed">
               |
               |<data key="sourcecodelang">C</data>
               |
               |${nodesAndEdges.mkString("\n")}
               |</graph>
               |
               |</graphml>
               |""".stripMargin

        config.output().emit(witness)

    }

}
