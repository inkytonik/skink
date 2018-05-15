/**
  Put updating history here
*/


package psksvp

import org.bitbucket.franck44.automat.auto.NFA
import org.bitbucket.franck44.automat.edge.Implicits._
import org.bitbucket.franck44.automat.edge.LabDiEdge
import au.edu.mq.comp.skink.ir.{IRFunction, Trace}
import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
import org.bitbucket.franck44.scalasmt.typedterms.{Commands, QuantifiedTerm}



/**
  * Created by psksvp on 23/5/17.
  */



/**
  *
  * @param function
  * @param choices
  */
case class TraceAnalyzer(function:IRFunction, choices:Seq[Int]) extends Commands
                                                                   with org.bitbucket.franck44.scalasmt.theories.Core
                                                                   //with QuantifiedTerm
{
  import psksvp.TraceAnalyzer._

  lazy val length:Int = choices.length
  lazy val trace:Trace = Trace(choices)
  lazy val traceTerms:Seq[BoolTypedTerm] = function.traceToTerms(trace)
  //////////////////////////////////////////////////
  // compute repetitionsPairs
  //////////////////////////////////////////////////
  lazy val repetitionsPairs:Seq[(Int, Int)] =
  {
    val indexPartition: Seq[Seq[Int]] = function.traceToRepetitions(trace)
    indexPartition.filter(_.size > 1).map(_.toList).map(generatePairs(_)).flatten.flatten
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////
  // The key is location index (Int)
  // The value is the list  of Transition object
  // @see case class Transition(source:Int, sink:Int, choice:Int, effect:BlockEffect) in companion object
  ///////////////////////////////////////////////////////////////////////////////////////////////////
  lazy val transitionMap:Map[Int, List[Transition]] =
  {
    // start from 1 because, 0 is always true
    val linear = for (l <- 1 until choices.length) yield
                 {
                   // pre compute the effect here is ok, because I use the effect to do checkPost only.
                   // looking at the LLVMFunction.checkPost, everytime the function checkPost is called with
                   // the same block number an exit choice, the effect would be exactly the same for a
                   // same trace.
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
  def automatonWithBackEdges(tracePredicates:Seq[BoolTypedTerm])
                            (implicit solver:SMTSolver):NFA[Int, Int] =
  {
    //////////////////////////////////////////
    // check post specific to this trace only.
    def checkTransitionPost(fromSource:Int, toSink:Int, exitChoice:Int):Boolean =
    {
      require(transitionMap.isDefinedAt(toSink), s"checkTransitionPost(fromSource=$fromSource, toSink=$toSink), " +
                                                 s"there is no such transition on trace $choices")

      val a = transitionMap(toSink).filter // return a list with one element, or an empty list
              {
                s => s.source == fromSource &&
                     s.choice == exitChoice
              }

      if(Nil == a)
        sys.error(s"there is no transition fromSource:$fromSource")
      else
      {
        val t = a.head // a is a list with one element.
        // index pre to 0 
        val indexedPre = tracePredicates(fromSource).indexedBy{ case _ => 0 }
        // index post to last index of the block effect ()
        val indexedPost = tracePredicates(toSink).indexedBy{ case SSymbol(x) => t.effect.lastIndexMap.getOrElse(x, 0) }
        log(s"back edge checkPost [${termAsInfix(indexedPre)}], ${termAsInfix(t.effect.term)}, [${termAsInfix(indexedPost)}]")
        psksvp.checkPost(indexedPre, t.effect.term, indexedPost)
      }
    }

    ////////////////////////////////////////////////////////////
    lazy val backEdges:Seq[LabDiEdge[Int, Int]] =
    {
      log("------------------safeBackEdges")
      log(s"candidate pairs $repetitionsPairs")
      val newBackEdges = for((i, j) <- repetitionsPairs; if checkTransitionPost(fromSource = j,
                                                                                toSink = i + 1,
                                                                                exitChoice = choices(i))) yield
                         {
                           log(s"new backedge found from $j to ${i + 1} with choice($i) exitValue is ${choices(i)}")
                           (j ~> (i + 1))(choices(i))
                         }

      log("----------------------")
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
  def blocksTermInRange(start:Int, end:Int):BoolTypedTerm=
  {
    if(start == end)
      traceTerms(start)
    else
    {
      val terms = traceTerms.slice(start, end + 1) // +1 because slice does not include end
      terms.reduce(_ & _)
    }
  }

  /////////////////////////////////////////
  def automatonFrom(pair:(Int, Int)):NFA[Int, Int] =
  {
    val (i, j) = pair
    NFA(linearAutomaton.getInit,
         linearAutomaton.transitions ++ Seq((j ~> (i + 1))(choices(i))),
         linearAutomaton.accepting,
         linearAutomaton.accepting)
  }

  def checkTraceAsTriple(predicates:Seq[BoolTypedTerm])
                        (implicit solver:SMTSolver): BoolTypedTerm=
  {
    assert(choices.length  == predicates.length)

    def checkPostWithIndex(pre:BoolTypedTerm, eff:BoolTypedTerm, post:BoolTypedTerm):Boolean=
    {
      val effIndex = IndexAnalysis(eff)
      val preI = pre indexedBy {case SSymbol(x) => effIndex.entry.getOrElse(x, 0)}
      val postI = post indexedBy {case SSymbol(x) => effIndex.exit.getOrElse(x, 0)}
      checkPost(preI, eff, postI)
    }

    val r = for(i <- 0 until predicates.length - 1 ) yield
            {
              checkPostWithIndex(predicates(i), traceTerms(i), predicates(i + 1))
            }

    println("I am here")
    r.reduce(_ && _)
  }
}

object TraceAnalyzer
{
  case class BlockEffect(term:BoolTypedTerm, lastIndexMap:Map[String, Int])

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
      s"\n/*----------------*/\nsource:$source\nexitChoice:$choice\nsink:$sink\neffect:${termAsInfix(effect.term)}\n"
    }
  }
}