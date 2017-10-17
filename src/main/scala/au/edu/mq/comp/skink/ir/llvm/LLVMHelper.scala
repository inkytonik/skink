package au.edu.mq.comp.skink.ir.llvm

import org.scalallvm.assembly.AssemblySyntax._

object LLVMHelper {

    import org.scalallvm.assembly.AssemblyPrettyPrinter.show

    // Property helpers

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

    // Useful predicates

    /**
     * Return whether or not the named function is the special verifier
     * assertion function.
     */
    def isAssertFunction(name : String) : Boolean =
        name.startsWith("__VERIFIER_assert")

    /**
     * Return whether or not the named function is a special verifier
     * function.
     */
    def isVerifierFunction(name : String) : Boolean =
        name.startsWith("__VERIFIER")

    /**
     * Return whether or not the named function is an output function.
     */
    def isOutputFunction(name : String) : Boolean =
        List("fprintf", "printf") contains name

    /**
     * Return whether or not the named function is an LLVM intrinsic.
     */
    def isLLVMIntrinsic(name : String) : Boolean =
        name.startsWith("llvm.")

    /**
     * Return whether or not the named function is a memory allcoation function.
     */
    def isMemoryAllocFunction(name : String) : Boolean =
        List("alloca", "calloc", "free", "malloc") contains name

    /**
     * Return whether or not the named function is a function that terminates
     * program execution.
     */
    def isExitFunction(name : String) : Boolean =
        name == "exit"

    // Extractors to make matching more convenient

    /**
     * Matcher for assumption function names.
     */
    object AssumeName {
        def unapply(name : Name) : Boolean =
            name == Global("__VERIFIER_assume")
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
     * Extractor that recognises functions whose calls we want to ignore when
     * generating effect terms. Currently:
     *   - any LLVM intrinsic, such as llvm.stacksave
     *   - special verifier fns
     * Returns the function name if it is to be ignored.
     */
    object IgnoredFunction {
        def unapply(fn : Function) : Option[String] =
            fn match {
                case Function(Named(Global(s))) if isLLVMIntrinsic(s) || isVerifierFunction(s) || isMemoryAllocFunction(s) ||
                    isOutputFunction(s) || isExitFunction(s) =>
                    Some(s)
                case _ =>
                    None
            }
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
     * Matcher for memory allocation calls. Successful matches return the
     * optional binding and the name of the function.
     */
    object MemoryAllocFunctionCall {
        def unapply(insn : Instruction) : Option[(OptBinding, String)] = {
            insn match {
                case Call(to, _, _, _, _, Function(Named(Global(name))), _, _) if isMemoryAllocFunction(name) =>
                    Some((to, name))
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
        def unapply(name : Name) : Option[String] = {
            val NondetName = "__VERIFIER_nondet_(.+)$".r
            name match {
                case Global(NondetName(tipe)) =>
                    Some(tipe)
                case _ =>
                    None
            }
        }
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
     * Matcher for LLVM real (floating-point) types. Just standard float and double for now.
     * Returns the bit size of the type.
     */
    object RealT {
        def unapply(tipe : Type) : Option[Int] =
            tipe match {
                case FloatT()  => Some(32)
                case DoubleT() => Some(64)
                case _         => None
            }
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
        def unapply(v : CalledValue) : Option[Name] =
            v match {
                case Function(Named(name)) =>
                    Some(name)
                case Function(Const(ConvertC(Bitcast(), _, NameC(name), _))) =>
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
