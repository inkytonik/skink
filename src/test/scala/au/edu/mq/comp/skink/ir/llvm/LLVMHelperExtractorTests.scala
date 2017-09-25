package au.edu.mq.comp.skink.ir.llvm

import org.scalatest.{
    FunSuite,
    Matchers
}
import org.scalatest.prop.TableDrivenPropertyChecks

/**
 * Test LLVM Helper extractors
 */
class LLVMHelperExtractorTests extends FunSuite with TableDrivenPropertyChecks with Matchers {

    import org.bitbucket.inkytonik.kiama.util.{Positions, StringSource}
    import org.scalallvm.assembly.{Analyser, Assembly}
    import org.scalallvm.assembly.AssemblySyntax._
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{show}

    import LLVMHelper._

    /*
     *  Build a tail call to a function named id, and arguments in args
     */
    def makeCall(id : String, args : Vector[CallArgument]) =
        MetaInstruction(
            Call(
                NoBinding(),
                Tail(),
                DefaultCC(),
                Vector(),
                VoidT(),
                Function(Named(Global(id))),
                Vector(
                    ValueArg(
                        PointerT(IntT(8), DefaultAddrSpace()),
                        Vector(),
                        Const(NullC())
                    )
                ),
                Vector(Group("#5"))
            ),
            Metadata(Vector())
        )

    /**
     * Parses `inst` as a MetaInstruction
     */
    def parseMetaInst(inst : String) : MetaInstruction = {
        val positions = new Positions
        val source = new StringSource(inst)
        val p = new Assembly(source, positions)
        val pr = p.pMetaInstruction(0)
        if (pr.hasValue) {
            p.value(pr).asInstanceOf[MetaInstruction]
        } else
            fail(s"parse error: ${pr.parseError.msg}")
    }

    //  format: OFF
    //  Table of strings to match
    val exitCalls = Table[ String ](
        ( "Call to pthread library" ) ,
        ( "tail call void @pthread_exit(i8* null) #5" ),
        ( "tail call void @\"\\01_pthread_exit\"(i8* null) #5" )
    )
    //  format: ON

    // PThreadExit()
    for (callName ← exitCalls) {
        test(s"The call to: $callName - should match PThreadExit") {
            parseMetaInst(callName) should matchPattern {
                case PThreadExit() =>
            }
        }
    }

    //  format: OFF
    //  Table of strings to match
    val condSignalCalls = Table[ String, String ](
        ( "Call to pthread library"                                               , "Token"),
        ( """|tail call i32 @pthread_cond_signal(
             |   %struct._opaque_pthread_cond_t* nonnull @five) #5""".stripMargin , "five"),
        ( """|tail call i32 @"\@1_pthread_cond_signal"(
             |   %struct._opaque_pthread_cond_t*  nonnull @two) #5""".stripMargin , "two")
    )
    //  format: ON

    //  PThreadCondSignal(_)
    for ((callName, expectedToken) ← condSignalCalls) {
        test(s"The call to: $callName - should match PThreadCondSignal") {
            parseMetaInst(callName) should matchPattern {
                case PThreadCondSignal(token) if token == expectedToken =>
            }

        }
    }

    //  format: OFF
    //  Table of strings to match
    val mutexLockCalls = Table[ String, String ](
        ( "Call to pthread library"                                              , "Token"),
        ( """|tail call i32 @pthread_mutex_lock(
             |    %struct._opaque_pthread_mutex_t* nonnull @m) #5""".stripMargin , "m"),
        ( """|tail call i32 @"\@1_pthread_mutex_lock"(
             |    %struct._opaque_pthread_mutex_t* nonnull @m) #5""".stripMargin , "m")
    )

    //  PThreadMutexLock(_)
    for ((callName, expectedToken) ← mutexLockCalls) {
        test(s"The call to: $callName - should match PThreadMutexLock") {
            parseMetaInst(callName) should matchPattern {
                case PThreadMutexLock(token) if token == expectedToken =>
            }

        }
    }

