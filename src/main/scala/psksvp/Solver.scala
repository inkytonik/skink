package psksvp

import org.bitbucket.franck44.scalasmt.configurations.SolverConfig
import org.bitbucket.franck44.scalasmt.interpreters.SMTSolver
import psksvp.ADT.WorkerPool

/**
 * Created by psksvp on 3/7/17.
 */
class Solver(config : SolverConfig) extends SMTSolver(config)
        with ADT.Worker {
    override def run() : Boolean = true
    override def shutdown() : Unit = this.destroy()
}

class SolverPool(pool : Seq[Solver]) extends WorkerPool[Solver](pool)
