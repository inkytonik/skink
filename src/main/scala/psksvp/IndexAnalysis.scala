package psksvp


///???????????????????????????????????????????????????
/// Is there a problem if a block has a phi instr ??
/// No, traceToTerms took care of that already.
///?????????????????????????????????????????????????
case class IndexAnalysis(term:BoolTypedTerm)
{
  lazy val symbols:Seq[(String, Int)] = symbolList()
  lazy val indexList:Map[String, Set[Int]] = symbols.groupBy(_._1).map{ case (k, v) => (k, v.map(_._2).toSet)}
  lazy val entry:Map[String, Int] = (for((k, v) <- indexList.keys zip indexList.values) yield (k, v.min)).toMap
  lazy val exit:Map[String, Int] = (for((k, v) <- indexList.keys zip indexList.values) yield (k, v.max)).toMap


  def symbolList1():Seq[(String, Int)]=
  {
    val iSymbol = """ISymbol\((.*?)\,(.*?)\)""".r
    val r = for(s <- iSymbol.findAllIn(term.toString)) yield
            {
              s match
              {
                case iSymbol(n, i) => (n, i.toInt)
                case _             => ("", -1)
              } 
            }

    r.toSeq
  }

  def symbolList():Seq[(String, Int)]=
  {
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{ISymbol, SymbolId}
    val varList = for(v <- term.typeDefs) yield
                  {
                    v.id match
                    {
                      case SymbolId(s@ISymbol(n, i)) => (n, i)
                      case _                         => ("", -1)
                    }
                  }
    varList.toSeq
  }
}