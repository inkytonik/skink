package psksvp

import au.edu.mq.comp.skink.ir.{IRFunction, Trace}
import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax._
import au.edu.mq.comp.smtlib.typedterms.TypedTerm
import logics._
import au.edu.mq.comp.smtlib.parser.Analysis
import au.edu.mq.comp.smtlib.theories.BoolTerm

/**
  * Created by psksvp on 19/5/17.
  */
class PredicatesHarvester(function:IRFunction, choices:Seq[Int])
{
  lazy val blockTerms = function.traceToTerms(Trace(choices))

//  lazy val variableTable:Map[Int, Seq[SortedQId]] =  // Int is block no, Seq[SortedQId] is list of var
//  {
//
//  }



}
