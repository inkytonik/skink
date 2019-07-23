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

package au.edu.mq.comp.skink.ir.llvm

import org.bitbucket.franck44.scalasmt.theories.Core

/**
 * Interface for LLVM term builders in all modes.
 */
trait LLVMTermBuilder extends Core {

    import au.edu.mq.comp.skink.{Logger, SkinkConfig}
    import org.bitbucket.franck44.scalasmt.theories.{ArrayTerm, BoolTerm}
    import org.bitbucket.franck44.scalasmt.typedterms.{TypedTerm, VarTerm}
    import org.bitbucket.franck44.scalasmt.parser.SMTLIB2Syntax.{BoolSort, Term}
    import org.bitbucket.inkytonik.kiama.util.Source
    import org.scalallvm.assembly.Analyser
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.PrettyPrinter._

    // The term builder's context
    val origSource : Source
    val logger : Logger

    val source : Source
    val program : Program
    val funAnalyser : Analyser

    val namer : LLVMNamer
    import namer.{indexOf, termid}

    val helper : LLVMHelper
    import helper._

    val config : SkinkConfig

    /**
     * The type used to represent integer terms.
     */
    type IntTermType

    /**
     * The type used to represent real terms.
     */
    type RealTermType

    /*
     * Return terms that express the effect of an LLVM node, including of
     * phi insns given entry to the block from a particular previous block
     * (if there is one), and exit from this block using a particular choice.
     */
    def blockTerms(block : Block, optPrevBlock : Option[Block], choice : Int) : Vector[TypedTerm[BoolTerm, Term]] = {
        logger.info(origSource, s"blockTerms: block ${funAnalyser.blockName(block)}")
        val phiEffects = block.optMetaPhiInstructions.map(i => phiInsnTerm(i, optPrevBlock))
        val effects = block.optMetaInstructions.map(insnTerm)
        val exitEffect = exitTerm(block.metaTerminatorInstruction, choice)
        phiEffects ++ effects :+ exitEffect
    }

