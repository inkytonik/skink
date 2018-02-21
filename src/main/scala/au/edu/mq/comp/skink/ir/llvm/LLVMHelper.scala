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
     * Return whether or not the named function is an absolute value
     * function.
     */
    def isAbsoluteValueFunction(name : String) : Boolean =
        name.startsWith("llvm.fabs.")

    /**
     * Return whether or not the named function is the special verifier
     * assertion function.
     */
    def isAssertFunction(name : String) : Boolean =
        name.startsWith("__VERIFIER_assert")

    /**
     * Return whether or not the named function is a function that terminates
     * program execution.
     */
    def isExitFunction(name : String) : Boolean =
        name == "abort" || name == "exit"

    /**
     * Return whether or not the named function is an LLVM intrinsic.
     */
    def isLLVMIntrinsic(name : String) : Boolean =
        name.startsWith("llvm.")

    /**
     * Return whether or not the named function is a memory allocation function.
     */
    def isMemoryAllocFunction(name : String) : Boolean =
        List("alloca", "calloc", "free", "malloc", "kzalloc") contains name

    /**
     * Return whether or not the named function is an output function.
     */
    def isOutputFunction(name : String) : Boolean =
        List("fprintf", "printf") contains name

    /**
     * Return whether or not the named function is a special verifier
     * function.
     */
    def isVerifierFunction(name : String) : Boolean =
        name.startsWith("__VERIFIER")

    // Extractors to make matching more convenient

    /**
     * Matcher for absolute value calls. Successful matches return the
     * optional binding and the argument.
     */
    object AbsoluteValueFunctionCall {
        def unapply(insn : Instruction) : Option[(OptBinding, Value)] = {
            insn match {
                case Call(to, _, _, _, _, Function(Named(Global(name))), Vector(ValueArg(_, _, arg)), _) if isAbsoluteValueFunction(name) =>
                    Some((to, arg))
                case _ =>
                    None
            }
        }
    }

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
     *   - memory alloc function
     *   - output functions
     *   - thread functions
     * Returns the function name if it is to be ignored.
     */
    object IgnoredFunction {
        def unapply(fn : Function) : Option[String] =
            fn match {
                case Function(Named(Global(s))) if isLLVMIntrinsic(s) || isVerifierFunction(s) || isMemoryAllocFunction(s) ||
                    isExitFunction(s) | isThreadFunction(s) =>
                    Some(s)
                case _ =>
                    None
            }
    }

    /**
     * Extractor for initialised global variable items that returns global name,
     * type and initial constant value.
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

    //  Threads useful helpers/extractors

    /**
     * Generate a new label from an existing block label and a supplied prefix
     * string.
     */
    def makeLabelFromPrefix(label : OptBlockLabel, prefix : String) : String =
        label match {
            case BlockLabel(label) =>
                s"$prefix.$label"
            case ImplicitLabel(num) =>
                s"$prefix.$num"
            case NoLabel() =>
                s"$prefix.nolabel"
        }

    def isGlobalAccess(use : Product) : Boolean = {
        use match {
            case Load(_, _, _, _, Named(Global(_)), _)  => true
            case Store(_, _, _, _, Named(Global(_)), _) => true
            case _                                      => false
        }
    }

    def isLocalName(use : Product) : Boolean = {
        use match {
            case Local(_)                              => true
            case Binding(Local(_))                     => true
            case Load(_, _, _, _, Named(Local(_)), _)  => true
            case Store(_, _, _, _, Named(Local(_)), _) => true
            case _ =>
                false
        }
    }

    def areDependent(a : Block, b : Block) : Boolean = {
        def globalAccessNames(block : Block) : (Set[String], Set[String]) =
            block.optMetaInstructions.map(_.instruction).foldLeft((Set[String](), Set[String]())) {
                case ((l, s), GlobalFunctionCall(f)) if isThreadFunction(f) => (l, s + "pthread")
                case ((l, s), Load(_, _, _, _, Named(Global(n)), _)) => (l + n, s)
                case ((l, s), Store(_, _, _, _, Named(Global(n)), _)) => (l, s + n)
                case ((l, s), _) => (l, s)
            }

        val (aLoads, aStores) = globalAccessNames(a)
        val (bLoads, bStores) = globalAccessNames(b)
        !((aStores & bStores).isEmpty && (aStores & bLoads).isEmpty && (aLoads & bStores).isEmpty)
    }

    /**
     * Whether a block is an error block
     */
    def isErrorBlock(b : Block) : Boolean = {
        b.optBlockLabel match {
            case BlockLabel(s) if s.startsWith("__error") => true
            case _                                        => false
        }
    }

    def hasPthreadExit(b : Block) : Boolean = {
        b.optMetaInstructions.exists {
            case PThreadExit() => true
        }
    }

    /**
     * Whether a block is a return or a pthread_exit
     */
    def isExitBlock(b : Block) : Boolean = b match {
        case ReturnBlock(_)         => true
        case x if hasPthreadExit(x) => true
        case _                      => false
    }

    /**
     * Whether a block is a return
     */
    object ReturnBlock {
        def unapply(b : Block) : Option[Boolean] =
            b.metaTerminatorInstruction.terminatorInstruction match {
                case _ : Ret | _ : RetVoid => Some(true)
                case _                     => None
            }
    }

    /**
     *
     */
    object PThreadType {
        def unapply(tipe : Type) : Option[Type] =
            tipe match {
                case NameT(Local(name)) if name.contains("pthread") => Some(tipe)
                case _ => None
            }
    }

    /**
     *  Return whether or not a function is from the pthread library.
     */
    def isThreadFunction(name : String) : Boolean = name contains "pthread"

    /**
     *  Whether a block has a call to pthread library.
     */
    def isThreadPrimitive(use : Product) : Boolean = {
        use match {
            case GlobalFunctionCall(name) =>
                isThreadFunction(name)
            case _ =>
                false
        }
    }

    /**
     * The ThreadPrimitives instructions in a block
     */
    def threadInstructions(b : Block) = {
        b.optMetaInstructions.filter(i => isThreadPrimitive(i))
    }

    /**
     * Whether an instruction is a pthread_create and in this case
     * the threadId and threadFn (entry point)
     */
    object PThreadCreate {
        def unapply(insn : MetaInstruction) : Option[(String, String)] =
            insn match {
                case MetaInstruction(
                    Call(
                        _, _, _, _, _,
                        Function(Named(Global(callName))),
                        Vector(ValueArg(_, _, Named(Local(threadName))), _, ValueArg(_, _, Named(Global(threadFn))), _),
                        _
                        ),
                    _) if callName contains "pthread_create" => Some((threadName, threadFn))
                case _ =>
                    None
            }
    }

    /**
     * Whether a block has a PThreadCreate and in this case, the ThreadId and the Function
     * @note: not used
     */
    object PThreadCreateBlock {
        def unapply(block : Block) : Option[(String, String)] =
            block.optMetaInstructions.filter({ case PThreadCreate(_, _) => true; case _ => false }).toList match {
                case List(PThreadCreate(threadName, threadFun)) => Some((threadName, threadFun))

                case List(_)                                    => sys.error(s"Encountered block with more than one PThreadCreate")
                case List()                                     => None
            }
    }

    /**
     * Whether an instruction is a pthread_exit
     */
    object PThreadExit {
        def unapply(insn : MetaInstruction) : Boolean =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    _, _),
                    _) if callName contains "pthread_exit" =>
                    true

                case _ => false
            }
    }

    /**
     * Whether an instruction is pthread_mutex_lock and in this case the sync token
     */
    object PThreadMutexLock {
        def unapply(insn : MetaInstruction) : Option[String] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken)))),
                    _
                    ), _) if callName contains "pthread_mutex_lock" => Some(syncToken)
                case _ => None
            }
    }

    /**
     * Whether an instruction is pthread_mutex_unlock and in this case the sync token
     */
    object PThreadMutexUnLock {
        def unapply(insn : MetaInstruction) : Option[String] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken)))),
                    _
                    ), _) if callName contains "pthread_mutex_unlock" => Some(syncToken)
                case _ => None
            }
    }

    /**
     * Whether an instruction is pthread_cond_signal and in this case the cond token
     */
    object PThreadCondSignal {
        def unapply(insn : MetaInstruction) : Option[String] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken)))),
                    _
                    ), _) if callName contains "pthread_cond_signal" => Some(syncToken)

                case _ => None
            }
    }

    /**
     * Whether an instruction is pthread_cond_condition and in this case the cond token
     */
    object PThreadCondCondition {
        def unapply(insn : MetaInstruction) : Option[String] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken)))),
                    _
                    ), _) if callName contains "pthread_cond_condition" => Some(syncToken)

                case _ => None
            }
    }

    /**
     * Whether an instruction is pthread_mutex_init and in this case the sync token
     */
    object PThreadMutexInit {
        def unapply(insn : MetaInstruction) : Option[String] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken))), _),
                    _),
                    _) if callName contains "pthread_mutex_init" => Some(syncToken)

                case _ => None
            }
    }

    /**
     * Whether an instruction is pthread_cond_init and in this case the cond token
     */
    object PThreadCondInit {
        def unapply(insn : MetaInstruction) : Option[String] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken))), _),
                    _),
                    _) if callName contains "pthread_cond_init" => Some(syncToken)

                case _ => None
            }
    }

    /**
     * Whether an instruction is pthread_cond_wait and in this case the cond and mutex tokens
     */
    object PThreadCondWait {
        def unapply(insn : MetaInstruction) : Option[(String, String)] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken))),
                        ValueArg(_, _, Named(Global(returnMutex)))),
                    _
                    ),
                    _) if callName contains "pthread_cond_wait" => Some((syncToken, returnMutex))

                case _ => None
            }
    }

    /**
     * Whether an instruction is pthread_join and in this case the sync token
     */
    object PThreadJoin {
        def unapply(insn : MetaInstruction) : Option[String] =
            insn match {
                case MetaInstruction(Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(
                        ValueArg(_, _, Named(Local(threadNameRegister))),
                        _),
                    _
                    ),
                    _) if callName contains "pthread_join" => Some(threadNameRegister)

                case _ => None
            }
    }

    /**
     * Whether an instruction is global fun call
     */
    object GlobalFunctionCall {
        def unapply(call : Call) : Option[String] =
            call match {
                case Call(
                    _, _, _, _, _,
                    Function(Named(Global(name))),
                    _, _
                    ) =>
                    Some(name)
                case _ =>
                    None

            }

    }

}
