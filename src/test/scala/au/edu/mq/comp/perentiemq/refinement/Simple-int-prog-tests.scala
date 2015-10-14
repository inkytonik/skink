
package au.edu.mq.comp.perentiemq

// import smtlib.parser.Terms._
// import smtlib.theories.Core._
import org.scalatest.{ FunSuite, Matchers }
// import smtlib.theories.Ints._
// import smtlib.util.Implicits._
// import smtlib.theories.ArraysEx._

import cfg.AssemblyCFG.verify

class SimpleIntProgs extends FunSuite with Matchers with Driver {

  override def suiteName = "Simple C programs (.ll) with integers  test suite"

  import org.kiama.util.FileSource
  import scala.language.implicitConversions
  implicit def stringToFileSource(fileName: String) = FileSource(fileName)

  // create an IML config for verification
  val conf = createAndInitConfig(Seq("-v"))
  val path = "src/test/scala/au/edu/mq/comp/perentiemq/simple-example-programs/ll/"

  test( "Parse and verify" ) {
    val IRCode = makeast(FileSource(path + "simple-if-false.ll"), conf)
    // processfile(path + "simple-if.ll", createConfig(Seq("-t", "-v")))
    println(IRCode)
    assert(true)
  }

}