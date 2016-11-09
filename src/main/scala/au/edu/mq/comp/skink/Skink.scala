package au.edu.mq.comp.skink

/**
 * Generally useful functionality for all packages.
 */
object Skink {

    import au.edu.mq.comp.automat.auto.NFA
    import au.edu.mq.comp.automat.util.DotConverter
    import au.edu.mq.comp.dot.DOTPrettyPrinter
    import au.edu.mq.comp.dot.DOTSyntax.{Attribute, DotSpec, Ident, StringLit}
    import com.typesafe.scalalogging.Logger
    import org.slf4j.LoggerFactory

    /**
     * Get a new logger whose name is formed from the name of the given
     * class with the suffix appended (default: no suffix).
     */
    def getLogger(clazz : Class[_], suffix : String = "") : Logger =
        Logger(LoggerFactory.getLogger(clazz.getName + suffix))

    import au.edu.mq.comp.skink.ir.Choice
    /**
     * Utility method to convert an automta into DOT format.
     */
    def toDot[S, L](nfa : NFA[S, L], name : String, stateMap : Map[S, String] = Map[S, String]()) : String =
        DOTPrettyPrinter.show(
            DotConverter.toDot(
                nfa.copy(name = name),
                (b : S) => {
                    val label = Attribute("label", StringLit(stateMap.get(b).getOrElse(b.toString)))
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
                (i : L) => { val c = i.asInstanceOf[Choice]; c.threadId + "," + c.branchId }
            )
        )

}
