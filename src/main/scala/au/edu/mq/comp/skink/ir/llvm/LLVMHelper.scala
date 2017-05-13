package au.edu.mq.comp.skink.ir.llvm

import org.scalallvm.assembly.AssemblySyntax._

object LLVMHelper {

    import au.edu.mq.comp.smtlib.parser.SMTLIB2PrettyPrinter.{show => showTerm}
    import au.edu.mq.comp.smtlib.parser.SMTLIB2Syntax.SortedQId
    import org.scalallvm.assembly.AssemblyPrettyPrinter.show

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
                case ((l, s), GlobalFunctionCall(f)) if isThreadFunction(f) => (l, s + "pthread")
                case ((l, s), Load(_, _, _, _, Named(Global(n)), _)) => (l + n, s)
                case ((l, s), Store(_, _, _, _, Named(Global(n)), _)) => (l, s + n)
                case ((l, s), _) => (l, s)
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
     *   - special verifier fns, such as __VERIFIER_nondet_int
     */
    object IgnoredFunction {
        def unapply(fn : Function) : Boolean =
            fn match {
                case Function(Named(Global(s))) =>
                    isLLVMIntrinsic(s) || isVerifierFunction(s) || isMemoryAllocFunction(s) ||
                        isOutputFunction(s) || isThreadFunction(s)
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

    /*
     * Extractor for variable names that matches if the variable is a
     * user-level variable (i.e., one defined in the source code) as
     * opposed to a compiler-defined temporary. If a match is found,
     * the basename of the variable and the index are returned (e.g.,
     * `%i@1` returns `i` and 1).
     */
    object UserLevelVarName {
        def unapply(name : String) : Option[(String, Int)] = {
            val BaseName = "[@%](.+)@([0-9]+)".r
            val TempName = "[@%][0-9]+@[0-9]+".r
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
     * Ordering for qualified Ids that keeps ids like %1@1 ahead of
     * things ids like %1@2 and %11@1.
     */
    implicit object SortedQIdOrdering extends math.Ordering[SortedQId] {
        def compare(a : SortedQId, b : SortedQId) : Int = {
            (showTerm(a.id), showTerm(b.id)) match {
                case (UserLevelVarName(x, i), UserLevelVarName(y, j)) =>
                    if (x == y)
                        i - j
                    else
                        (x, y) match {
                            case (TempVarBaseName(xn), TempVarBaseName(yn)) =>
                                xn - yn
                            case _ =>
                                x compare y
                        }
                case (aStr, bStr) =>
                    aStr compare bStr
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

<<<<<<< HEAD
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
