package au.edu.mq.comp.skink.ir.llvm

import org.scalallvm.assembly.AssemblySyntax._

object LLVMHelper {

    import org.scalallvm.assembly.AssemblyPrettyPrinter.show

    // Property helpers

    /**
     * The global variable name in which we track the rounding mode.
     */
    def fprmodeName : Name =
        Global("_fprmode")

    /**
     * Version of LLVM PP show that avoids line-wrapping.
     */
    def longshow(n : ASTNode) : String =
        show(n, 1000)

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
            name == "__VERIFIER_assume"
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
            name.startsWith("llvm.ceil.")
    }

    /**
     * Matcher for types that we support comparisons between. Returns the bit size
     * of the compared type.
     */
    object ComparisonType {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case IntT(size)   => Some(size.toInt)
                case _ : PointerT => Some(32)
                case RealT(bits)  => Some(bits)
                case _            => None
            }
    }

    /**
     * Matcher for "copysign" function names.
     */
    object CopySign {
        def unapply(name : String) : Boolean =
            List("copysign", "copysignf", "copysignl") contains name
    }

    /**
     * Matcher for assumption function names.
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
            name.startsWith("llvm.floor.")
    }

    /**
     * Matcher for "fmax" function names.
     */
    object FMax {
        def unapply(name : String) : Boolean =
            List("fmax", "fmaxf", "fmaxl") contains name
    }

    /**
     * Matcher for "fmin" function names.
     */
    object FMin {
        def unapply(name : String) : Boolean =
            List("fmin", "fminf", "fminl") contains name
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
            List("__fpclassify", "__fpclassifyf", "__fpclassifyl") contains name
    }

    /**
     * Extractor for initialised global variable items that returns global name,
     * type and intiial constant value.
     */
    object InitGlobalVar {
        def unapply(item : Item) : Option[(Name, Type, ConstantValue)] =
            item match {
                case GlobalVariableDefinition(
                    GlobalBinding(name), _, _, _, _, _, _, _, _,
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
            List("__isinf", "__isinff") contains name
    }

    /**
     * Matcher for "isnan" function names.
     */
    object IsNan {
        def unapply(name : String) : Boolean =
            List("__isnan", "__isnanf") contains name
    }

    /**
     * Matcher for global library function calls with a single argument. Successful
     * matches return the optional binding, return type, string function name, argument
     * and argument type.
     */
    object LibFunctionCall1 {
        def unapply(insn : Instruction) : Option[(OptBinding, Type, String, Value, Type)] = {
            insn match {
                case Call(to, _, _, _, tipe, Function(Named(Global(name))), Vector(ValueArg(tipe1, _, arg1)), _) =>
                    Some((to, tipe, name, arg1, tipe1))
                case _ =>
                    None
            }
        }
    }

    /**
     * Matcher for global library function calls with zero arguments. Successful
     * matches return the optional binding, return type, string function name.
     */
    object LibFunctionCall0 {
        def unapply(insn : Instruction) : Option[(OptBinding, Type, String)] = {
            insn match {
                case Call(to, _, _, _, tipe, Function(Named(Global(name))), Vector(), _) =>
                    Some((to, tipe, name))
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
                case Call(to, _, _, _, tipe, Function(Named(Global(name))), Vector(ValueArg(tipe1, _, arg1), ValueArg(tipe2, _, arg2)), _) =>
                    Some((to, tipe, name, arg1, tipe1, arg2, tipe2))
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
            name match {
                case Ceil() | CopySign() | Exit() | FAbs() | FDim() | FEGetRound() |
                    FESetRound() | Floor() | FMax() | FMin() | FMod() | FPClassify() | IsInf() |
                    IsNan() | MemoryAlloc() | OutputFunctionName() | Remainder() |
                    RInt() | Round() | SignBit() | Trunc() | VerifierFunctionName() =>
                    true
                case _ =>
                    false
            }
    }

    /**
     * Matcher for memory allocation calls. Successful matches return the
     * optional binding and the name of the function.
     */
    object MemoryAllocFunctionCall {
        def unapply(insn : Instruction) : Option[OptBinding] = {
            insn match {
                case Call(to, _, _, _, _, Function(Named(Global(MemoryAlloc()))), _, _) =>
                    Some(to)
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
            List("alloca", "calloc", "free", "malloc", "kzalloc") contains name
    }

    /**
     * Matcher for nondet function calls. Successful matches return the
     * optional binding for the return value of the call and the name of
     * the type of value that is returned.
     */
    object NondetFunctionCall {
        def unapply(insn : Instruction) : Option[(OptBinding, String)] = {
            insn match {
                case Call(to, _, _, _, _, VerifierFunction(NondetFunctionName(tipe)), Vector(), _) =>
                    Some((to, tipe))
                case _ =>
                    None
            }
        }
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
    object OutputFunctionName {
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
            name.startsWith("llvm.rint.")
    }

    /**
     * Matcher for `round` function names.
     */
    object Round {
        def unapply(name : String) : Boolean =
            name.startsWith("llvm.round.")
    }

    /**
     * Matcher for "signbit" function names.
     */
    object SignBit {
        def unapply(name : String) : Boolean =
            List("__signbit", "__signbitf") contains name
    }

    /**
     * Matcher for `trunc` function names.
     */
    object Trunc {
        def unapply(name : String) : Boolean =
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
     * Matcher for SV-COMP verifier function names.
     */
    object VerifierFunctionName {
        def unapply(name : String) : Boolean =
            name.startsWith("__VERIFIER")
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
     * Extractor to match various forms of calls to verifier functions,
     * returning the function name. The main reason for the differences
     * between the forms seems to be whether a correct prototype is
     * available when the LLVM IR is produced. To simplify things, we
     * don't assume that the proper prototype is there, so we support
     * these multiple forms.
     */
    object VerifierFunction {
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

    // Useful math functions

    /**
     * Return the logarithm of `x` base 2.
     */
    def log2(x : Double) : Double =
        Math.log(x) / Math.log(2)

    /**
     * If the given integer is power of two, return that power,
     * otherwise return -1.
     */
    def powerOfTwo(x : Int) : Int = {
        val pd = log2(x.toDouble)
        if (pd == Math.round(pd)) pd.toInt else -1
    }

}
