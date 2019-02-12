/*
 * This file is part of Skink.
 *
 * Copyright (C) 2015-2019
 * Programming Languages and Verification Research Group
 * Macquarie University
 *
 * Skink is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Skink is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * See COPYING and COPYING.LESSER for full license terms.
 * More information at http://www.gnu.org/licenses.
 */

package au.edu.mq.comp.skink.ir

/**
 * Interface for an Intermediate Representation function.
 */
trait IRFunction {

    import org.bitbucket.franck44.automat.auto.NFA
    import au.edu.mq.comp.skink.ir.FailureTrace
    import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.Term
    import org.bitbucket.franck44.scalasmt.theories.BoolTerm
    import org.bitbucket.franck44.scalasmt.typedterms.TypedTerm
    import scala.util.Try

    /**
     * The IR-level name of this function.
     */
    def name : String

    /**
     * Return `None` if this function actually is amenable to verification.
     * A function might not be amenable to verification if some pre-processing
     * is necessary but it didn't work. If verification is not possible, a
     * message is returned that can be displayed to the user. By default
     * this method always returns `None`.
     */
    def isVerifiable() : Option[String] =
        None

    /**
     * An NFA that represents the possible control flow of executions of
     * the function where final states represent failures. State labels
     * are not interpreted but are usually block names to aid logging.
     * Edges must be labelled with choice indices. See the documentation
     * of the `Trace` type for more detail on choices.
     */
    def nfa : NFA[String, Int]

    /**
     * Return SMTlib terms that express the effect of the given trace for
     * this function. Each element of the sequence contains a term
     * that describes the effect of a single trace step. The associated
     * Boolean expresses whether the transition out of that step
     * meaningfully contributes to the trace semantics, in the sense that
     * a fall-through to the next step is not meaningful, but one where
     * a choice has been made is meaningful.
     */
    def traceToTerms(trace : Trace) : Seq[(TypedTerm[BoolTerm, Term], Boolean)]

    /**
     * Given a trace, return one list element for each block in that trace
     * (in no defined order). The set for a block contains the indices in the
     * trace at which that block appears. E.g., `List(Set(0),Set(1,3),Set(2))`
     * means that one block occurs only at position 0, one at position 2 and
     * a third block occurs at positions 1 and 3.
     *
     * When comparing blocks it is the effect of that block at that point of the
     * trace that matters, not just the identity of the block.
     */
    def traceToRepetitions(trace : Trace) : Seq[Seq[Int]]

    /**
     * Given a trace and an index of a block in that trace give the effect of that
     * block when leaving using the given choice. Also return a map from variable
     * names to the variable indices that apply at the end of the block.
     */
    def traceBlockEffect(trace : Trace, index : Int, choice : Int) : (TypedTerm[BoolTerm, Term], Map[String, Int])

    /**
     *  Check that the image of a precondition is included in a postcondition
     *
     * @param     pre         the precondition over a set of prgram variables `V`
     * @param     blockTerm   an SSA term that encodes the semantics of a
     *                        sequence of instructions
     * @param     post        the postcondition over a set of program variables `v`
     */
    def checkPost(
        pre : TypedTerm[BoolTerm, Term],
        trace : Trace,
        index : Int,
        choice : Int,
        post : TypedTerm[BoolTerm, Term]
    )(
        implicit
        solver : SMTSolver
    ) : Try[Boolean]

    /**
     * Return the values that are returned by `__VERIFIER_nondet_T` functions in
     * the given failure trace of this function. Each element of the list result
     * gives the type of value returned by a call and the (optional) value returned.
     * The order reflects the order in which the trace performs these calls. A
     * value returned or `None` indicates that the value is unknown.
     */
    def traceToNonDetValues(failTrace : FailureTrace) : List[NonDetCall]

}
