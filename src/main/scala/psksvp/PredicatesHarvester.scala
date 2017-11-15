package psksvp

import org.bitbucket.franck44.scalasmt.configurations.SMTInit
import org.bitbucket.franck44.scalasmt.configurations.SMTOptions.INTERPOLANTS
import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import org.bitbucket.franck44.scalasmt.typedterms.{Commands, QuantifiedTerm, TypedTerm}

import scala.util.{Failure, Success}

/**
 * Created by psksvp on 19/5/17.
 */

trait PredicatesHarvester {
    def inferredPredicates : Set[PredicateTerm]
    def inferredWithFilter(f : Set[PredicateTerm] => Set[PredicateTerm]) : Set[PredicateTerm] = f(inferredPredicates)
}

/**
 * infer using existential quantifiers elimination
 * @param traceAnalyzer
 * @param functionInformation
 * @param solver
 */
case class EQEPredicatesHarvester(
    traceAnalyzer : TraceAnalyzer,
    functionInformation : FunctionInformation,
    solver : SMTSolver) extends PredicatesHarvester
    with Commands
    with QuantifiedTerm {
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{ISymbol, SymbolId, Term}
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm

    import scala.util.Success

    ///
    def inferPredicates(blockNo : Int, pre : Option[PredicateTerm] = None) : Seq[TypedTerm[BoolTerm, Term]] =
        {
            val (blockEffect, lastIndex) = traceAnalyzer.function.traceBlockEffect(
                traceAnalyzer.trace,
                blockNo,
                traceAnalyzer.choices(blockNo))

            ////////////////////////////////////////////////////////////////////////
            def blockLocalVariable(blockNo : Int) : Set[ISymbol] =
                {
                    def commonVar(s : ISymbol) : Boolean =
                        {
                            if (lastIndex.isDefinedAt(s.simpleVarname))
                                functionInformation.commonVariables.contains(s.simpleVarname) && lastIndex(s.simpleVarname) == s.digits
                            else
                                functionInformation.commonVariables.contains(s.simpleVarname)
                        }

                    val local = for (v <- blockEffect.typeDefs) yield {
                        v.id match {
                            case SymbolId(s @ ISymbol(n, i)) if !commonVar(s) => s
                            case _ => ISymbol("0", -1) /// ARGGGGGGG.......
                        }
                    }
                    local.filter(_.digits >= 0)
                }

            ////////////////////////////////////////////////////////////////////////
            val s = blockLocalVariable(blockNo).toSeq
            if (s.nonEmpty) {
                //val indexedPre = pre.indexedBy {case _ => 0}
                val e = SMTLIB.Exists(s.head, s.tail : _*)(blockEffect) //( indexedPre & blockEffect)
                //log(s"exists term:${psksvp.termAsInfix(e)}")

                psksvp.SMTLIB.Z3QE(e)(solver) match {
                    case Success(ls) => ls.map { t => t.unIndexed }
                    case Failure(e)  => sys.error(e.toString)
                    case _           => sys.error(s"psksvp.SMTLIB.Z3QE($e) fail")
                }
            } else {
                log("list of variables to quantify over is empty")
                Nil
            }
        }

    override def inferredPredicates : Set[PredicateTerm] =
        {
            val r = for (block <- 0 until traceAnalyzer.length - 1) yield inferPredicates(block).toSet
            r.reduce(_ union _)
        }
}

/**
 *
 * @param traceAnalyzer
 * @param functionInformation
 * @param solver
 */
case class InterpolantBasedHarvester(
    traceAnalyzer : TraceAnalyzer,
    functionInformation : FunctionInformation,
    solver : SMTSolver) extends PredicatesHarvester
    with Commands
    with QuantifiedTerm {
    lazy val namedTerms = for ((tt, n) <- traceAnalyzer.traceTerms.zipWithIndex) yield tt.named("p" + n)

    override def inferredPredicates : Set[PredicateTerm] =
        {
            val itpSolver = new SMTSolver("Z3", new SMTInit(List(INTERPOLANTS)))
            log("namedTerms")
            log(psksvp.termAsInfix(namedTerms))
            val r = getInterpolants(
                namedTerms.head,
                namedTerms.tail.head,
                namedTerms.drop(2) : _*)(itpSolver) match {
                    case Success(itp) => itp.toSet
                    case Failure(e)   => sys.error(s"InterpolantBasedHarvester fail : ${e.toString}")
                }
            itpSolver.destroy()
            r
        }
}