    /*
     * Return a term that expresses the effect of an LLVM terminator instruction
     * that exits a block using a particular choice.
     * Exits or choices are integers >=0, typically 0 and 1 for an if-then-else, 0 for
     * a non-conditional exit.
     */
    def exitTerm(metaInsn : MetaTerminatorInstruction, choice : Int) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.terminatorInstruction
        val term =
            insn match {
                case Branch(_) if choice == 0 =>
                    True()

                case BranchCond(value, _, _) if choice == 0 =>
                    vtermB(value)

                case BranchCond(value, _, _) if choice == 1 =>
                    !vtermB(value)

                case Switch(IntegerT(bits), value, _, cases) if choice == cases.length =>
                    combineTerms(cases.map { case Case(_, v, _) => !(vtermI(value, bits) === vtermI(v, bits)) })

                case Switch(IntegerT(bits), value, _, cases) if choice >= 0 && choice < cases.length =>
                    vtermI(value, bits) === vtermI(cases(choice).value, bits)

                case _ : Ret | RetVoid() | Unreachable() if choice == 0 =>
                    True()

                case insn =>
                    sys.error(s"exitTerm: can't handle choice $choice of ${longshow(insn)}")
            }
        logger.debug(origSource, s"exitTerm: choice $choice of ${longshow(insn)} -> ${term.show}")
        term
    }

    /**
     * Return terms that express the initialisation of the program, not
     * includnig program items.
     */
    def initTerm(program : Program) : TypedTerm[BoolTerm, Term] =
        True()

    /**
     * Return terms that express the semantics of the given normal instruction.
     */
    def insnTerm(metaInsn : MetaInstruction) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.instruction
        insn match {

            // Binary Boolean

            case Binary(Binding(to), op, BoolT(), left, right) =>
                val lterm = vtermB(left)
                val rterm = vtermB(right)
                val exp =
                    op match {
                        case _ : And => lterm & rterm
                        case _ : Or  => lterm | rterm
                        case _ : XOr => lterm xor rterm
                        case _ =>
                            opError2[BoolTerm]("Boolean", left, op, right)
                    }
                ntermB(to) === exp

            // Binary integer

            case Binary(_, _, _, Const(UndefC()), _) =>
                True()

            case Binary(_, _, _, _, Const(UndefC())) =>
                True()

            case Binary(Binding(to), op, tipe : IntT, left, right) =>
                val bits = numBits(tipe)
                ntermI(to, bits) === iBinary(op, left, right, bits)

            // Binary real

            case Binary(Binding(to), FAdd(_), RealT(bits), left, Const(FloatC("0"))) =>
                ntermR(to, bits) === vtermR(left, bits)

            case Binary(Binding(to), op, RealT(bits), left, right) =>
                ntermR(to, bits) === fpBinary(op, left, right, bits)

            // Unary real

            case Unary(Binding(to), op, RealT(bits), arg) =>
                ntermR(to, bits) === fpUnary(op, arg, bits)

            // Comparison

            case Compare(_, _, _, Const(UndefC()), _) =>
                True()

            case Compare(_, _, _, _, Const(UndefC())) =>
                True()

            case Compare(Binding(to), ICmp(cond), BoolT(), left, right) =>
                val lterm = vtermB(left)
                val rterm = vtermB(right)
                val exp =
                    cond match {
                        case EQ() => lterm === rterm
                        case NE() => !(lterm === rterm)
                        case _ =>
                            opError2[BoolTerm]("Boolean comparison", left, cond, right)
                    }
                ntermB(to) === exp

            case Compare(Binding(to), ICmp(icond), ComparisonType(bits), left, right) =>
                ntermB(to) === iCompare(icond, left, right, bits)

            case Compare(Binding(to), FCmp(fcond), ComparisonType(bits), left, right) =>
                ntermB(to) === fpCompare(fcond, left, right, bits)

            // Conversion

            case Convert(Binding(to), _, IntT(_), Const(UndefC()), IntT(_)) =>
                True()

            // Select

            case Select(Binding(to), SelectI1T(), from, BoolT(), value1, BoolT(), value2) =>
                ntermB(to) === vtermB(from).ite(vtermB(value1), vtermB(value2))

            case Select(Binding(to), SelectI1T(), from, IntegerT(bits1), value1, IntegerT(bits2), value2) if bits1 == bits2 =>
                ntermI(to, bits1) === vtermB(from).ite(vtermI(value1, bits1), vtermI(value2, bits1))

            case Select(Binding(to), SelectI1T(), from, RealT(bits1), value1, RealT(bits2), value2) if bits1 == bits2 =>
                ntermR(to, bits1) === vtermB(from).ite(vtermR(value1, bits1), vtermR(value2, bits1))

            // Memory

            case Alloca(Binding(to), _, tipe, _, _) =>
                alloca(to, tipe)

            // Call

            case Call(_, _, _, _, _, LibFunction(Assume()), Vector(ValueArg(tipe, Vector(), arg)), _) =>
                tipe match {
                    case BoolT() =>
                        vtermB(arg)
                    case IntT(_) =>
                        val bits = numBits(tipe)
                        !(vtermI(arg, bits) === ctermI(ZeroC(), bits))
                    case _ =>
                        sys.error(s"insnTerm: unexpected type ${show(tipe)} in assume call")
                }

            case ErrorCall() =>
                True()

            // Default

            case insn =>
                sys.error(s"insnTerm: don't know the effect of ${longshow(insn)}")

        }
    }

    /**
     *  Return terms that express the semantics of the all top-level items in the given program.
     */
    def itemTerms(program : Program) : Seq[TypedTerm[BoolTerm, Term]] = {
        val terms = program.items.map(itemTerm)
        logger.info(origSource, s"itemsTerm: ${terms.map(_.show)}")
        terms
    }

    /**
     *  Return terms that express the semantics of the given top-level item.
     */
    def itemTerm(item : Item) : TypedTerm[BoolTerm, Term] =
        True()

    /*
     * Return a term that expresses the effect of an LLVM phi instruction
     * given that control comes from a particular previous block (if any).
     */
    def phiInsnTerm(metaInsn : MetaPhiInstruction, optPrevBlock : Option[Block]) : TypedTerm[BoolTerm, Term] = {
        val insn = metaInsn.phiInstruction
        val term : TypedTerm[BoolTerm, Term] =
            optPrevBlock match {
                case Some(prevBlock) =>
                    val prevLabel = Label(Local(funAnalyser.blockName(prevBlock)))
                    insn match {
                        case insn @ PhiInstruction(Binding(to), tipe, preds) =>
                            // Bound phi result, find value
                            preds.find(_.label == prevLabel) match {
                                case Some(pred) =>
                                    equality(to, tipe, pred.value, tipe)
                                case None =>
                                    sys.error(s"phiInsnTerm: can't find ${show(prevLabel)} in ${longshow(insn)}")
                            }
                        case PhiInstruction(NoBinding(), _, _) =>
                            // No effect since result of phi is not bound
                            True()
                    }
                case None =>
                    // No previous block so phi insns don't make sense...
                    sys.error(s"phiInsnTerm: found ${longshow(insn)} but have no previous block")
            }
        logger.debug(origSource, s"phiInsnTerm: ${longshow(insn)} -> ${term.show}")
        term
    }

    // Booleans

    /**
     * Make a Boolean term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermB(id : String, index : Int) : TypedTerm[BoolTerm, Term] =
        new VarTerm(termid(id), BoolSort(), Some(index))

    /**
     * Return a Boolean term that expresses a name when referenced from node.
     */
    def ntermAtB(node : ASTNode, name : Name) : TypedTerm[BoolTerm, Term] =
        varTermB(show(name), indexOf(node, name))

    /**
     * Return a Boolean term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermB(name : Name) : TypedTerm[BoolTerm, Term] =
        ntermAtB(name, name)

    /**
     * Return a BoolTerm that expresses an LLVM i1 value.
     */
    def vtermB(value : Value) : TypedTerm[BoolTerm, Term] =
        value match {
            case Const(c) =>
                ctermB(c)
            case Named(name) =>
                ntermB(name)
            case value =>
                sys.error(s"vtermB: unexpected value $value")
        }

    /**
     * Return a Boolean term that expresses an LLVM Boolean constant value.
     */
    def ctermB(constantValue : ConstantValue) : TypedTerm[BoolTerm, Term] =
        constantValue match {
            case CompareC(FCmp(cond), ltype @ ComparisonType(bits), left, rtype, right) if ltype == rtype =>
                fpCompare(cond, Const(left), Const(right), bits)
            case CompareC(ICmp(cond), ltype @ ComparisonType(bits), left, rtype, right) if ltype == rtype =>
                iCompare(cond, Const(left), Const(right), bits)
            case FalseC() =>
                False()
            case IntC(i) =>
                if (i == 0) False() else True()
            case TrueC() =>
                True()
            case ZeroC() =>
                False()
            case value =>
                sys.error(s"ctermB: unexpected constant value $constantValue")
        }

    /*
     * Turn a Boolean term into an integer encoding of the truth value.
     */
    def boolToIntTerm(term : TypedTerm[BoolTerm, Term], bits : Int) : TypedTerm[IntTermType, Term] =
        term.ite(ctermI(TrueC(), bits), ctermI(FalseC(), bits))

    // Integer numbers

    /**
     * Return a term for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermI(id : String, index : Int, bits : Int = 0) : TypedTerm[IntTermType, Term]

    /**
     * Return a term that expresses a name when referenced from node.
     */
    def ntermAtI(node : ASTNode, name : Name, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        varTermI(show(name), indexOf(node, name), bits)

    /**
     * Return a term that expresses a suffixed name when referenced from node.
     */
    def ntermSuffixAtI(node : ASTNode, suffix : String, name : Name, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        varTermI(show(name) + suffix, indexOf(node, name), bits)

    /**
     * Return a term that expresses a suffixed name when referenced before node.
     */
    def prevNtermSuffixAtI(node : ASTNode, suffix : String, name : Name, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        varTermI(show(name) + suffix, indexOf(node, name) - 1, bits)

    /**
     * Return a term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermI(name : Name, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        ntermAtI(name, name, bits)

    /**
     * Return a term that expresses a suffixed LLVM name when referenced
     * from the name node.
     */
    def ntermSuffixI(name : Name, suffix : String, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        ntermSuffixAtI(name, suffix, name, bits)

    /**
     * Return a term that expresses a suffixed LLVM name when referenced
     * before the name node.
     */
    def prevNtermSuffixI(name : Name, suffix : String, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        prevNtermSuffixAtI(name, suffix, name, bits)

    /**
     * Return an integer term that expresses a value when referenced from node.
     */
    def vtermAtI(node : ASTNode, value : Value, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        value match {
            case Named(name) =>
                ntermAtI(node, name, bits)
            case _ =>
                vtermI(value, bits)
        }

    /**
     * Return a term that expresses an LLVM int value of a given bit size.
     */
    def vtermI(value : Value, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        value match {
            case Const(c) =>
                ctermI(c, bits)
            case Named(name) =>
                ntermI(name, bits)
            case value =>
                sys.error(s"vtermI: unexpected value $value")
        }

    /**
     * Return a term that expresses an LLVM integer constant value.
     */
    def ctermI(constantValue : ConstantValue, bits : Int = 0) : TypedTerm[IntTermType, Term]

    /*
     * Turn an LLVM integer name into integer encoding, taking into account
     * Boolean encoding.
     */
    def nintToIntTerm(name : Name, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        if (bits == 1)
            boolToIntTerm(ntermB(name), bits)
        else
            ntermI(name, bits)

    /*
     * Turn an LLVM integer value into integer encoding, taking into account
     * Boolean encoding.
     */
    def vintToIntTerm(value : Value, bits : Int = 0) : TypedTerm[IntTermType, Term] =
        if (bits == 1)
            boolToIntTerm(vtermB(value), bits)
        else
            vtermI(value, bits)

    /**
     * Return a term to express an integer binary operation.
     */
    def iBinary(op : BinOp, left : Value, right : Value, bits : Int = 0) : TypedTerm[IntTermType, Term]

    /**
     * Return a term to express an integer comparison.
     */
    def iCompare(cond : ICond, left : Value, right : Value, bits : Int = 0) : TypedTerm[BoolTerm, Term]

    // Real numbers

    /**
     * Make a erm for the named variable where `id` is the base name
     * identifier and index it.
     */
    def varTermR(id : String, index : Int, bits : Int = 0) : TypedTerm[RealTermType, Term]

    /**
     * Return a bit vector term that expresses a name when referenced from node.
     */
    def ntermAtR(node : ASTNode, name : Name, bits : Int = 0) : TypedTerm[RealTermType, Term] =
        varTermR(show(name), indexOf(node, name), bits)

    /**
     * Return a bit vector term that expresses an LLVM name when referenced
     * from the name node.
     */
    def ntermR(name : Name, bits : Int = 0) : TypedTerm[RealTermType, Term] =
        ntermAtR(name, name, bits)

    /**
     * Return a bit vector term that expresses a value when referenced from node.
     */
    def vtermAtR(node : ASTNode, value : Value, bits : Int = 0) : TypedTerm[RealTermType, Term] =
        value match {
            case Named(name) =>
                ntermAtR(node, name, bits)
            case _ =>
                vtermR(value, bits)
        }

    /**
     * Return a bit vector term that expresses an LLVM floating-point value.
     */
    def vtermR(value : Value, bits : Int = 0) : TypedTerm[RealTermType, Term] =
        value match {
            case Const(c) =>
                ctermR(c, bits)
            case Named(name) =>
                ntermR(name, bits)
            case value =>
                sys.error(s"vtermR: unexpected value $value")
        }

    /**
     * Return a term that expresses an LLVM floating-point constant value.
     */
    def ctermR(constantValue : ConstantValue, bits : Int = 0) : TypedTerm[RealTermType, Term] =
        constantValue match {
            case BinaryC(op, ltype @ RealT(bits), left, rtype, right) if ltype == rtype =>
                fpBinary(op, Const(left), Const(right), bits)
            case FloatC(f) =>
                fpconst(f, bits)
            case UndefC() =>
                fpdecconst("0", bits)
            case value =>
                sys.error(s"ctermR: unexpected constant value $constantValue")
        }

    /**
     * Convert a string floating-poiint representation to a term.
     */
    def fpconst(f : String, bits : Int = 0) : TypedTerm[RealTermType, Term] =
        if (f.startsWith("0xK"))
            fphexconst(f.drop(3), 80, bits)
        else if (f.startsWith("0x"))
            fphexconst(f.drop(2), 64, bits)
        else
            fpdecconst(f, bits)

    /*
     * Return a term for a given sized floating-point decimal constant.
     */
    def fpdecconst(f : String, bits : Int = 0) : TypedTerm[RealTermType, Term]

    /**
     * Make a floating-point term from a hexadecimal literal string.
     */
    def fphexconst(f : String, srcbits : Int = 0, tgtbits : Int = 0) : TypedTerm[RealTermType, Term]

    /**
     * Return a term to express a floating-point bitvector binary operation.
     */
    def fpBinary(op : BinOp, left : Value, right : Value, bits : Int = 0) : TypedTerm[RealTermType, Term]

    /**
     * Return a term to express a floating-point bitvector operation.
     */
    def fpUnary(op : UnOp, arg : Value, bits : Int = 0) : TypedTerm[RealTermType, Term]

    /**
     * Return a term to express a floating-point comparison.
     */
    def fpCompare(cond : FCond, left : Value, right : Value, bits : Int = 0) : TypedTerm[BoolTerm, Term]

    // Arrays

    /**
     * Make an integer ArrayTerm for the named variable where `id` is the base name
     * identifier and include an index.
     */
    def arrayTermI(id : String, index : Int, bits : Int = 0) : TypedTerm[ArrayTerm[IntTermType], Term]

    /**
     * Return an array term that expresses a name when referenced from node.
     */
    def arrayTermAtI(node : Product, name : Name, bits : Int = 0) : TypedTerm[ArrayTerm[IntTermType], Term] =
        arrayTermI(show(name), indexOf(node, name), bits)

    /**
     * Return an integer term that expresses the previous version of a name when
     * referenced from node.
     */
    def prevArrayTermAtI(node : Product, name : Name, bits : Int = 0) : TypedTerm[ArrayTerm[IntTermType], Term] =
        arrayTermI(show(name), indexOf(node, name) - 1, bits)

    // Memory operators

    /**
     * Return a term to represent the allocation of stack memory.
     */
    def alloca(to : Name, tipe : Type) : TypedTerm[BoolTerm, Term]

    // Assume

    /**
     * Return a term for a call to "assume".
     */
    def assume(arg : Value, tipe : Type) : TypedTerm[BoolTerm, Term] =
        tipe match {
            case BoolT() =>
                vtermB(arg)
            case IntT(_) =>
                val bits = numBits(tipe)
                !(vtermI(arg, bits) === ctermI(ZeroC(), bits))
            case _ =>
                sys.error(s"assume: unexpected type ${show(tipe)} in call")
        }

    // Equality

    /**
     * Return a term that expresses equality between `to` and `from.
     */
    def equality(to : Name, toType : Type, from : Value, fromType : Type) : TypedTerm[BoolTerm, Term] =
        if (from == Const(UndefC()))
            True() === True()
        else
            (toType, fromType) match {
                case (BoolT(), BoolT()) =>
                    ntermB(to) === vtermB(from)

                case (BoolT(), IntegerT(_)) =>
                    val fromBits = numBits(fromType)
                    ntermB(to) === !(vtermI(from, fromBits) === ctermI(ZeroC(), fromBits))
                case (IntegerT(toSize), BoolT()) =>
                    val toBits = numBits(toType)
                    ntermI(to, toBits) === vintToIntTerm(from, toBits)

                case (BoolT(), RealT(fromBits)) =>
                    ntermB(to) === !(vtermR(from, fromBits) === ctermR(ZeroC(), fromBits))
                case (RealT(toBits), BoolT()) =>
                    ntermR(to, toBits) === vtermB(from).ite(ctermR(FloatC("1.0"), toBits), ctermR(FloatC("0.0"), toBits))

                case (RealT(toBits), IntegerT(_)) if toBits == numBits(fromType) =>
                    ntermR(to, toBits) === vtermR(from, toBits)
                case (IntegerT(_), RealT(fromBits)) if numBits(toType) == fromBits =>
                    ntermR(to, fromBits) === vtermR(from, fromBits)

                case _ =>
                    sys.error(s"equality: unexpected equality: $to : $toType, $from : $fromType")
            }

    // Utilities

    /*
     * Throw an error that unary `op` applied to `arg` cannot be handled.
     * Prefix is prepended to the message.
     */
    def opError1[T](prefix : String, op : ASTNode, arg : Value) : TypedTerm[T, Term] =
        sys.error(s"$prefix op ${show(op)} ${show(arg)} not handled")

    /*
     * Throw an error that binary `op` applied to `left` and `right`
     * cannot be handled. Prefix is prepended to the message.
     */
    def opError2[T](prefix : String, left : Value, op : ASTNode, right : Value) : TypedTerm[T, Term] =
        sys.error(s"$prefix op ${show(op)} ${show(left)} ${show(right)} not handled")

    /**
     * Combine terms via conjunction, dealing with case where there are no
     * terms so effect is "true". Any true terms in the sequence are removed.
     */
    def combineTerms(terms : Seq[TypedTerm[BoolTerm, Term]]) : TypedTerm[BoolTerm, Term] =
        if (terms.isEmpty)
            True()
        else
            terms.reduceLeft((l, r) => if (r == True()) l else l & r)

    /*
     * Return a type definition by name if there is one.
     */
    def lookupType(name : Name) : Option[Type] =
        program.items.collectFirst {
            case TypeDefinition(n, tipe) if name == n =>
                tipe
        }

    /*
     * Return the number of bits in the representation of a type.
     */
    def numBits(tipe : Type) : Int =
        tipe match {
            case ArrayT(num, tipe)   => num.toInt * numBits(tipe)
            case RealT(bits)         => bits
            case IntT(n)             => n.toInt
            case StructT(fieldTypes) => fieldTypes.map(numBits(_)).sum
            case PointerT(_, _)      => config.architecture()
            case NameT(name) =>
                lookupType(name) match {
                    case Some(tipe) => numBits(tipe)
                    case None       => sys.error(s"numBits: can't find type $name")
                }
            case _ =>
                sys.error(s"numBits: unsupported type ${show(tipe)} $tipe")
        }

    /*
     * Return the number of bytes in the representation of a type.
     * Rounds up if not a multiple of eight bits.
     */
    def numBytes(tipe : Type) : Int =
        (numBits(tipe) + 7) / 8

    /**
     * Matcher for types that we support comparisons between. Returns the bit size
     * of the compared type.
     */
    object ComparisonType {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case IntT(_) | RealT(_) | PointerT(_, _) =>
                    Some(numBits(tipe))
                case _ => None
            }
    }

    /**
     * Version of LLVM PP show that avoids line-wrapping.
     */
    def longshow(n : ASTNode) : String =
        show(n, 1000)

}
