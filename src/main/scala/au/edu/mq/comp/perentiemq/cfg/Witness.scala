package au.edu.mq.comp.perentiemq.cfg

/**
 * Support for SV-COMP witness generation.
 */
object Witness {

    import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.Entry
    import au.edu.mq.comp.perentiemq.PerentieMQConfig
    import au.edu.mq.comp.perentiemq.refinement.TraceRefinement.FailureTrace
    import org.scalallvm.assembly.AssemblySyntax.{Program, FunctionDefinition}
    import org.scalallvm.assembly.Analyser

    /**
     * Output a witness in SV-COMP result format.
     */
    def printWitness(config : PerentieMQConfig, program : Program, function : FunctionDefinition,
        funanalyser : Analyser, failTrace : FailureTrace[Entry]) {

        import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG
        import org.kiama.util.{FileSource, Position}

        def escapeChar(char : Char) =
            char match {
                case '&' => "&amp;"
                case '<' => "&lt;"
                case '>' => "&gt;"
                case _   => char.toString
            }

        def escapeString(string : String) =
            string.flatMap(escapeChar)

        def locationsForPosition(optPosition : Option[Position]) : String =
            optPosition match {
                case Some(Position(line, column, source @ FileSource(path, _))) =>
                    val file = path.lastIndexOf('/') match {
                        case -1 =>
                            path
                        case i =>
                            path.substring(i + 1)
                    }
                    val lineContents =
                        escapeString(source.optLineContents(line).getOrElse("").trim)
                    s"""  <data key="sourcecode">$lineContents</data>
                       |  <data key="originfile">$file</data>
                       |  <data key="startline">$line</data>
                       |  <data key="startcolumn">$column</data>
                       |""".stripMargin
                case _ =>
                    ""
            }

        val edges =
            failTrace.trace.zipWithIndex.map {
                case (entry, index) =>
                    val attrs =
                        entry match {
                            case CFGBlockEntry(block) =>
                                val name = AssemblyCFG.blockName(block)
                                val bpos = funanalyser.blockPosition(program, block)
                                val locs = locationsForPosition(bpos)
                                s"""<data key="block">$name</data>\n$locs"""
                            case CFGExitCondEntry(CFGChoice(i, v, _)) =>
                                val cond = s"$i == $v"
                                val id = i.drop(1)
                                val ipos = funanalyser.definingPosition(program, function, s"$id")
                                val locs = locationsForPosition(ipos)
                                s"""<data key="choice">$cond</data>\n$locs"""
                            case _ =>
                                "\n"
                        }
                    s"""<edge source="n${index}" target="n${index + 1}">
                       |  $attrs</edge>
                       |""".stripMargin
            }

        val numnodes = failTrace.trace.length
        val nodes = (0 to numnodes).map {
            case i =>
                val data = i match {
                    case 0          => "<data key=\"entry\">true</data>"
                    case `numnodes` => "<data key=\"sink\">true</data>"
                    case _          => ""
                }
                s"""<node id="n$i">$data</node>"""
        }

        val witness =
            s"""<?xml version="1.0" encoding="UTF-8" standalone="no"?>
               |<graphml xmlns="http://graphml.graphdrawing.org/xmlns" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
               |
               |<key attr.name="assumption" attr.type="string" for="edge" id="assumption"/>
               |<key attr.name="sourcecode" attr.type="string" for="edge" id="sourcecode"/>
               |<key attr.name="sourcecodeLanguage" attr.type="string" for="graph" id="sourcecodelang"/>
               |<key attr.name="control" attr.type="string" for="edge" id="control"/>
               |<key attr.name="startline" attr.type="int" for="edge" id="startline"/>
               |<key attr.name="originFileName" attr.type="string" for="edge" id="originfile"><default>stdin</default></key>
               |<key attr.name="nodeType" attr.type="string" for="node" id="nodetype"><default>path</default></key>
               |<key attr.name="isFrontierNode" attr.type="boolean" for="node" id="frontier"><default>false</default></key>
               |<key attr.name="isViolationNode" attr.type="boolean" for="node" id="violation"><default>false</default></key>
               |<key attr.name="isEntryNode" attr.type="boolean" for="node" id="entry"><default>false</default></key>
               |<key attr.name="isSinkNode" attr.type="boolean" for="node" id="sink"><default>false</default></key>
               |<key attr.name="enterFunction" attr.type="string" for="edge" id="enterFunction"/>
               |<key attr.name="returnFromFunction" attr.type="string" for="edge" id="returnFrom"/>
               |
               |<key attr.name="block" attr.type="string" for="edge" id="block"/>
               |<key attr.name="choice" attr.type="string" for="edge" id="choice"/>
               |<key attr.name="startcolumn" attr.type="int" for="edge" id="startcolumn"/>
               |
               |<graph edgedefault="directed">
               |
               |<data key="sourcecodelang">C</data>
               |
               |${edges.mkString("\n")}
               |${nodes.mkString("\n")}
               |
               |</graph>
               |
               |</graphml>""".stripMargin

        config.output.emitln(witness)

    }

}
