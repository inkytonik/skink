/*
package psksvp.ADT
import psksvp._


import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import java.io.File
import scala.util.Failure
import au.edu.mq.comp.skink.Skink.getLogger
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Sat
import org.bitbucket.franck44.scalasmt.theories.{Core, IntegerArithmetics}
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
import org.bitbucket.franck44.scalasmt.theories.BoolTerm
import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
import scala.util.Success
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{SatResponses, UnSat}
import org.bitbucket.franck44.scalasmt.typedterms.Commands
import org.bitbucket.franck44.scalasmt.interpreters.Resources

class SatCheckCache extends Commands
{
  private val map = scala.collection.mutable.Map[String, SatResponses]()
  private var hit = 0L
  private var mis = 0L
  
  def apply(key:PredicateTerm)(implicit solver:SMTSolver):SatResponses=
  {
    this.synchronized
    {
      if (map.contains(termAsInfix(key)))
      {
        hit = hit + 1
        map(termAsInfix(key))
      }
      else
      {
        mis = mis + 1
        push()
        val result = isSat(key) match
                     {
                       case Success(s) => s
                       case Failure(e) => sys.error(s"satisfiableCheck of terms ${psksvp.termAsInfix(key)} solver returns ${e.toString}")
                     }
        pop()
        map(termAsInfix(key)) = result
        result
      }
    }
  }
}    */      