package au.edu.mq.comp.skink.ir

package llvm

import org.bitbucket.franck44.automat.auto.DetAuto
import org.scalallvm.assembly.AssemblySyntax.{Block, Program}
import au.edu.mq.comp.skink.ir.{Choice}
import scala.collection.immutable.Map
import scala.collection.mutable.{Map => MutableMap}
import org.bitbucket.inkytonik.kiama.attribution.Attribution
import org.scalallvm.assembly.AssemblySyntax.{ASTNode, FunctionDefinition}

/**
 * A state of the program
 *
 * @param   threadLocs
 * @param   syncTokens  Current state of mutexes (locked/unlocked)
 */
case class LLVMState(threadLocs : Map[ThreadId, RichBlock], syncTokens : Map[String, Boolean]) {

    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._

    def isError = threadLocs.values.exists(x => isErrorBlock(x.block))

    def show = (threadLocs.map {
        case (x, y) => (x, y.show)
    }).toString
}

/**
 * An automaton which unfolds main and creates threads.
 * @param   irfunctions     The known functions.
 * @param   main            The entry point function.
 */
case class LLVMConcurrentAuto(
    progAnalyser : IRAnalyser,
    irfunctions : Vector[LLVMFunction],
    main : LLVMFunction
)
        extends Attribution
        with DetAuto[LLVMState, Choice] {

    import org.scalallvm.assembly.AssemblySyntax._
    import scala.collection.mutable.ListBuffer
    import au.edu.mq.comp.skink.Skink.getLogger
    import org.scalallvm.assembly.AssemblyPrettyPrinter.{any, layout, show}
    import au.edu.mq.comp.skink.ir.llvm.LLVMHelper._

    private val logger = getLogger(this.getClass)
    private var threadCount = 0
    private var seenThreads = MutableMap[String, Int]()

    /**
     * Name of this automaton
     */
    val name : String = main.name

    /**
     * For each thread the function executed by the thread.
     *
     * Should be only one as we enforce inlining and check isVerifiable for each target
     * of pthread_create
     */
    var functionIds = MutableMap[Int, LLVMFunction](0 -> main)

    /**
     * Function names to LLVMFunction
     */
    lazy val funNameToLLVMFun : Map[String, LLVMFunction] = irfunctions.map(f => (f.name, f)).toMap

    /**
     * ??
     * @param    threadId   The thread number
     * @param    blockName  The name of the block
     */
    def getBlockByName(threadId : Int, blockName : String) : Block = {
        functionIds.get(threadId).get.blockMap.get(blockName) match {
            case Some(x) =>
                logger.debug(s"Found block $blockName in threadId $threadId ")
                x
            case None => sys.error(s"Could not find block $blockName in thread $threadId")
        }
    }

    // An analyser for the verifiable version of this function and its associated tree
    import org.scalallvm.assembly.Analyser.defaultBlockName
    import org.scalallvm.assembly.Analyser
    import org.bitbucket.inkytonik.kiama.relation.{EnsureTree, Tree}
    import org.bitbucket.inkytonik.kiama.rewriting.Rewriter.collectl
    import org.bitbucket.inkytonik.kiama.util.{FileSource, Position, Source}

    //  Implementation of DetAuto interface

    /**
     * Initial state is the first block of main
     */
    def getInit = {
        logger.debug(s"getInit used blockName ${main.blockName(main.function.functionBody.blocks.head)}")
        LLVMState(
            Map(ThreadId(0) -> RichBlock(ThreadId(0), FunAnalyser(main.name), main.entryBlock)),
            Map()
        )
    }

    /**
     * Final states are error states i.e. one thread has reached an error block
     */
    def isFinal(state : LLVMState) : Boolean = state.isError

    /**
     * No state is acceptsAll
     */
    def acceptsAll(state : LLVMState) : Boolean = false

    /**
     * No state is acceptsNone
     */
    def acceptsNone(state : LLVMState) : Boolean = false

    //  Properties of blocks

    lazy val isThreadBlocked : LLVMState => ThreadId => Boolean = attr {
        case state => {
            case t => {
                state.threadLocs.get(t) match {
                    case Some(richB) => isBlocked(richB, state)

                    case None        => sys.error(s"Thread $t not active in $state")
                }
            }
        }
    }

    /**
     *  FIXME: Whether what??
     */
    def isBlocked(block : RichBlock, state : LLVMState) : Boolean = {

        threadInstructions(block.block).toList match {

            //  A block in the verifiable form after splitGlobal accesses
            //  should have at most one thread primitive
            case isns :: Nil =>
                //  deternine the type of the thread primtive
                isns match {
                    case PThreadMutexLock(syncToken) =>
                        //  If syncToken is not in state, we assume it is not locked i.e. not initialised to locked
                        state.syncTokens.get(syncToken).getOrElse(false)

                    // FIXME for following case
                    // case PThreadJoin(threadName) =>
                    //     // pthread_join
                    //
                    //     // FIXME
                    //     val threadId = seenThreads.get(threadName).getOrElse(-1)
                    //     val syncThreadBlock = state.threadLocs.get(threadId)
                    //     syncThreadBlock match {
                    //         case Some(blockName) => !isExitBlock(getBlockByName(threadId, blockName))
                    //         case None            => true
                    //     }

                    case PThreadCondWait((syncToken, mutex)) =>
                        // If the condition we are waiting on is false or not set (shouldn't happen)
                        // we release the mutex we were holding and block or else we're unblocked.
                        !state.syncTokens.get(syncToken).getOrElse(false) || state.syncTokens.get(mutex).getOrElse(true)

                    case _ =>
                        false
                }

            case isns :: x =>
                //  More than one thread instructions. Should not happen
                sys.error(s"Block ${block.show} has more than 1 thread primitive.")

            case Nil =>
                //  No thread instruction, thread is not blocked.
                false
        }
    }

    /**
     * Compute the next (branchLabel, tgtblock) for unblocked threads.
     */
    lazy val nextBlocks : LLVMState => Seq[(ThreadId, Block)] =
        attr {
            case state =>

                // val buf = new ListBuffer[(Int, String)]

                logger.debug(s"nextBlocks: filtering blocks ${state.show} for blocked blocks")
                // val unblockedBlocks = state.threadLocs.filter(s => !isBlocked(getBlockByName(s._1, s._2), state))
                //  Unblocked threads
                val unblockedThreads = state.threadLocs.keys.filter(!isThreadBlocked(state)(_))

                logger.debug(s"nextBlocks: got unblocked blocks ${unblockedThreads}")

                //  For each unblocked threads, collect the possible successor (choice,blocks)
                unblockedThreads.flatMap(
                    {
                        case thread =>
                            val b : RichBlock = state.threadLocs(thread)
                            val f = funNameToLLVMFun(b.funAnalyser.name)

                            f.outBranches(b.block)
                                .map(f.nextBlock(b.block, _))
                                .flatten
                                .map((thread, _))
                    }
                ).toList
        }

    def outSyncEffects(block : Block, syncTokens : Map[String, Boolean]) : Map[String, Boolean] = {
        val threadInsns = block.optMetaInstructions.filter(i => isThreadPrimitive(i.instruction))
        var newSyncTokens = syncTokens
        if (threadInsns.length != 0) {
            // We should have atmost one thread primitive per block
            assert(threadInsns.length == 1)
            logger.debug(s"outSyncEffects: checking effect of ${show(threadInsns.head)}")
            newSyncTokens = threadInsns.head match {
                case PThreadCondInit(syncToken)    => syncTokens + (syncToken -> false)
                case PThreadMutexInit(syncToken)   => syncTokens + (syncToken -> false)
                case PThreadMutexLock(syncToken)   => syncTokens + (syncToken -> true)
                case PThreadMutexUnLock(syncToken) => syncTokens + (syncToken -> false)
                case PThreadCondSignal(syncToken)  => syncTokens + (syncToken -> true)

                case PThreadCondWait(syncToken, returnMutex) =>
                    // We must be unblocked in order to exit a wait block, so we
                    // assert that our condition is true and that the mutex is free
                    assert(syncTokens.get(syncToken).getOrElse(false))
                    assert(!syncTokens.get(returnMutex).getOrElse(true))
                    syncTokens + (returnMutex -> true)

                case _ => {
                    logger.debug(s"outSyncEffects: ignoring thread operation")
                    syncTokens
                }
            }
        }

        logger.debug(s"outSyncEffects: syncTokens after processing block ${show(block)}: $syncTokens")
        newSyncTokens
    }

    def inSyncEffects(block : Block, syncTokens : Map[String, Boolean]) : Map[String, Boolean] = {
        val threadInsns = block.optMetaInstructions.filter(i => isThreadPrimitive(i.instruction))
        var newSyncTokens = syncTokens
        if (threadInsns.length != 0) {
            // We should have atmost one thread primitive per block
            assert(threadInsns.length == 1)
            newSyncTokens = threadInsns.head match {
                case PThreadCondWait(syncToken, returnMutex) if (!syncTokens.get(syncToken).getOrElse(true)) =>
                    logger.debug(s"inSyncEffects: checking effecrs of ${show(threadInsns.head)}")

                    // When we arrive in a thread with a wait call in it, we need to decide
                    // if we should release the mutex in order to block, or hold it as
                    // we are unblocked.
                    // assert(syncTokens.get(returnMutex).get)
                    syncTokens + (returnMutex -> false)

                case _ => {
                    logger.debug(s"inSyncEffects: ignoring thread operation")
                    syncTokens
                }
            }
        }

        logger.debug(s"inSyncEffects: syncTokens after processing block ${show(block)}: $syncTokens")
        newSyncTokens
    }

    /**
     * Successor state of a state when transitioning via label.
     */
    def succ(state : LLVMState, label : Choice) : LLVMState = {
        logger.debug(s"succ: Finding successors for $state with $label")
        val currentThread = label.threadId
        val branchId = label.branchId

        // Find the next block for the selected thread and branch
        val b : RichBlock = state.threadLocs(ThreadId(currentThread))
        val f = funNameToLLVMFun(b.funAnalyser.name)
        f.nextBlock(b.block, label.branchId) match {

            case Some(next) =>

                val newThreadLocs = (b.block match {
                    case PThreadCreateBlock((newThreadId, funName)) =>
                        //  Create a new thread
                        val newThreadId = ThreadId(state.threadLocs.keys.map(_.k).max + 1)
                        val entryBlockInNewThread = RichBlock(
                            newThreadId,
                            FunAnalyser(funName),
                            funNameToLLVMFun(funName).entryBlock
                        )
                        state.threadLocs.updated(
                            newThreadId,
                            entryBlockInNewThread
                        )
                    case _ =>
                        //  No new threads
                        state.threadLocs

                }).updated(
                    ThreadId(currentThread),
                    b.copy(block = next)
                )

                val newSyncTokens = inSyncEffects(b.block, outSyncEffects(b.block, state.syncTokens))
                // logger.debug(s"succ: Emitting successor ${LLVMState(newThreadLocs, newSyncTokens)} for $state with label $label")
                LLVMState(newThreadLocs, newSyncTokens)

            case None =>
                sys.error(s"No nwxtblock for ${b.block} in ${f.name}")
        }

    }

    /**
     * Choices enabled in a state.
     */
    def enabledIn(state : LLVMState) : Set[Choice] = !isFinal(state) match {

        case true =>
            //  Unblocked threads
            val unblockedThreads = state.threadLocs.keys.filter(!isThreadBlocked(state)(_))
            logger.debug(s"Unblocked threads are ${unblockedThreads}")

            //  For each unblocked thread, collect the possible successor (choice,blocks)
            unblockedThreads.flatMap(
                {
                    case currentThread =>
                        //  RichBlock in currentThread
                        val b : RichBlock = state.threadLocs(currentThread)
                        //  LLVMFunction which contains b
                        val f = funNameToLLVMFun(b.funAnalyser.name)
                        //  Compute pairs (choice, tgtBlock) : Int x Option[Block]
                        f.outBranches(b.block)
                            //  Compute pairs (choice, tgtBlock) : Int x Option[Block]
                            .map(c => (c, f.nextBlock(b.block, c)))
                            //  Build choices from the outBranches of the block in b
                            //  which have a nextBlock
                            .collect({ case (c, Some(tgt)) => Choice(currentThread.k, c) })
                }
            ).toSet

        case false => Set()
    }
}
