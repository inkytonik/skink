package au.edu.mq.comp.skink.iml

import org.bitbucket.inkytonik.kiama.util.Positions

/**
 * Compiler from IML to LLVM IR.
 */
class Compiler(positions : Positions) {

    import au.edu.mq.comp.skink.iml.{IMLSyntax => IML}
    import org.bitbucket.inkytonik.kiama.util.{Counter, Position}
    import org.scalallvm.assembly.AssemblySyntax._
    import scala.collection.mutable

    // Entry point

    val compile = translateProgram _

    // Position access

    def getStart(node : IML.ASTNode) : Position =
        positions.getStart(node).getOrElse(Position(0, 0, null))

    // Temporary variable name allocation

    val tempCounter = new Counter()

    def nextTemp() : Local = Local(s"${tempCounter.next()}")

    // Buffering for block and instruction lists under construction

    val blockBuffer = mutable.ListBuffer[Block]()
    val insnBuffer = mutable.ListBuffer[MetaInstruction]()

    // Management of block labels, starting and finishing blocks

    val labelStack = mutable.Stack[String]()

    def startBlock(id : String) {
        labelStack.push(id)
        insnBuffer.clear()
    }

    def finishBlock(terminator : TerminatorInstruction) {
        val label = if (labelStack.isEmpty) NoLabel() else BlockLabel(labelStack.pop())
        val metaTerminator = MetaTerminatorInstruction(terminator, Metadata(Vector()))
        val block = Block(label, Vector(), None, insnBuffer.toVector, metaTerminator)
        blockBuffer.append(block)
    }

    def finishBlockUncond(id : String) {
        finishBlock(Branch(Label(Local(id))))
    }

    def finishBlockCond(value : Value, trueId : String, falseId : String) {
        finishBlock(BranchCond(value, Label(Local(trueId)), Label(Local(falseId))))
    }

    // IML Helpers

    def blockIdentifier(node : IML.ASTNode, suffix : String) : String = {
        val pos = getStart(node)
        s".block.${pos.line}.${pos.column}.$suffix"
    }

    def errorBlockId : String =
        ".error"

    def returnBlockId : String =
        ".return"

    // LLVM Helpers

    def defineStringConstant(name : String, value : String) : GlobalVariableDefinition =
        GlobalVariableDefinition(GlobalBinding(Global(name)), Private(),
            DefaultVisibility(), DefaultDLLStorageClass(), NoThreadLocalSpec(),
            UnnamedAddr(), DefaultAddrSpace(), NotExternallyInitialized(), Constant(),
            stringType(value.length), Init(stringToConstant(value)),
            DefaultSection(), NoComdat(), Align(1))

    def bytePtrType() = PointerT(IntT(8), DefaultAddrSpace())

    val exitType =
        FunctionT(VoidT(), VarArgTypes(Vector(defaultIntType())))

    def exitDeclaration() : Item =
        FunctionDeclaration(DefaultLinkage(), DefaultVisibility(),
            DefaultDLLStorageClass(), DefaultCC(), Vector(), VoidT(),
            Global("exit"), Args(Vector(Argument(defaultIntType(), Vector(), None))),
            NamedAddr(), Vector(NoUnwind(), SSP(), UWTable(), NoReturn()),
            DefaultAlignFunc(), NoGCName(), NoPrefix(), NoPrologue())

    val printfType =
        FunctionT(defaultIntType(), VarArgTypes(Vector(bytePtrType)))

    def printfDeclaration() : Item =
        FunctionDeclaration(DefaultLinkage(), DefaultVisibility(),
            DefaultDLLStorageClass(), DefaultCC(), Vector(), defaultIntType(),
            Global("printf"), VarArgs(Vector(Argument(bytePtrType(), Vector(), None))),
            NamedAddr(), Vector(NoUnwind(), SSP(), UWTable()),
            DefaultAlignFunc(), NoGCName(), NoPrefix(), NoPrologue())

    def stringType(length : Int) =
        ArrayT(length + 1, IntT(8))

