package au.edu.mq.comp.skink.ir

/**
 * A trace is given by a sequence of choices. The blocks visited by a
 * trace are the start block of the function, followed by successor blocks
 * given by the choices. E.g., if a block has two possible paths to successor
 * blocks, the index will be 0 or 1, indicating which of the possible paths
 * was taken in the trace.
 */
case class Trace(choices : Seq[Int])
