package au.edu.mq.comp.perentiemq.cfg

import au.edu.mq.comp.perentiemq.cfg.AssemblyCFG.Entry
import org.scalallvm.assembly.Analyser
import org.scalallvm.assembly.AssemblySyntax._

import au.edu.mq.comp.automat.auto.{NFA}
import au.edu.mq.comp.automat.util.Dominator.{tarjanPostDom, postDomFrontier, prettyPrint}
import reflect.io._
import au.edu.mq.comp.dot.DOTSyntax.DotSpec
import au.edu.mq.comp.dot.DOTPrettyPrinter.format

/**
 * Provides some slicing methods..
 */
object SlicerCFG {

    case class Slicer(cfg : NFA[String, Entry]) {

        //  a sink block used only for computing dominators
        private lazy val sinkBlock : Entry = CFGBlockEntry(Block(BlockLabel("sink"), Vector(), None, Vector(), MetaTerminatorInstruction(Unreachable(), Metadata(Vector()))))

        //  compute the post dominator frontier
        lazy val postDomFront = {
            val postDomTree = tarjanPostDom(cfg, "sink", sinkBlock)
            val domDot : DotSpec = prettyPrint("sink", postDomTree)
            File("/tmp/dominators.dot").writeAll(format(domDot).layout)
            postDomFrontier(cfg, postDomTree)
        }
        println(postDomFront)

        //  predeceesors int the CFG
        lazy val predMap : Map[String, Set[(Entry, String)]] = {
            val res = scala.collection.mutable.Map[String, Set[(Entry, String)]]()
            cfg.edges.foreach {
                e => res += (e.tgt -> (res.getOrElse(e.tgt, Set[(Entry, String)]()) + ((e.lab, e.src))))
            }
            res.toMap
        }

        lazy val pred : String => Set[(Entry, String)] = {
            x => predMap.getOrElse(x, Set())
        }
    }

    case class Slice(private val m : Map[String, Set[Name]]) {

        //  union is defined by: for each node, union of set of vars
        def \/(s : Slice) : Slice = {
            println("[union->]")
            val r = (m.keySet ++ s.get.keySet) map {
                node => (node, m.getOrElse(node, Set()) ++ s.get.getOrElse(node, Set()))
            }
            println("[union<-]")
            Slice(r.toMap)
        }

        //  difference remove vars in s for the nodes in common
        def \(s : Slice) : Slice = {
            println("[diff]->")
            val r = m.keySet map {
                case node if s.get.isDefinedAt(node) =>
                    (node, m(node) &~ s.get(node))
                case node => (node, m(node))
            }
            println("[diff]<-")
            Slice(r.toMap)
        }

        def isEmpty = get.isEmpty

        def get = m filter (_._2.nonEmpty)
    }

    import org.scalallvm.assembly.Analyser.blockDataFlow

    //     i is a node in the CFG and the variables to slice for
    def computeSlice(s : Slicer, node : String, v : Set[Name]) : Slice = {

        //  compute backpropagation of v from node (one step)
        def dataDependence1(node : String, v : Set[Name]) : Slice = {
            //  get predecessors of node
            println(s"[dep1] processing $node and $v")
            val predsOfNode : Set[(Entry, String)] = s.pred(node)
            //  compute variables needed on predeceesors according to Entry type
            val m : Set[(String, Set[Name])] = predsOfNode map {

                //  block with side-effect
                case (CFGBlockEntry(b), predNode)    => (predNode, blockDataFlow(b, v))

                //  block with mode side-effect, CFGChoice or CFGGoto
                case (CFGExitCondEntry(_), predNode) => (predNode, v)
            }
            Slice(m.toMap)
        }

        //  compute fix-point of back propagation
        def dataDependence(s : Slice) : Slice = {
            //  toSlice is the pairs to slice
            //  current is the current slice
            def dataDependenceRec(toSlice : Slice, current : Slice = Slice(Map())) : Slice = {
                println("rec->")
                if (toSlice.isEmpty) current
                else {
                    //  compute variables needed for the elements in toSlice    
                    val newPairs = (toSlice.get map {
                        case (node, vars) => dataDependence1(node, vars)
                    }).reduceLeft(_ \/ _)
                    println("rec0")
                    val r1 = newPairs \ current
                    println("rec1")
                    val r2 = current \/ newPairs
                    println("rec2")
                    println("rec<-")
                    dataDependenceRec((newPairs \ current), current \/ newPairs)
                }
            }
            dataDependenceRec(s)
        }
        dataDependence(Slice(Map(node -> v)))
    }
}
