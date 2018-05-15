package psksvp

import psksvp.logics._

/**
  *
  */
trait TermComposer
{
  def combinationToTerm(combination: Int, predicates: Seq[BoolTypedTerm]): BoolTypedTerm

  def gamma(absDomain: AbstractDomain,
            predicates: Seq[BoolTypedTerm],
            simplify: Boolean): BoolTypedTerm
}

/**
  *
  */
object CNFComposer extends TermComposer
{
  def combinationToTerm(combination: Int,
                        predicates: Seq[BoolTypedTerm]): BoolTypedTerm =
  {
    val bin = binaryString(combination, predicates.length)
    val exprLs = for (i <- bin.indices) yield if (bin(i) == '1') predicates(i) else !predicates(i)
    exprLs.reduce(_ | _)
  }

  def gamma(absDomain: AbstractDomain,
            predicates: Seq[BoolTypedTerm],
            simplify: Boolean): BoolTypedTerm =
  {
    if (absDomain.size == math.pow(2, predicates.length).toInt)
      False() // short cut for CNF
    else if (absDomain.isEmpty)
      True() // short cut  for CNF
    else
    {
      if (!simplify)
      {
        val exprLs =for (i <- absDomain.indices) yield combinationToTerm(absDomain(i), predicates)
        exprLs.par.reduce(_ & _)
      }
      else
      {
        BooleanMinimizeCNF(absDomain.toList, predicates.toList)
      }
    }
  }

  /**
    *
    */
  object DNFComposer extends TermComposer
  {
    def combinationToTerm(combination: Int,
                          predicates: Seq[BoolTypedTerm]): BoolTypedTerm =
    {
      val bin = binaryString(combination, predicates.length)
      val exprLs = for (i <- bin.indices) yield if (bin(i) == '1') predicates(i) else !predicates(i)
      exprLs.reduce(_ & _)
    }

    def gamma(absDomain: AbstractDomain,
              predicates: Seq[BoolTypedTerm],
              simplify: Boolean): BoolTypedTerm =
    {
      if (absDomain.size == math.pow(2, predicates.length).toInt)
        True() // short cut for DNF
      else if (absDomain.isEmpty)
        False() // short cut  for DNF
      else
      {
        if (!simplify)
        {
          val exprLs = for (i <- absDomain.indices) yield combinationToTerm(absDomain(i), predicates)
          exprLs.reduce(_ | _) // DNF
        }
        else
        {
          BooleanMinimizeDNF(absDomain.toList, predicates.toList)
        }
      }
    }
  }
}
