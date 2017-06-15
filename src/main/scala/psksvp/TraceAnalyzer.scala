package psksvp

import au.edu.mq.comp.automat.auto.NFA
import au.edu.mq.comp.automat.edge.Implicits._
import au.edu.mq.comp.automat.edge.LabDiEdge
import au.edu.mq.comp.skink.ir.{IRFunction, Trace}
import au.edu.mq.comp.smtlib.interpreters.SMTLIBInterpreter
import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter
import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax._
import au.edu.mq.comp.smtlib.theories.BoolTerm

import scala.util.Success
import au.edu.mq.comp.smtlib.typedterms.{Commands, QuantifiedTerm, TypedTerm}


/**
  * Created by psksvp on 23/5/17.
  */



/**
  *
  * @param function
  * @param choices
  */
case class TraceAnalyzer(function:IRFunction, choices:Seq[Int]) extends Commands
                                                                   with QuantifiedTerm
{
  import psksvp.TraceAnalyzer._

  lazy val length:Int = choices.length
  lazy val trace:Trace = Trace(choices)
  //////////////////////////////////////////////////
  lazy val repetitionsPairs:Seq[(Int, Int)] =
  {
    val indexPartition: Seq[Seq[Int]] = function.traceToRepetitions(trace)
    indexPartition.filter(_.size > 1).map(_.toList).map(generatePairs(_)).flatten.flatten
  }

  //////////////////////////////////////////////////
  lazy val transitionMap:Map[Int, List[Transition]] =
  {
    // start from 1 because, l0 is always true
    val linear = for (l <- 1 until choices.length) yield
                 {
                   val (e, m) = function.traceBlockEffect(trace, l - 1, choices(l - 1))
                   l -> Transition(source = l - 1,
                                    sink = l,
                                    choice = choices(l - 1),
                                    effect = BlockEffect(e, m)) // linear
                 }

    val backEdge = for ((i, j) <- repetitionsPairs) yield
                   {
                     // j and i  repeat so, backedge candidate is j to i + 1
                     val exitChoice = choices(i) // take choice from i because it is a repeat from j and i + 1
                     // thus exit choice from j to i + 1 is the same as
                     // from i to i + 1
                     val (e, m) = function.traceBlockEffect(trace, j, exitChoice)
                     val transition = Transition(source = j,
                                                 sink = i + 1,
                                                 choice = exitChoice,
                                                 effect = BlockEffect(e, m))

                     transition.locationIndex -> transition
                   }


    val x = linear.toList ::: backEdge.toList

    //        Map(0 -> Nil) is for l0, predicate at l0 is true
    val map = Map(0 -> Nil) ++ x.groupBy(_._1).map{ case (k, v) => (k, v.map(_._2)) }
    map
  }


  //////////////////////////////////////////////////
  lazy val linearAutomaton: NFA[Int, Int] =
  {
    val transitions = for (i <- choices.indices) yield (i ~> (i + 1)) (choices(i))
    NFA(Set(0), transitions.toSet, Set(choices.length), Set(choices.length))
  }

  //////////////////////////////////////////////////
  def automatonWithBackEdges(tracePredicates:Seq[BooleanTerm])
                            (implicit solver:SMTLIBInterpreter):NFA[Int, Int] =
  {
    //////////////////////////////////////////
    // check post specific to this trace only.
    def checkTransitionPost(fromSource:Int, toSink:Int, exitChoice:Int):Boolean =
    {
      require(transitionMap.isDefinedAt(toSink), s"checkTransitionPost(fromSource=$fromSource, toSink=$toSink), " +
                                                 s"there is no such transition on trace $choices")

      val a = transitionMap(toSink).filter
              {
                s => s.source == fromSource &&
                     s.choice == exitChoice
              }

      if(Nil == a)
        sys.error(s"there is no transition fromSource:$fromSource")
      else
      {
        val t = a.head
        val indexedPre = tracePredicates(fromSource).indexedBy{ case _ => 0 }
        val indexedPost = tracePredicates(toSink).indexedBy{ case SSymbol(x) => t.effect.lastIndexMap.getOrElse(x, 0) }
        psksvp.checkPost(indexedPre, t.effect.term, indexedPost)
      }
    }

    ////////////////////////////////////////////////////////////
    lazy val backEdges:Seq[LabDiEdge[Int, Int]] =
    {
      println("------------------safeBackEdges")
      println(s"candidate pairs $repetitionsPairs")
      val newBackEdges = for((i, j) <- repetitionsPairs; if checkTransitionPost(fromSource = j,
                                                                                toSink = i + 1,
                                                                                exitChoice = choices(i))) yield
                         {
                           println(s"new backedge found from $j to ${i + 1} with choice($i) exitValue is ${choices(i)}")
                           (j ~> (i + 1))(choices(i))
                         }

      println("----------------------")
      newBackEdges
    }

    if (backEdges.isEmpty)
      linearAutomaton
    else
      NFA(linearAutomaton.getInit,
          linearAutomaton.transitions ++ backEdges,
          linearAutomaton.accepting,
          linearAutomaton.accepting)

  }


  /////////////////////////////////////////
  /// combined term in each block
  lazy val blockTerms:Seq[TypedTerm[BoolTerm, Term]] = function.traceToTerms(trace)

  /// variables in each block
  lazy val blockVariables:Seq[Set[SortedQId]] = blockTerms.map(_.typeDefs)

  /// variables used across block
  lazy val commonVariables:Set[SortedQId] =
  {
    val s = for(i <- blockVariables.indices;
                j <- blockVariables.indices if i != j) yield blockVariables(i) intersect blockVariables(j)
    s.reduce(_ union _)
  }

  ///
  def inferPredicates(t:Transition):Seq[TypedTerm[BoolTerm, Term]] =
  {
    println(t)
    val qeVariables = (blockVariables(t.source) diff commonVariables).toList
    if(qeVariables.nonEmpty)
    {
      val s = for(v <- qeVariables) yield
              {
                v.id match
                {
                  case SymbolId(symbol) => symbol
                  case IndexedId(_, _)  => sys.error("array (IndexedId) is not yet supported")
                  case _                => sys.error("unsupported symbol")
                }
              }
      println(s"blockVariables: ${blockVariables(t.source)}")
      println(s"commonVariables: ${commonVariables}")
      println(s"quantified over variables: $s}")
      val e = exists(s.head, s.tail:_*){t.effect.term}
      //println(s"exists term:${termAsInfix(e)}")
      val solver = new SMTLIBInterpreter(solverFromName("Z3"))
      psksvp.SMTLIB.Z3QE(e)(solver) match
      {
        case Success(ls) => solver.destroy()
                            ls
        case _           => solver.destroy()
                            sys.error(s"psksvp.SMTLIB.Z3QE($e) fail")
      }
    }
    else
    {
      println("list of variables to quantified over is empty")
      Nil
    }
  }
}

object TraceAnalyzer
{
  case class BlockEffect(term:BooleanTerm, lastIndexMap:Map[String, Int])

  /**
    *
    * @param source
    * @param sink
    * @param choice
    */
  case class Transition(source:Int, sink:Int, choice:Int, effect:BlockEffect)
  {
    val preconditionIndex:Int = source //precondition index of this transition
    val locationIndex:Int = sink //location index  where this transition contributes its post

    override def toString:String =
    {
      s"/*----------------*/\nsource:$source\nexitChoice:$choice\nsink:$sink\neffect:${termAsInfix(effect.term)}\n/*----------------*/"
    }
  }
}