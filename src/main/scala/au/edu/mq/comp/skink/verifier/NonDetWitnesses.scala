package au.edu.mq.comp.skink.verifier

import au.edu.mq.comp.skink.SkinkConfig

/**
 * Support for SV-COMP GraphML witness generation in the nondet format,
 * i.e., with the values returned by all nondet function calls.
 *
 */
class NonDetWitnesses(config : SkinkConfig) extends Witnesses(config) {

    import au.edu.mq.comp.skink.ir.{FailureTrace, IRFunction}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax._
    import org.bitbucket.franck44.scalasmt.typedterms.Value

    def termToBigDecimal(term : Term) : BigDecimal =
        term match {
            case ConstantTerm(DecLit(v)) =>
                BigDecimal(v)
            case NegTerm(ConstantTerm(DecLit(v))) =>
                -1 * BigDecimal(v)
            case ConstantTerm(NumLit(v)) =>
                BigDecimal(v)
            case NegTerm(ConstantTerm(NumLit(v))) =>
                -1 * BigDecimal(v)
            case _ =>
                sys.error(s"termToBigDecimal: unexpected term: $term")
        }

    def optValueToCValue(optValue : Option[Value]) : String =
        if (optValue.isDefined)
            optValue.get.t match {
                case RealDivTerm(dt, List(nt)) =>
                    val dv = termToBigDecimal(dt)
                    val nv = termToBigDecimal(nt)
                    (dv / nv).toString
                case ConstantTerm(DecLit(s))                        => s
                case ConstantTerm(HexaLit(s))                       => s"${new java.math.BigInteger(s, 16).intValue()}"
                case ConstantTerm(NumLit(i))                        => i.toString
                // case ConstantTerm(v : FPBVvalue)                    => v.toString // FIXME
                case ConstantTerm(FPPlusInfinity(_, _))             => "+infinity"
                case ConstantTerm(FPMinusInfinity(_, _))            => "-infinity"
                case ConstantTerm(FPBVPlusZero(_, _))               => "+zero"
                case ConstantTerm(FPBVMinusZero(_, _))              => "-zero"
                case ConstantTerm(FPBVNaN(_, _))                    => "NaN"
                case NegTerm(ConstantTerm(NumLit(i)))               => s"-$i"
                case QIdTerm(SimpleQId(SymbolId(SSymbol("true"))))  => "1"
                case QIdTerm(SimpleQId(SymbolId(SSymbol("false")))) => "0"
                case term =>
                    sys.error(s"optValueToCValue: unexpected value $term")
            }
        else
            "0"

    def printViolationWitness(function : IRFunction, failTrace : FailureTrace) {
        val returnedValues = function.traceToNonDetValues(failTrace)
        val numsteps = returnedValues.length

        for (i <- 0 until numsteps) {
            val call = returnedValues(i)
            logger.info(s"""printViolationWitness: call ${field(call.optCode)} gave ${call.optValue.getOrElse("nothing")}""")
        }

        val calls =
            returnedValues.zipWithIndex.map {
                case (call, index) =>
                    val node = if (index == 0) "" else mkNode(index) + "\n"
                    val value = optValueToCValue(call.optValue)
                    val edge =
                        mkEdge(
                            index,
                            mkData(Some(s"\\result == $value;"), "assumption") +
                                mkData(Some("main"), "assumption.scope") +
                                mkData(Some(s"__VERIFIER_nondet_${call.tipe}"), "assumption.resultfunction") +
                                mkData(call.optCode, "edge.src") +
                                mkData(call.optLine, "startline")
                        )
                    s"$node$edge"
            }

        val entryData = mkData(Some("true"), "entry")
        val errorData = mkData(Some("true"), "violation")

        val nodesAndEdges =
            if (numsteps == 0)
                Seq(mkNode(0, entryData + errorData))
            else {
                val entry = mkNode(0, entryData)
                val error = mkNode(numsteps, errorData)
                entry +: calls :+ error
            }

        outputWitness(ViolationWitness(nodesAndEdges))
    }

}
