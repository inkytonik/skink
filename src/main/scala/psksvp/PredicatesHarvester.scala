package psksvp

import au.edu.mq.comp.smtlib.interpreters.SMTLIBInterpreter
import au.edu.mq.comp.smtlib.typedterms.{Commands, QuantifiedTerm}


/**
  * Created by psksvp on 19/5/17.
  */
trait PredicatesHarvester
{
  val inferredPredicates:Set[BooleanTerm]
}

/// infer using existential quantifiers elimination
case class EQEPredicatesHarvester(traceAnalyzer:TraceAnalyzer,
                                  functionInformation:FunctionInformation,
                                  solver:SMTLIBInterpreter) extends PredicatesHarvester
                                                                              with Commands
                                                                              with QuantifiedTerm
{
  import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.{ISymbol, SymbolId, Term}
  import au.edu.mq.comp.smtlib.theories.BoolTerm
  import au.edu.mq.comp.smtlib.typedterms.TypedTerm

  import scala.util.Success

  def blockLocalVariable(blockNo:Int):Set[ISymbol] =
  {
    val (blockEffect, lastIndex) = traceAnalyzer.function.traceBlockEffect(traceAnalyzer.trace,
                                                                            blockNo,
                                                                            traceAnalyzer.choices(blockNo))

    def commonVar(s:ISymbol):Boolean =
    {
      if(lastIndex.isDefinedAt(s.simpleVarname))
        functionInformation.commonVariables.contains(s.simpleVarname) && lastIndex(s.simpleVarname) == s.digits
      else
        functionInformation.commonVariables.contains(s.simpleVarname)
    }

    val local = for(v <- blockEffect.typeDefs) yield
                {
                  v.id match
                  {
                    case SymbolId(s@ISymbol(n, i)) if !commonVar(s) => s
                    case _                                          => ISymbol("unused", -1)  /// ARGGGGGGG.......
                  }
                }
    local.filter(_.digits >= 0)
  }

  ///
  def inferPredicates(blockNo:Int):Seq[TypedTerm[BoolTerm, Term]] =
  {
    val (blockEffect, _) = traceAnalyzer.function.traceBlockEffect(traceAnalyzer.trace,
                                                                    blockNo,
                                                                    traceAnalyzer.choices(blockNo))
    //println(s"blockVariables: ${blockVariables(blockNo)}")
    //println(s"commonVariables: ${commonVariables}")
    val s = blockLocalVariable(blockNo).toSeq
    //println(s"quantified over variables: $s}")
    if(s.nonEmpty)
    {
      //val indexedPre = pre.indexedBy {case _ => 0}
      val e = exists(s.head, s.tail:_*)(blockEffect) //( indexedPre & blockEffect)
      println(s"exists term:${psksvp.termAsInfix(e)}")

      psksvp.SMTLIB.Z3QE(e)(solver) match
      {
        case Success(ls) => ls.map { t => t.unIndexed }
        case _           => sys.error(s"psksvp.SMTLIB.Z3QE($e) fail")
      }
    }
    else
    {
      println("list of variables to quantified over is empty")
      Nil
    }
  }
  override lazy val inferredPredicates: Set[BooleanTerm] =
  {
    val r = for(block <- 0 until traceAnalyzer.length - 1) yield inferPredicates(block).toSet
    r.reduce(_ union _)
  }
}
