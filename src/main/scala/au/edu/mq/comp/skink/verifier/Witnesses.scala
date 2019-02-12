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

import au.edu.mq.comp.skink.SkinkConfig

/**
 * Common support for SV-COMP witness generation.
 */
abstract class Witnesses(config : SkinkConfig) {

    import au.edu.mq.comp.skink.Skink.getLogger
    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import org.bitbucket.inkytonik.kiama.util.FileEmitter

    val logger = getLogger(this.getClass)

    abstract class Witness {
        def typeString : String
        def nodesAndEdges : Seq[String]
    }

    case class CorrectnessWitness(nodesAndEdges : Seq[String]) extends Witness {
        def typeString = "correctness_witness"
    }

    case class ViolationWitness(nodesAndEdges : Seq[String]) extends Witness {
        def typeString = "violation_witness"
    }

    /**
     * Return the SHA-1 digest of a filename.
     */
    def digestOfFile(filename : String) : String = {
        import java.io.File
        import java.io.FileInputStream
        import java.security.MessageDigest

        val file = new File(filename)
        val buffer = Array.ofDim[Byte](file.length().toInt)
        val fis = new FileInputStream(file)
        fis.read(buffer)
        fis.close()
        val md = MessageDigest.getInstance("SHA-1")
        md.update(buffer)
        javax.xml.bind.DatatypeConverter.printHexBinary(md.digest()).toLowerCase()
    }

    /**
     * Return the XML of a witness of the given type, given the nodes and edges
     * that should make up its body.
     */
    def makeWitnessXML(witness : Witness) =
        s"""<?xml version="1.0" encoding="UTF-8" standalone="no"?>
           |<graphml xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           |         xmlns="http://graphml.graphdrawing.org/xmlns"
           |>
           |
           |<key id="entry"          for="node"  attr.name="entry"            attr.type="boolean"><default>false</default></key>
           |<key id="block"          for="node"  attr.name="block"            attr.type="int"   />
           |<key id="node.src"       for="node"  attr.name="node.src"         attr.type="string"/>
           |<key id="edge.src"       for="edge"  attr.name="edge.src"         attr.type="string"/>
           |<key id="startline"      for="edge"  attr.name="startline"        attr.type="int"   />
           |<key id="endline"        for="edge"  attr.name="endline"          attr.type="int"   />
           |<key id="violation"      for="node"  attr.name="violation"        attr.type="boolean"><default>false</default></key>
           |<key id="witness-type"   for="graph" attr.name="witness-type"     attr.type="string"/>
           |<key id="sourcecodelang" for="graph" attr.name="sourcecodelang"   attr.type="string"/>
           |<key id="producer"       for="graph" attr.name="producer"         attr.type="string"/>
           |<key id="specification"  for="graph" attr.name="specification"    attr.type="string"/>
           |<key id="programfile"    for="graph" attr.name="programfile"      attr.type="string"/>
           |<key id="programhash"    for="graph" attr.name="programhash"      attr.type="string"/>
           |<key id="memorymodel"    for="graph" attr.name="memorymodel"      attr.type="string"/>
           |<key id="architecture"   for="graph" attr.name="architecture"     attr.type="string"/>
           |<key id="assumption"                for="edge" attr.name="assumption"       attr.type="string"/>
           |<key id="assumption.note"           for="edge" attr.name="assumption.note"  attr.type="string"/>
           |<key id="assumption.scope"          for="edge" attr.name="assumption.scope" attr.type="string"/>
           |<key id="assumption.resultfunction" for="edge" attr.name="assumption.resultfunction" attr.type="string"/>
           |
           |<graph edgedefault="directed">
           |  <data key="witness-type"  >${witness.typeString}</data>
           |  <data key="sourcecodelang">C</data>
           |  <data key="producer"      >skink</data>
           |  <data key="specification" >CHECK( init(main()), LTL(G ! call(__VERIFIER_error())) )</data>
           |  <data key="programfile"   >${config.filenames.getOrElse(List[String]("unknown")).head}</data>
           |  <data key="programhash"   >${config.filenames.map(_.head).map(digestOfFile(_)).getOrElse("0000000000000000000000000000000000000000")}</data>
           |  <data key="memorymodel"   >simple</data>
           |  <data key="architecture"  >${config.architecture()}bit</data>
           |
           |${witness.nodesAndEdges.mkString("\n")}
           |</graph>
           |
           |</graphml>
           |""".stripMargin

    def escapeChar(char : Char) =
        char match {
            case '&' => "&amp;"
            case '<' => "&lt;"
            case '>' => "&gt;"
            case _   => char.toString
        }

    def escapeString(string : String) =
        string.flatMap(escapeChar)

    def mkData[T](value : Option[T], key : String) : String =
        value.map(v =>
            s"""  <data key="$key">${escapeString(v.toString)}</data>\n""").getOrElse("")

    def mkNode(id : Int, content : String = "") =
        s"""<node id="N$id">\n$content</node>\n"""

    def mkEdge(id : Int, content : String = "") =
        s"""<edge id="E$id" source="N$id" target="N${id + 1}">\n$content</edge>\n"""

    def field[T](field : Option[T]) : String =
        field.map(_.toString).getOrElse(" ")

    /**
     * Output in SV-COMP result format a correctness witness in the given function.
     * Currently outputs a dummy witness with a "true" invariant to avoid an error
     * when no correctness witness at all is produced.
     */
    def printCorrectnessWitness(function : IRFunction) {
        val nodesAndEdges =
            Seq(
                mkNode(
                    0,
                    mkData(Some("true"), "entry")
                ),
                mkEdge(0),
                mkNode(
                    1,
                    mkData(Some("1"), "invariant") +
                        mkData(Some("main"), "invariant.scope")
                )
            )
        outputWitness(CorrectnessWitness(nodesAndEdges))
    }

    /**
     * Generate and print a violation witness for the given function.
     */
    def printViolationWitness(function : IRFunction, failTrace : FailureTrace)

    /**
     * Actually output a witness text to the appropriate destination.
     */
    def outputWitness(witness : Witness) {
        val xml = makeWitnessXML(witness)
        if (config.witnessFile() == "-") {
            logger.info("outputWitness: writing witness to standard output")
            config.output().emit(xml)
        } else {
            logger.info(s"outputWitness: writing witness to ${config.witnessFile()}")
            val emitter = new FileEmitter(config.witnessFile())
            emitter.emit(xml)
            emitter.close()
        }
    }

}