    def stringToConstant(s : String) : ConstantValue = {
        def isPrintable(c : Char) = c >= 0x20 && c <= 0x7E
        val lit = s.flatMap {
            case c if isPrintable(c) =>
                Seq(c)
            case c =>
                f"\\$c%02X"
        }
        StringC('"' + lit + "\\00\"")
    }

    // Instruction emitters

    def emit(insn : Instruction) =
        insnBuffer.append(MetaInstruction(insn, Metadata(Vector())))

    def emitBinaryBool(binop : BinOp, l : IML.Predicate, r : IML.Predicate) : Value = {
        val lval = translatePredicate(l)
        val rval = translatePredicate(r)
        val temp = nextTemp()
        emit(Binary(Binding(temp), binop, defaultBoolType(), lval, rval))
        Named(temp)
    }

    def emitBinaryInt(binop : BinOp, l : IML.Expression, r : IML.Expression) : Value = {
        val lval = translateExpression(l)
        val rval = translateExpression(r)
        val temp = nextTemp()
        emit(Binary(Binding(temp), binop, defaultIntType(), lval, rval))
        Named(temp)
    }

    def emitCall(temp : Local, tipe : Type, id : String, args : Vector[CallArgument]) {
        emit(Call(Binding(temp), NotTail(), DefaultCC(), Vector(), tipe,
            Function(Named(Global(id))), args, Vector()))
    }

    def emitCompare(compareop : CompareOp, l : IML.Expression, r : IML.Expression) : Value = {
        val lval = translateExpression(l)
        val rval = translateExpression(r)
        val temp = nextTemp()
        emit(Compare(Binding(temp), compareop, defaultIntType(), lval, rval))
        Named(temp)
    }

    def emitExit() {
        val args = Vector(ValueArg(defaultIntType(), Vector(), Const(IntC(-1))))
        emit(Call(NoBinding(), NotTail(), DefaultCC(), Vector(), VoidT(),
            Function(Named(Global("exit"))), args, Vector()))
    }

    def emitLoad(value : Value, tipe : IML.Type) : Local = {
        val temp = nextTemp()
        emit(Load(Binding(temp), NotVolatile(), typeToType(tipe), memoryType(tipe),
            value, DefaultAlign()))
        temp
    }

    def emitConstLoad(id : String, v : Int) {
        emit(Binary(Binding(Local(id)), Add(Vector()), defaultIntType(),
            Const(IntC(v)), Const(IntC(0))))
    }

    def emitLocalLoad(id : String, tipe : IML.Type) : Local =
        emitLoad(Named(Local(localVarAddressName(id))), tipe)

    def emitLocalVarDef(id : String, tipe : IML.Type, isParam : Boolean) {
        emit(Alloca(Binding(Local(localVarAddressName(id))), NotInAlloca(),
            typeToType(tipe), OneElement(), Align(4)))
        if (isParam)
            emitStore(IML.Var(id), tipe, Named(Local(id)))
    }

    def emitStore(assignable : IML.Assignable, tipe : IML.Type, loc : Value) =
        assignable match {
            case IML.Index(identifier, expression) =>
                sys.error(s"not implemented $assignable")
            case IML.Var(id) =>
                emit(Store(NotVolatile(), typeToType(tipe), loc, memoryType(tipe),
                    Named(Local(localVarAddressName(id))),
                    Align(4)))
        }

    def emitStores(assignables : Vector[IML.Assignable], locs : Vector[Value]) =
        for ((assignable, loc) <- assignables.zip(locs)) {
            emitStore(assignable, IML.IntType(), loc)
        }

    def localVarAddressName(id : String) : String =
        id + ".addr"

    // Type translations

    def defaultArrayType() : Type =
        ArrayT(10, defaultIntType())

    def defaultBoolType() : Type =
        IntT(1)

    def defaultIntType() : Type =
        IntT(32)

    def memoryType(tipe : IML.Type) : Type =
        PointerT(typeToType(tipe), DefaultAddrSpace())

