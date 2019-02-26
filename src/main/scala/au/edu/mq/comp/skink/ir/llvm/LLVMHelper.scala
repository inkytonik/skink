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

import au.edu.mq.comp.skink.SkinkConfig
import org.scalallvm.assembly.AssemblySyntax._

class LLVMHelper(config : SkinkConfig) {

    import au.edu.mq.comp.skink.{Bit, Math}

    // Property helpers

    /**
     * The global variable name in which we track the rounding mode.
     */
    def fprmodeName : Name =
        Global("_fprmode")

    /**
     * Convert an LLVM name into its string representation.
     */
    def nameToString(name : Name) : String =
        name match {
            case Global(s) => s
            case Local(s)  => s
        }

    // Extractors to make matching more convenient

    /**
     * Matcher for assumption function names.
     */
    object Assume {
        def unapply(name : String) : Boolean =
            List("assume", "__VERIFIER_assume", "pagai.invariant") contains name
    }

    /**
     * Matcher for LLVM Boolean types (i.e., i1).
     */
    object BoolT {
        def unapply(tipe : Type) : Boolean =
            tipe match {
                case IntT(n) if n == 1 =>
                    true
                case _ =>
                    false
            }
    }

    /**
     * Matcher for `ceil` function names.
     */
    object Ceil {
        def unapply(name : String) : Boolean =
            (List("ceil", "ceilf", "ceill") contains name) ||
                name.startsWith("llvm.ceil.")
    }

    /**
     * Matcher for "copysign" function names.
     */
    object CopySign {
        def unapply(name : String) : Boolean =
            (List("copysign", "copysignf", "copysignl") contains name) ||
                name.startsWith("llvm.copysign.")
    }

    /**
     * Matcher for exit function names.
     */
    object Exit {
        def unapply(name : String) : Boolean =
            name == "abort" || name == "exit"
    }

    /**
     * Matcher for `fabs` function names.
     */
    object FAbs {
        def unapply(name : String) : Boolean =
            (List("fabs", "fabsf", "fabsl") contains name) ||
                name.startsWith("llvm.fabs.")
    }

    /**
     * Matcher for "fdim" function names.
     */
    object FDim {
        def unapply(name : String) : Boolean =
            List("fdim", "fdimf", "fdiml") contains name
    }

    /**
     * Matcher for "fegetround" function names.
     */
    object FEGetRound {
        def unapply(name : String) : Boolean =
            name == "fegetround"
    }

    /**
     * Matcher for "fesetround" function names.
     */
    object FESetRound {
        def unapply(name : String) : Boolean =
            name == "fesetround"
    }

    /**
     * Matcher for "floor" function names.
     */
    object Floor {
        def unapply(name : String) : Boolean =
            (List("floor", "floorf", "floorl") contains name) ||
                name.startsWith("llvm.floor.")
    }

    /**
     * Matcher for "fmax" function names.
     */
    object FMax {
        def unapply(name : String) : Boolean =
            (List("fmax", "fmaxf", "fmaxl") contains name) ||
                name.startsWith("llvm.maxnum.")
    }

    /**
     * Matcher for "fmin" function names.
     */
    object FMin {
        def unapply(name : String) : Boolean =
            (List("fmin", "fminf", "fminl") contains name) ||
                name.startsWith("llvm.minnum.")
    }

    /**
     * Matcher for "fmod" function names.
     */
    object FMod {
        def unapply(name : String) : Boolean =
            List("fmod", "fmodf", "fmodl") contains name
    }

    /**
     * Matcher for "fpclassfiy" function names.
     */
    object FPClassify {
        def unapply(name : String) : Boolean =
            List("fpclassify", "__fpclassify", "__fpclassifyf", "__fpclassifyl") contains name
    }

    /**
     * Matcher for "free" function names.
     */
    object Free {
        def unapply(name : String) : Boolean =
            name == "free"
    }

    /**
     * Extractor for initialised global variable items that returns global name,
     * type and intiial constant value.
     */
    object GlobalInitVar {
        def unapply(item : Item) : Option[(Name, Type, ConstantValue)] =
            item match {
                case GlobalVariableDefinition(
                    GlobalBinding(name), _, _, _, _, _, _, _, _, _,
                    tipe, Init(constantValue), _, _, _, _) =>
                    Some((name, tipe, constantValue))
                case _ =>
                    None
            }
    }

