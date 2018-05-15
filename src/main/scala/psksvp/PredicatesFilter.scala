package psksvp




object PredicatesFilter
{
  def atomicTerms(predicates:Set[BoolTypedTerm]):Set[BoolTypedTerm] =
  {
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.OrTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.AndTerm
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
    import org.bitbucket.franck44.scalasmt.parser.Analysis
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{SimpleQId, SortedQId}
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm


    def breakTerm(t:BoolTypedTerm):Set[BoolTypedTerm] =
    {
      // too lazy right now
      def breakOrTerm(sortedQIds:Set[SortedQId], orTerm:OrTerm):Seq[BoolTypedTerm] =
      {
        val r = for(t <- orTerm.terms :+ orTerm.term) yield
          {
            val a = Analysis(t).ids
            val defs = for(SortedQId(x, s) <- sortedQIds if a.contains(SimpleQId(x))) yield SortedQId(x,s)
            TypedTerm[BoolTerm, Term](defs, t)
          }
        r
      }

      // too lazy right now
      def breakAndTerm(sortedQIds:Set[SortedQId], andTerm:AndTerm):Seq[BoolTypedTerm] =
      {
        val r = for(t <- andTerm.terms :+ andTerm.term) yield
          {
            val a = Analysis(t).ids
            val defs = for(SortedQId(x, s) <- sortedQIds if a.contains(SimpleQId(x))) yield SortedQId(x,s)
            TypedTerm[BoolTerm, Term](defs, t)
          }
        r
      }
      /////////
      t.termDef match
      {
        case orTerm:OrTerm   => (for(g <- breakOrTerm(t.typeDefs, orTerm)) yield breakTerm(g)).flatten.toSet
        case andTerm:AndTerm => (for(g <- breakAndTerm(t.typeDefs, andTerm)) yield breakTerm(g)).flatten.toSet
        case _            => Set[BoolTypedTerm](t)
      }
    }

    val r = for(t <- predicates) yield breakTerm(t)
    r.reduceLeft(_ union _)
  }

  /**
    *
    * @param predicates
    * @return
    */
  def reduceToEqualTerms(predicates:Set[BoolTypedTerm]):Set[BoolTypedTerm] =
  {
    import org.bitbucket.franck44.scalasmt.parser.Analysis
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    var rm:Set[BoolTypedTerm] = Set()
    val pairs = for(i <- predicates; j <- predicates if i != j) yield (i, j)
    val rt = for((t1, t2) <- pairs) yield
      {
        val a = Analysis(t1.termDef).ids
        val defs = for(SortedQId(x, s) <- t1.typeDefs if a.contains(SimpleQId(x))) yield SortedQId(x,s)
        (t1.termDef, t2.termDef) match
        {
          case (GreaterThanEqualTerm(a1, a2), LessThanEqualTerm(b1, b2))
            if(a1 == b1 && a2 == b2) => rm = rm ++ List(t1, t2)
                                        Set(TypedTerm[BoolTerm, Term](defs, EqualTerm(a1, a2)))

          case (LessThanEqualTerm(b1, b2), GreaterThanEqualTerm(a1, a2))
            if(a1 == b1 && a2 == b2) => rm = rm ++ List(t1, t2)
                                        Set(TypedTerm[BoolTerm, Term](defs, EqualTerm(a1, a2)))

          case  _                    => Set(t1, t2)
        }
      }
    rt.reduceLeft(_ union _) -- rm
  }

  /**
    *
    * @param predicates
    * @return
    */
  def reduceToSuperSetTerms(predicates:Set[BoolTypedTerm]):Set[BoolTypedTerm] =
  {
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import psksvp.ADT.FixedPoint
    implicit val solver = new SMTSolver("Z3")

    def test(a:Set[BoolTypedTerm], b:Set[BoolTypedTerm]) = a == b

    def step(a:Set[BoolTypedTerm]):Set[BoolTypedTerm] =
    {
      if(a.isEmpty)
        Set[BoolTypedTerm]()
      else
      {
        def subsetOf(predicate:BoolTypedTerm, inSet:Set[BoolTypedTerm])
                    (implicit solver:SMTSolver):Set[BoolTypedTerm] =
        {
          for(p <- inSet if !(p eq predicate) && included(p, withSuperSet = predicate)) yield p
        }

        @scala.annotation.tailrec
        def forward(ls:Set[BoolTypedTerm]):Set[BoolTypedTerm]=   //freaking state change for now.
        {                                                        //var i = 0
          if(ls.isEmpty)                                         //var subset = Set[PredicateTerm]()
            Set[BoolTypedTerm]()                                 //val totest = a.toIndexedSeq
          else                                                   //while(i < a.size && subset.isEmpty)
          {                                                      //{
            val ss = subsetOf(ls.head, inSet=a)                  //   subset = subsetOf(totest(i), inSet = a)
            if(ss.isEmpty) forward(ls.tail) else ss              //   i = i + 1
          }                                                      //}
        }

        ///////
        val subset = forward(a)
        a -- subset
      }
    }

    val r = FixedPoint(test, step).run(predicates)
    solver.destroy()
    r
  }
  
  def removeTrueAndFalseTerms(predicates:Set[BoolTypedTerm]):Set[BoolTypedTerm]=
  {
     import logics._
     for(t <- predicates if t != True() && t != False()) yield t
  }

//  def apply(filters:Seq[(Set[PredicateTerm]) => Set[PredicateTerm]],
//            to:Set[PredicateTerm]):Set[PredicateTerm]=
//  {
//    if(filters.size > 0)
//      apply(filters.tail, filters.head(to))
//    else
//      to
//  }
}