    def typeToType(tipe : IML.Type) : Type =
        tipe match {
            case IML.ArrayType() =>
                sys.error(s"not implemented $tipe")
            case IML.BoolType() =>
                defaultBoolType()
            case IML.IntType() =>
                defaultIntType()
        }

    // Translation

    def translateProgram(program : IML.Program) : Program = {
        val topLevels =
            Vector(
                exitDeclaration(),
                printfDeclaration(),
                assertionFailureStringConstant(),
                printFormatStringConstant()
            )
        val functions = program.functionDefinitions.map(translateFunDef)
        Program(topLevels ++ functions)
    }

    def translateAssert(predicate : IML.Predicate) {
        val value = translatePredicate(predicate)
        val okBlockId = blockIdentifier(predicate, "ok")
        val failBlockId = blockIdentifier(predicate, "fail")
        finishBlockCond(value, okBlockId, failBlockId)
        startBlock(failBlockId)
        val arg1Value =
            Const(
                GetElementPtrC(InBounds(), assertionFailureType,
                    PointerT(assertionFailureType, DefaultAddrSpace()),
                    NameC(Global(assertionFailureStringName)),
                    Vector(
                        ElemIndex(defaultIntType(), Const(IntC(0))),
                        ElemIndex(defaultIntType(), Const(IntC(0)))
                    ))
            )
        val arg1 = ValueArg(bytePtrType, Vector(), arg1Value)
        val arg2 = ValueArg(defaultIntType(), Vector(), Const(IntC(getStart(predicate).line)))
        val arg3 = ValueArg(defaultIntType(), Vector(), Const(IntC(getStart(predicate).column)))
        val ctemp = nextTemp()
        emitCall(ctemp, printfType, "printf", Vector(arg1, arg2, arg3))
        finishBlockUncond(errorBlockId)
        startBlock(okBlockId)
    }

    val assertionFailureStringName = ".assertionfailureformat"
    val assertionFailureString = "assertion failed at line %d column %d\n"
    val assertionFailureType = stringType(assertionFailureString.length)

    def assertionFailureStringConstant() : Item =
        defineStringConstant(assertionFailureStringName, assertionFailureString)

    def translateCall(assignable : IML.Assignable, id : String, expressions : Vector[IML.Expression]) {
        val args = expressions map {
            case e =>
                ValueArg(defaultIntType(), Vector(), translateExpression(e))
        }
        val temp = nextTemp()
        emitCall(temp, defaultIntType(), id, args)
        emitStores(Vector(assignable), Vector(Named(temp)))
    }

    def translateExpression(expression : IML.Expression) : Value =
        expression match {

            case IML.Add(l, r) =>
                emitBinaryInt(Add(Vector(NoSignedWrap())), l, r)

            case IML.Div(l, r) =>
                emitBinaryInt(SDiv(NotExact()), l, r)

            case IML.ELoad(IML.Var(identifier)) =>
                Named(emitLocalLoad(identifier, IML.IntType()))

            case IML.ELoad(assignable) =>
                sys.error(s"not implemented $assignable")

            case IML.IntLit(i) =>
                Const(IntC(i))

            case IML.Mod(l, r) =>
                emitBinaryInt(SRem(), l, r)

            case IML.Mul(l, r) =>
                emitBinaryInt(Mul(Vector(NoSignedWrap())), l, r)

            case IML.Neg(e) =>
                translateExpression(IML.Sub(IML.IntLit(0), e))

            case IML.Sub(l, r) =>
                emitBinaryInt(Sub(Vector(NoSignedWrap())), l, r)

        }

