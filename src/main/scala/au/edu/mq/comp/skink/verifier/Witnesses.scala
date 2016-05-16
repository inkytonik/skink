package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

/**
 * Support for SV-COMP witness generation.
 */
class Witnesses(config : SkinkConfig) {

    import au.edu.mq.comp.skink.ir.IRFunction

    /**
     * Output a witness in SV-COMP result format.
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

        def mkData[T](value : Option[T], key : String) : String =
            value.map(v =>
                s"""  <data key="$key">${escapeString(v.toString)}</data>\n""").getOrElse("")

        val nodes =
            steps.zipWithIndex.map {
                case (step, index) =>
                    val key =
                        if (index == 0)
                            "\n  <data key=\"entry\">true</data>"
                        else if (index == numsteps - 1)
                            "\n  <data key=\"violation\">true</data>"
                        else
                            ""
                    s"""<node id="N$index">$key\n""" +
                        mkData(step.optFileName, "file") +
                        mkData(step.optBlockName, "block") +
                        mkData(step.optBlockCode, "sourcecode") +
                        "</node>\n"
            }

        val edges =
            steps.init.zipWithIndex.map {
                case (step, index) =>
                    s"""<edge id="E$index" source="N${index}" target="N${index + 1}">\n""" +
                        mkData(step.optFileName, "file") +
                        mkData(step.optTermCode, "sourcecode") +
                        mkData(step.optTermLine, "startline") +
                        mkData(step.optTermLine, "endline") +
                        "</edge>\n"
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
               |${nodes.mkString("\n")}
               |${edges.mkString("\n")}
               |</graph>
               |
               |</graphml>
               |""".stripMargin

        config.output().emit(witness)

    }

}
