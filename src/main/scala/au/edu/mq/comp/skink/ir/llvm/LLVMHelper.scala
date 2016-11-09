package au.edu.mq.comp.skink.ir.llvm

import org.scalallvm.assembly.AssemblySyntax._

object LLVMHelper {

    // Property helpers

    /**
     * Get the name of a block. Currently assumes that a block with no label
     * must be a block with a return or the anonymous entry block (0)
     */
    def blockName(block : Block) : String =
        block.optBlockLabel match {
            case BlockLabel(s)    => s
            case ImplicitLabel(i) => i.toString
            case NoLabel() => block.metaTerminatorInstruction match {
                case MetaTerminatorInstruction(Ret(_, _), _) => "return"
                case _                                       => "0"
            }
        }

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

    /**
     * Convert an LLVM name into its string representation.
     */
    def nameToString(name : Name) : String =
        name match {
            case Global(s) => s
            case Local(s)  => s
        }

    def branchLabels(block : Block) : Option[List[String]] =
        block.metaTerminatorInstruction.terminatorInstruction match {

            // Unconditional branch
            case Branch(Label(Local(tgt))) =>
                Some(List(tgt))

            // Two-sided conditional branch
            case BranchCond(cmp, Label(Local(trueTgt)), Label(Local(falseTgt))) =>
                Some(List(trueTgt, falseTgt))

            // Multi-way branch
            case Switch(IntT(_), cmp, Label(Local(dfltTgt)), cases) =>
                Some((cases.map { case Case(_, _, Label(Local(tgt))) => tgt }).toList :+ dfltTgt)

            // Return
            case _ : Ret | _ : RetVoid | _ : Unreachable =>
                None

            case i =>
                sys.error(s"dca: unexpected form of terminator insn: $i")
        }

    // Useful predicates

    /**
     * Return whether or not the named function is a special verifier
     * function.
     */
    def isVerifierFunction(name : String) : Boolean =
        name.startsWith("__VERIFIER")

    /**
     * Return whether or not a function is from the pthread library.
     */
    def isThreadFunction(name : String) : Boolean =
        name.startsWith("pthread")

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

    def isThreadPrimitive(use : Product) : Boolean = {
        use match {
            case GlobalFunctionCall(name) =>
                isThreadFunction(name)
            case _ =>
                false
        }
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
                case ((l, s), Load(_, _, _, _, Named(Global(n)), _))  => (l + n, s)
                case ((l, s), Store(_, _, _, _, Named(Global(n)), _)) => (l, s + n)
                case ((l, s), _)                                      => (l, s)
            }

        val (aLoads, aStores) = globalAccessNames(a)
        val (bLoads, bStores) = globalAccessNames(b)
        !((aStores & bStores).isEmpty && (aStores & bLoads).isEmpty && (aLoads & bStores).isEmpty)
    }

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
     * Matcher for types that we support comparisons between.
     */
    object ComparisonType {
        def unapply(tipe : Type) : Boolean =
            tipe match {
                case _ : IntT | _ : PointerT =>
                    true
                case _ =>
                    false
            }
    }

    /**
     * Extractor that recognises functions whose calls we want to ignore when
     * generating effect terms. Currently:
     *   - any LLVM intrinsic, such as llvm.stacksave
     *   - special verifier fns, such as __VERIFIER_nondet_int
     */
    object IgnoredFunction {
        def unapply(fn : Function) : Boolean =
            fn match {
                case Function(Named(Global(s))) =>
                    isLLVMIntrinsic(s) || isVerifierFunction(s) || isThreadFunction(s)
                // || isMemoryAllocFunction(s)
                case _ =>
                    false
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
                    tipe, Init(constantValue), _, _, _) =>
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
     * Matcher for names of unsigned types X that might occur with __VERIFIER_nondet_X()
     * functions.
     */
    object UnsignedType {
        def unapply(typeName : String) : Boolean =
            List("u32", "uchar", "uint", "ulong", "unsigned", "ushort").contains(typeName)
    }

    /*
     * Extractor for variable names that matches if the variable is a
     * user-level variable (i.e., one defined in the source code) as
     * opposed to a compiler-defined temporary. If a match is found,
     * the basename of the variable is returned and the index attached
     * is ignored (e.g., `%i@1` returns `i`).
     */
    object UserLevelVarName {
        def unapply(name : Name) : Option[String] = {
            val BaseName = "[@%](.+)@[0-9]+".r
            val TempName = "[@%][0-9]+@[0-9]+".r
            nameToString(name) match {
                case TempName() =>
                    None
                case BaseName(base) =>
                    Some(base)
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

    object PThreadType {
        def unapply(tipe : Type) : Option[Type] =
            tipe match {
                case NameT(Local(name)) if name.contains("pthread") => Some(tipe)
                case _ => None
            }
    }

    /**
     * Big ugly extractor for function calls which might contain information about
     * operations on Pthread synchronisation tokens.
     *
     * TODO: Currently assumes all init calls are constructing null (unlocked) mutexes
     * and false conds
     */
    object PThreadOperation {
        def unapplySeq(insn : MetaInstruction) : Option[Seq[String]] =
            insn.instruction match {
                case Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken)))),
                    _
                    ) if List("pthread_mutex_lock", "pthread_mutex_unlock", "pthread_cond_signal").contains(callName) =>
                    Some(List(callName, syncToken))
                case Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken)))),
                    _
                    ) if callName == "pthread_cond_condition" =>
                    Some(List(callName, syncToken))
                case Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken))),
                        ValueArg(_, _, _)),
                    _
                    ) if List("pthread_mutex_init", "pthread_cond_init").contains(callName) =>
                    Some(List(callName, syncToken))
                case Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(ValueArg(_, _, Named(Global(syncToken))),
                        ValueArg(_, _, Named(Global(returnMutex)))),
                    _
                    ) if callName == "pthread_cond_wait" =>
                    Some(List(callName, syncToken, returnMutex))
                case Call(
                    _, _, _, _, _,
                    Function(Named(Global(callName))),
                    Vector(
                        ValueArg(_, _, Named(Local(threadNameRegister))),
                        _),
                    _
                    ) if callName == "pthread_join" =>
                    Some(List(callName, threadNameRegister))
                case _ =>
                    None
            }
    }

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