    def translateFunDef(functionDefinition : IML.FunctionDefinition) : Item = {

        def arguments(optArgumentDefinitions : Vector[IML.ArgumentDefinition]) : Arguments =
            Args(optArgumentDefinitions map argumentDefinitionToArgument)

        def returnType(argumentDefinitions : Vector[IML.ArgumentDefinition]) : Type =
            if (argumentDefinitions.length == 1)
                argumentDefinitionToType(argumentDefinitions.head)
            else
                StructT(argumentDefinitions map argumentDefinitionToType)

        def argumentDefinitionToArgument(argumentDefinition : IML.ArgumentDefinition) : Argument =
            argumentDefinition match {
                case IML.Arg(n) =>
                    makeArgument(n, defaultIntType())
                case IML.TypedArg(n, t) =>
                    makeArgument(n, typeToType(t))
            }

        def makeArgument(n : String, t : Type) : Argument =
            Argument(t, Vector(), Some(Local(n)))

        def argumentDefinitionToIdentifier(argumentDefinition : IML.ArgumentDefinition) : String =
            argumentDefinition match {
                case IML.TypedArg(id, _) =>
                    id
                case IML.Arg(id) =>
                    id
            }

        def argumentDefinitionToElement(argumentDefinition : IML.ArgumentDefinition) : Element =
            argumentDefinition match {
                case IML.TypedArg(id, tipe) =>
                    Element(typeToType(tipe), NameC(Local(id)))
                case IML.Arg(id) =>
                    Element(typeToType(IML.IntType()), NameC(Local(id)))
            }

        def argumentDefinitionToType(argumentDefinition : IML.ArgumentDefinition) : Type =
            argumentDefinition match {
                case IML.Arg(n) =>
                    defaultIntType()
                case IML.TypedArg(n, t) =>
                    typeToType(t)
            }

        functionDefinition match {
            case IML.FunDef(id, argdefs, retdefs, block) =>

                blockBuffer.clear()
                tempCounter.reset()
                startBlock(".entry")

                val global = Global(id)
                val args = arguments(argdefs)
                val rettype = returnType(retdefs)

                argdefs.map {
                    case IML.Arg(id) =>
                        emitLocalVarDef(id, IML.IntType(), true)
                    case IML.TypedArg(id, tipe) =>
                        emitLocalVarDef(id, tipe, true)
                }

                retdefs.map {
                    case IML.Arg(id) =>
                        emitLocalVarDef(id, IML.IntType(), false)
                    case IML.TypedArg(id, tipe) =>
                        emitLocalVarDef(id, tipe, false)
                }

                translateStatement(block)
                finishBlockUncond(returnBlockId)

                startBlock(returnBlockId)

                val returnElements =
                    retdefs.map {
                        case IML.Arg(id) =>
                            val elementType = typeToType(IML.IntType())
                            Element(elementType, NameC(emitLocalLoad(id, IML.IntType())))
                        case IML.TypedArg(id, tipe) =>
                            val elementType = typeToType(tipe)
                            Element(elementType, NameC(emitLocalLoad(id, tipe)))
                    }

                val retval =
                    if (returnElements.length == 1)
                        returnElements.head.constantValue
                    else
                        StructC(returnElements)

                finishBlock(Ret(rettype, Const(retval)))

                startBlock(errorBlockId)
                emitExit()
                finishBlock(Ret(rettype, Const(IntC(-1))))

                val body = FunctionBody(blockBuffer.toVector)

                FunctionDefinition(DefaultLinkage(), DefaultVisibility(),
                    DefaultDLLStorageClass(), DefaultCC(), Vector(), rettype, global,
                    args, NamedAddr(), Vector(), DefaultSection(), NoComdat(),
                    DefaultAlignFunc(), NoGCName(), NoPrefix(), NoPrologue(),
                    body)

        }

    }

    def translateIf(predicate : IML.Predicate, thenStatement : IML.Statement, elseStatement : IML.Statement) {
        val value = translatePredicate(predicate)
        val thenBlockId = blockIdentifier(thenStatement, "then")
        val elseBlockId = blockIdentifier(elseStatement, "else")
        val joinBlockId = blockIdentifier(predicate, "join")
        finishBlockCond(value, thenBlockId, elseBlockId)
        startBlock(thenBlockId)
        translateStatement(thenStatement)
        finishBlockUncond(joinBlockId)
        startBlock(elseBlockId)
        translateStatement(elseStatement)
        finishBlockUncond(joinBlockId)
        startBlock(joinBlockId)
    }

