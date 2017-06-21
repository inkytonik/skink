package psksvp

import au.edu.mq.comp.smtlib.interpreters.SMTLIBInterpreter
import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax._


import scala.util.Try
/**
  * Created by psksvp on 18/6/17.
  */
package object SMTLIB
{
  def reset(solver:SMTLIBInterpreter):Unit =
  {
    solver.eval(Raw("(reset)"))
  }
}
