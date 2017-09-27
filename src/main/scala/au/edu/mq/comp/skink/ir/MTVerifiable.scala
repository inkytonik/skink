package au.edu.mq.comp.skink

package ir

import au.edu.mq.comp.skink.SkinkConfig

import au.edu.mq.comp.skink.verifier.Verifiable
import org.bitbucket.franck44.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.Block
import scala.collection.immutable.Map
import scala.collection.mutable.{Map => MutableMap}
import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.scalallvm.assembly.AssemblySyntax.{ASTNode, FunctionDefinition, Program}

class MTVerifiable(ir : IR) extends Verifiable {

    import org.bitbucket.franck44.automat.auto.{NFA, DetAuto}
    import au.edu.mq.comp.skink.ir.{FailureTrace, NonDetCall, Step}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{ASTNode => _, _}
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import org.bitbucket.inkytonik.kiama.relation.{EnsureTree, Tree}
    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collectl
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import org.scalallvm.assembly.Analyser
    import org.scalallvm.assembly.Analyser.defaultBlockName
    import scala.collection.mutable.ListBuffer
    import scala.util.{Failure, Success, Try}

    /**
     * An NFA that represents the possible control flow of executions of
     * the function where final states represent failures. State labels
     * are not interpreted but are usually block names to aid logging.
     * Edges must be labelled with choice indices. See the documentation
     * of the `Trace` type for more detail on choices.
     */
    def nfa : DetAuto[_, Choice]

    /**
     * Compute a refinement from a trace for this function
     */
    def buildRefinement(
        trace : Trace,
        info : Option[String] = None
    ) : NFA[_, Choice] = {
        //  Add the refinement stuff here
        NFA[Int, Choice](Set(), Set(), Set())
    }

    /**
     * Return an error trace if any.
     *
     * @param   r   A refinement
     * @return      An error trace not in the refinement.
     */
    def getErrorTrace(r : NFA[_, Choice]) = {
        //  Use the partial order reduction here?
        None
    }
}
