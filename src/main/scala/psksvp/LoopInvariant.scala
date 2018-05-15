package psksvp

import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.SSymbol

case class LoopInvariant(traceAnalyzer:TraceAnalyzer)
                        (implicit solver:SMTSolver) extends org.bitbucket.franck44.scalasmt.theories.Core
{
  def check(invariant:BoolTypedTerm):Boolean =
  {
    assert(traceAnalyzer.repetitionsPairs.nonEmpty, "LoopInvariant.check, trace has no repetitions")
    val (i, j) = traceAnalyzer.repetitionsPairs.last
    log(s"checking pair: ($i, $j)")

    val ck0 = checkRange(0,
                          end = if(0 == i) 0 else i - 1,
                          invariant)
    val ck1 = checkRange(i, j, invariant)
    val ck2 = checkRange(j, traceAnalyzer.length - 2, invariant) // choice.length - 2 because the last one is the error

    ck0 && ck1 && ck2 // no short circuit, debugging for now.
  }

  def checkLoop(pair:(Int, Int), pre:BoolTypedTerm, invariant:BoolTypedTerm):Boolean =
  {
    val (i, j) = pair
    false
  }

  def checkRange(start:Int, end:Int, invariant:BoolTypedTerm): Boolean =
  {
    assert(start >= 0 && start < traceAnalyzer.length - 1) // -1 because last block is the error block.
    assert(end >= 0 && end < traceAnalyzer.length - 1)
    assert(start <= end, "LoopInvariant.blocksTermInRange(start:Int, end:Int) start must be <= end")

    val term = traceAnalyzer.blocksTermInRange(start, end)
    val termIndex = IndexAnalysis(term)

    //println(termIndex.indexList)
    //println(termIndex.entry)
    //println(termIndex.exit)

    val pre = if(0 == start) True()
              else invariant indexedBy {case SSymbol(x) => termIndex.entry.getOrElse(x, 0)}

    val post = if(end == traceAnalyzer.length - 2) False() // choice.length - 2 because the last one is the error
               else invariant indexedBy {case SSymbol(x) => termIndex.exit.getOrElse(x, 0)}

    println("============================CHECK POST==============================================")
    println("------- pre -------")
    println(termAsInfix(pre))

    println("------- eff -------")
    println(termAsInfix(term))

    println("------- post -------")
    println(termAsInfix(post))
    println("====================================================================================")
    
    checkPost(pre, term, post)
  }
}