    /**
     * Matcher for LLVM Integer (non-Boolean) types (i.e., in, n > 1).
     * Return n for successful matches.
     */
    object IntegerT {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case IntT(n) if n > 1 =>
                    Some(n.toInt)
                case _ =>
                    None
            }
    }

    /**
     * Matcher for "isinf" function names.
     */
    object IsInf {
        def unapply(name : String) : Boolean =
            List("isinf", "__isinf", "__isinff") contains name
    }

    /**
     * Matcher for "isnan" function names.
     */
    object IsNan {
        def unapply(name : String) : Boolean =
            List("isnan", "__isnan", "__isnanf") contains name
    }

    /**
     * Extractor to match various forms of calls to library functions,
     * returning the function name. The main reason for the differences
     * between the forms seems to be whether a correct prototype is
     * available when the LLVM IR is produced. To simplify things, we
     * don't assume that the proper prototype is there, so we support
     * these multiple forms.
     */
    object LibFunction {
        def unapply(v : CalledValue) : Option[String] =
            v match {
                case Function(Named(Global(name))) =>
                    Some(name)
                case Function(Const(ConvertC(Bitcast(), _, NameC(Global(name)), _))) =>
                    Some(name)
                case _ =>
                    None
            }
    }

    /**
     * Matcher for global library function calls with zero arguments. Successful
     * matches return the optional binding, return type, string function name.
     */
    object LibFunctionCall0 {
        def unapply(insn : Instruction) : Option[(OptBinding, Type, String)] = {
            insn match {
                case Call(to, _, _, _, tipe, LibFunction(name), Vector(), _) =>
                    Some((to, tipe, name))
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for global library function calls with a single argument. Successful
     * matches return the optional binding, return type, string function name, argument
     * and argument type.
     */
    object LibFunctionCall1 {
        def unapply(insn : Instruction) : Option[(OptBinding, Type, String, Value, Type)] = {
            insn match {
                case Call(to, _, _, _, tipe, LibFunction(name), Vector(ValueArg(tipe1, _, arg1)), _) =>
                    Some((to, tipe, name, arg1, tipe1))
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for global library function calls with two arguments. Successful
     * matches return the optional binding, return type, string function name,
     * arguments and argument types.
     */
    object LibFunctionCall2 {
        def unapply(insn : Instruction) : Option[(OptBinding, Type, String, Value, Type, Value, Type)] = {
            insn match {
                case Call(to, _, _, _, tipe, LibFunction(name), Vector(ValueArg(tipe1, _, arg1), ValueArg(tipe2, _, arg2)), _) =>
                    Some((to, tipe, name, arg1, tipe1, arg2, tipe2))
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for global library function calls with four arguments. Successful
     * matches return the optional binding, return type, string function name,
     * arguments and argument types.
     */
    object LibFunctionCall4 {
        def unapply(insn : Instruction) : Option[(OptBinding, Type, String, Value, Type, Value, Type, Value, Type, Value, Type)] = {
            insn match {
                case Call(to, _, _, _, tipe, LibFunction(name), Vector(ValueArg(tipe1, _, arg1), ValueArg(tipe2, _, arg2), ValueArg(tipe3, _, arg3), ValueArg(tipe4, _, arg4)), _) =>
                    Some((to, tipe, name, arg1, tipe1, arg2, tipe2, arg3, tipe3, arg4, tipe4))
                case _ =>
                    None
            }
        }
    }

    /**
     * Extractor that recognises names of functions that we support as library
     * functions, i.e. we cope if calls of these remain in the program to be
     * verified.
     */
    object LibFunctionName {
        def unapply(name : String) : Boolean =
            config.numberMode() match {
                case Bit() =>
                    name match {
                        case Assume() | Ceil() | CopySign() | Exit() | FAbs() | FDim() |
                            Floor() | FMax() | FMin() | FMod() | FPClassify() | Free() |
                            IsInf() | IsNan() | Lifetime() | LRInt() | LRound() | MemoryAlloc() |
                            MemoryAllocClear() | Memset() | NAN() | Output() | Remainder() |
                            RInt() | Round() | SignBit() | Trunc() | Varargs() |
                            VerifierFunction() =>
                            true
                        case _ =>
                            false
                    }
                case Math() =>
                    name match {
                        case Assume() | FAbs() | MemoryAlloc() | MemoryAllocClear() | Output() | Varargs() |
                            VerifierFunction() =>
                            true
                        case _ =>
                            false
                    }
            }
    }

    /**
     * Matcher for "llvm.lifetime" intrinsic names.
     */
    object Lifetime {
        def unapply(name : String) : Boolean =
            name.startsWith("llvm.lifetime")
    }

    /**
     * Matcher for "lrint" function names.
     */
    object LRInt {
        def unapply(name : String) : Boolean =
            List("lrint", "lrintf", "lrintf", "llrint", "llrintf", "llrintf") contains name
    }

    /**
     * Matcher for "lround" function names.
     */
    object LRound {
        def unapply(name : String) : Boolean =
            List("lround", "lroundf", "lroundl", "llroundl", "llroundf") contains name
    }

    /**
     * Matcher for memory allocation calls. Successful matches return the
     * optional binding, the argument value, and whether or not this
     * function clears its memory.
     */
    object Malloc {
        def unapply(insn : Instruction) : Option[(OptBinding, Value, Boolean)] = {
            insn match {
                case Call(to, _, _, _, _, Function(Named(Global(MemoryAlloc()))), Vector(ValueArg(_, _, arg)), _) =>
                    Some((to, arg, false))
                case Call(to, _, _, _, _, Function(Named(Global(MemoryAllocClear()))), Vector(ValueArg(_, _, arg)), _) =>
                    Some((to, arg, true))
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for memory allocation function names.
     */
    object MemoryAlloc {
        def unapply(name : String) : Boolean =
            List("malloc") contains name
    }

    /**
     * Matcher for "clearing" memory allocation function names.
     */
    object MemoryAllocClear {
        def unapply(name : String) : Boolean =
            List("calloc", "kzalloc") contains name
    }

    /**
     * Matcher for LLVM "memset" instrinsic function names.
     */
    object Memset {
        def unapply(name : String) : Boolean =
            name.startsWith("llvm.memset")
    }

    /**
     * Matcher for "nan" function names.
     */
    object NAN {
        def unapply(name : String) : Boolean =
            List("nan", "nanf", "nanl") contains name
    }

    /**
     * Matcher for nondet function names. Successful matches return the
     * identifier of the type that is returned by the matched function.
     */
    object NondetFunctionName {
        def unapply(name : String) : Option[String] = {
            val NondetName = "__VERIFIER_nondet_(.+)$".r
            name match {
                case NondetName(tipe) =>
                    Some(tipe)
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for output function names.
     */
    object Output {
        def unapply(name : String) : Boolean =
            List("fprintf", "printf") contains name
    }

    /**
     * Matcher for LLVM real (floating-point) types. Just standard float and double for now.
     * Returns the bit size of the type.
     */
    object RealT {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case HalfT()                 => Some(16)
                case FloatT()                => Some(32)
                case DoubleT()               => Some(64)
                case X86_FP80()              => Some(80)
                case FP128T() | PPC_FP128T() => Some(128)
                case _                       => None
            }
    }

    /**
     * Matcher for "remainder" function names.
     */
    object Remainder {
        def unapply(name : String) : Boolean =
            List("remainder", "remainderf", "remainderl") contains name
    }

    /**
     * Matcher for `rint` function names.
     */
    object RInt {
        def unapply(name : String) : Boolean =
            (List("rint", "rintf", "rintl") contains name) ||
                name.startsWith("llvm.rint.")
    }

    /**
     * Matcher for `round` function names.
     */
    object Round {
        def unapply(name : String) : Boolean =
            (List("round", "roundf", "lroundl") contains name) ||
                name.startsWith("llvm.round.")
    }

    /**
     * Matcher for "signbit" function names.
     */
    object SignBit {
        def unapply(name : String) : Boolean =
            List("signbit", "__signbit", "__signbitf") contains name
    }

    /*
     * Extractor for base variable names that identifies numeric names,
     * i.e., LLVM temporaries.
     */
    object TempVarBaseName {
        def unapply(name : String) : Option[Int] = {
            val TempBaseName = "([0-9]+)".r
            name match {
                case TempBaseName(temp) =>
                    Some(temp.toInt)
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for `trunc` function names.
     */
    object Trunc {
        def unapply(name : String) : Boolean =
            (List("trunc", "truncf", "truncl") contains name) ||
                name.startsWith("llvm.trunc.")
    }

    /**
     * Matcher for names of unsigned types X that might occur with __VERIFIER_nondet_X()
     * functions. Returns the bit size of the type.
     */
    object UnsignedType {
        def unapply(typeName : String) : Option[Int] =
            typeName match {
                case "u32"      => Some(32)
                case "uchar"    => Some(8)
                case "uint"     => Some(32)
                case "ulong"    => Some(64)
                case "unsigned" => Some(32)
                case "ushort"   => Some(16)
                case _          => None
            }

    }

    /**
     * Make an indexed variable name. Inverse of `UserLevelVarName`.
     */
    def makeIndexedVarName(varName : String, index : Int) : String =
        s"${varName}@${index}"

    /**
     * Extractor for indexed variable names. If a match is found,
     * the name of the variable and the index are returned (e.g.,
     * `%i@1` returns `i` and 1). Inverse of `makeIndexedVarName`.
     */
    object UserLevelVarName {
        def unapply(name : String) : Option[(String, Int)] = {
            val BaseName = "[@%](.+)@([0-9]+)".r
            name match {
                case BaseName(base, index) =>
                    Some((base, index.toInt))
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for varargs function names.
     */
    object Varargs {
        def unapply(name : String) : Boolean =
            List("llvm.va_copy", "llvm.va_start", "llvm.va_end") contains name
    }

    /**
     * Matcher for SV-COMP verifier function names.
     */
    object VerifierFunction {
        def unapply(name : String) : Boolean =
            name.startsWith("__VERIFIER")
    }

    // Useful math functions

    /**
     * Return the logarithm of `x` base 2.
     */
    def log2(x : Double) : Double =
        scala.math.log(x) / scala.math.log(2)

    /**
     * If the given integer is power of two, return that power,
     * otherwise return -1.
     */
    def powerOfTwo(x : Int) : Int = {
        val pd = log2(x.toDouble)
        if (pd == scala.math.round(pd)) pd.toInt else -1
    }

}