    def translatePredicate(predicate : IML.Predicate) : Value =
        predicate match {

            case IML.And(l, r) =>
                emitBinaryBool(And(), l, r)

            case IML.EQ(l, r) =>
                emitCompare(ICmp(EQ()), l, r)

            case IML.False() =>
                translateExpression(IML.IntLit(0))

            case IML.GE(l, r) =>
                emitCompare(ICmp(SGE()), l, r)

            case IML.GT(l, r) =>
                emitCompare(ICmp(SGT()), l, r)

            case IML.LE(l, r) =>
                emitCompare(ICmp(SLE()), l, r)

            case IML.LT(l, r) =>
                emitCompare(ICmp(SLT()), l, r)

            case IML.NEQ(l, r) =>
                emitCompare(ICmp(NE()), l, r)

            case IML.Not(p) =>
                emitBinaryBool(XOr(), p, IML.True())

            case IML.Or(l, r) =>
                emitBinaryBool(Or(), l, r)

            case IML.PLoad(IML.Var(id)) =>
                Named(emitLocalLoad(id, IML.BoolType()))

            case IML.PLoad(IML.Index(assignable, expression)) =>
                sys.error(s"not implemented: $predicate")

            case IML.True() =>
                translateExpression(IML.IntLit(1))

        }

    val printFormatStringName = ".printformat"
    val printFormatString = "%d\n"
    val printFormatType = stringType(printFormatString.length)

    def printFormatStringConstant() : Item =
        defineStringConstant(printFormatStringName, printFormatString)

    def translatePrint(etemp : Value) {
        val arg1Value =
            Const(
                GetElementPtrC(InBounds(), printFormatType,
                    PointerT(printFormatType, DefaultAddrSpace()),
                    NameC(Global(printFormatStringName)),
                    Vector(
                        ElemIndex(defaultIntType(), Const(IntC(0))),
                        ElemIndex(defaultIntType(), Const(IntC(0)))
                    ))
            )
        val arg1 = ValueArg(bytePtrType, Vector(), arg1Value)
        val arg2 = ValueArg(defaultIntType(), Vector(), etemp)
        val ctemp = nextTemp()
        emitCall(ctemp, printfType, "printf", Vector(arg1, arg2))
    }

    def translateStatement(statement : IML.Statement) {
        statement match {

            case IML.Assert(predicate) =>
                translateAssert(predicate)

            case IML.Assign(assignables, expressions) =>
                emitStores(assignables, expressions map translateExpression)

            case IML.Assume(predicate) =>
                sys.error(s"not implemented: $statement")

            case IML.Block(statements) =>
                statements.map(translateStatement)

            case IML.Call(Vector(assignable), id, expressions) =>
                translateCall(assignable, id, expressions)

            case IML.Call(assignables, id, expressions) =>
                sys.error(s"not implemented: $statement")

            case IML.Goto(id) =>
                finishBlockUncond(id)
                startBlock(blockIdentifier(statement, "aftergoto"))

            case IML.If(predicate, thenStatement, elseStatement) =>
                translateIf(predicate, thenStatement, elseStatement)

            case IML.Label(id, statement) =>
                translateStatement(IML.Goto(id))
                startBlock(id)
                translateStatement(statement)

            case IML.Print(expression) =>
                translatePrint(translateExpression(expression))

            case IML.Skip() =>
            // Translates to nothing

            case IML.While(predicate, statement) =>
                translateWhile(predicate, statement)

        }
    }

    def translateWhile(predicate : IML.Predicate, statement : IML.Statement) {
        val predBlockId = blockIdentifier(predicate, "pred")
        val bodyBlockId = blockIdentifier(statement, "body")
        val joinBlockId = blockIdentifier(predicate, "join")
        finishBlockUncond(predBlockId)
        startBlock(bodyBlockId)
        translateStatement(statement)
        finishBlockUncond(predBlockId)
        startBlock(predBlockId)
        val value = translatePredicate(predicate)
        finishBlockCond(value, bodyBlockId, joinBlockId)
        startBlock(joinBlockId)
    }

}
