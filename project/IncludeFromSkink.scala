// Based on http://www.howtobuildsoftware.com/index.php/how-do/ccCp/sbt-sbt-assembly-how-can-a-duplicate-class-be-excluded-from-sbt-assembly
// updated for new aut-plugin sbt-assembly
// https://github.com/sbt/sbt-assembly/blob/master/Migration.md

import sbtassembly._
import java.io.File
import sbtassembly.AssemblyPlugin.autoImport.MergeStrategy

class IncludeFromSkink() extends MergeStrategy {
  val name = "includeFromSkink"

    def apply(tmp : File, path: String, files : Seq[File]) : Either[String, Seq[(File, String)]] = {
    val includedFiles = files.flatMap { f =>
      val (source, _, _, isFromJar) = sbtassembly.AssemblyUtils.sourceOfFileForMerge(tmp, f)
      if(isFromJar) None else Some(f -> path)
    }
    Right(includedFiles)
  }
}