    //  format: OFF
    //  Table of strings to match
    val mutexUnlockCalls = Table[ String, String ](
        ( "Call to pthread library"                                            , "Token"),
        ( """|tail call i32 @pthread_mutex_unlock(
             |  %struct._opaque_pthread_mutex_t* nonnull @m) #5""".stripMargin , "m"),
        ( """|tail call i32 @"\@1_pthread_mutex_unlock"(
             |  %struct._opaque_pthread_mutex_t* nonnull @m) #5""".stripMargin , "m")
    )

    //  PThreadMutexUnLock(_)
    for ((callName, expectedToken) ← mutexUnlockCalls) {
        test(s"The call to: $callName - should match PThreadMutexUnLock") {
            parseMetaInst(callName) should matchPattern {
                case PThreadMutexUnLock(token) if token == expectedToken =>
            }

        }
    }

    //  format: OFF
    //  Table of strings to match
    val createCalls = Table[ String, (String, String) ](
        ( "Call to pthread library"                                  , "(ThreadId, ThreadEntryPoint)"),
        ( """|call i32 @pthread_create(
             |  %struct._opaque_pthread_t** nonnull %4,
             |  %struct._opaque_pthread_attr_t* null,
             |  i8* (i8*)* nonnull @f2, i8* null) #6""".stripMargin  , ("4", "f2")),
        ( """|call i32 @pthread_create(
             |   %struct._opaque_pthread_t** nonnull %3,
             |   %struct._opaque_pthread_attr_t* null,
             |   i8* (i8*)* nonnull @f1, i8* null) #6""".stripMargin , ("3", "f1"))
    )

    //  PThreadCreate(_,_)
    for ((callName, expectedInfo) ← createCalls) {
        test(s"The call to: $callName - should match PThreadCreate") {
            parseMetaInst(callName) should matchPattern {
                case PThreadCreate((threadId, threadEntry))
                    if ( (threadId, threadEntry ) == expectedInfo) =>
            }

        }
    }

    //  format: OFF
    //  Table of strings to match
    val condConditionsCalls = Table[ String , String](
        ( "Call to pthread library"                                 , "Token"),
        ( """|call i32 @pthread_create(
             |  %struct._opaque_pthread_t** nonnull %4,
             |  %struct._opaque_pthread_attr_t* null,
             |  i8* (i8*)* nonnull @f2, i8* null) #6""".stripMargin , "4" ),
        ( """|call i32 @pthread_create(
             |  %struct._opaque_pthread_t** nonnull %3,
             |  %struct._opaque_pthread_attr_t* null,
             |  i8* (i8*)* nonnull @f1, i8* null) #6""".stripMargin , "3")
    )

    //  PThreadCondCondition(_,_)
    for ((callName, expectedToken) ← condConditionsCalls) {
        ignore(s"FIXME:  -- no example llvm program found with pthread_cond_condition. $callName") {
            // test(" The call to: $callName - should match PThreadCreate") {
            parseMetaInst(callName) should matchPattern {
                case PThreadCondCondition(token) if (token == expectedToken) =>
            }

        }
    }

    //  format: OFF
    //  Table of strings to match
    val mutexInitCalls = Table[ String, String ](
        ( "Call to pthread library"                                             , "Token"),
        ( """|tail call i32 @pthread_mutex_init(
             |   %struct._opaque_pthread_mutex_t* nonnull @m,
             |   %struct._opaque_pthread_mutexattr_t* null) #5""".stripMargin   ,  "m"),
        ( """|tail call i32 @"\@1_pthread_mutex_init"(
             |   %struct._opaque_pthread_mutex_t* nonnull @m,
             |   %struct._opaque_pthread_mutexattr_t* null) #5""".stripMargin   ,  "m")

    )

    //  PThreadMutexInit(_)
    for ((callName, expectedToken) ← mutexInitCalls) {
        test(s"The call to: $callName - should match PThreadMutexInit") {
            parseMetaInst(callName) should matchPattern {
                case PThreadMutexInit(token) if (token == expectedToken) =>
            }

        }
    }
}
