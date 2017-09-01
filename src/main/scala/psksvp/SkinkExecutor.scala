package psksvp

object SkinkExecutor
{
  import scala.concurrent.duration._

  /**
    *
    * @param filename
    * @param predicates
    * @param useO2
    * @param usePredicateAbstraction
    * @param useClang
    * @param maxIteration
    */
  def consoleRun(filename:String,
                 predicates:Seq[PredicateTerm],
                 useO2:Boolean,
                 usePredicateAbstraction:Boolean,
                 useClang:String = "clang-4.0",
                 maxIteration:Int = 20):Unit=
  {
    import au.edu.mq.comp.skink.Main
    PredicatesAbstraction.setToUsePredicates(predicates)
    val args = List("-v",
                     if(usePredicateAbstraction) "--use-predicate-abstraction" else "",
                     if(useO2) "" else "--no-O2",
                     "--use-clang", useClang,
                     "-m", maxIteration.toString,
                     filename)

    Main.main(args.filter(_.length > 0).toArray)
  }


  abstract class RunResult
  case class RunTRUE() extends RunResult
  case class RunFALSE() extends RunResult
  case class RunUNKNOWN() extends RunResult
  case class RunTIMEOUT() extends RunResult

  /**
    *
    * @param filename
    * @param predicates
    * @param useO2
    * @param usePredicateAbstraction
    * @param useClang
    * @param maxIteration
    * @return
    */
  def runAsProcess(filename:String,
                   predicates:Seq[PredicateTerm],
                   useO2:Boolean,
                   usePredicateAbstraction:Boolean,
                   timeout:Duration,
                   useClang:String = "clang-4.0",
                   maxIteration:Int = 20): (RunResult, String)=
  {
    import scala.sys.process._
    import scala.concurrent._
    import ExecutionContext.Implicits.global

    def seqToString(ls:Seq[String]):String =
    {
      if(ls.isEmpty) ""
      else s"${ls.head} ${seqToString(ls.tail)}"
    }

    class StringBuffer
    {
      val sb = new StringBuilder
      def addLine(line:String):Unit= sb.append(s"$line\n")
      override def toString:String = sb.toString
    }

    val args = seqToString(List("-v",
                     if(usePredicateAbstraction) "--use-predicate-abstraction" else "",
                     if(useO2) "" else "--no-O2",
                     "--use-clang", useClang,
                     "-m", maxIteration.toString,
                     filename))
    val cmd = s"java -jar target/scala-2.12/skink-assembly-2.0-SNAPSHOT.jar $args"

    val stdout = new StringBuffer
    val stderr = new StringBuffer
    val p = cmd.run(ProcessLogger(stdout.addLine, stderr.addLine))

    try
    {
      val f = Future(blocking(p.exitValue()))
      Await.result(f, timeout)
      val output = stdout.toString.trim
      if(output.lastIndexOf("TRUE") >= 0)
        (RunTRUE(), output)
      else if(output.lastIndexOf("FALSE") >= 0)
        (RunFALSE(), output)
      else
        (RunUNKNOWN(), output)
    }
    catch
    {
      case _:TimeoutException => p.destroy()
                                (RunTIMEOUT(), stdout.toString().trim())
      case _:Throwable        => p.destroy()
                                (RunTIMEOUT(), stdout.toString().trim())
    }
  }

  /**
    *
    * @param filename
    * @param predicates
    * @param useO2
    * @param usePredicateAbstraction
    * @param useClang
    * @param maxIteration
    * @return
    */
  def run(filename:String,
          predicates:Seq[PredicateTerm],
          useO2:Boolean,
          usePredicateAbstraction:Boolean,
          useClang:String = "clang-4.0",
          maxIteration:Int = 20): RunResult=
  {
    import java.io.{PrintStream, File}
    val outputPath = s"$filename.output.txt"
    if(!fileExists(outputPath))
    {
      Console.withOut(new PrintStream(new File(outputPath)))
      {
        consoleRun(filename, predicates, useO2, usePredicateAbstraction, useClang)
      }
    }
    else
      println(s"$outputPath exists, grabbing the result..")

    import sys.process._
    val result = Seq("/usr/bin/tail", "-n", "1", outputPath).!!

    if(result.trim.indexOf("TRUE") >= 0)
      RunTRUE()
    else if(result.trim.indexOf("FALSE") >= 0)
      RunFALSE()
    else
      RunUNKNOWN()
  }

  /**
    *
    * @param filePath
    * @param useO2
    * @param useClang
    * @param maxIteration
    */
  case class Code(filePath:String, useO2:Boolean, useClang:String, maxIteration:Int)

  /**
    *
    * @param runDataList
    * @param timeout
    * @param outputDir
    * @return
    */
  def runBench(runDataList:Seq[Code], timeout:Duration, outputDir:String):Seq[Seq[String]] =
  {
    for(d <- runDataList) yield
    {
      println(s"running -> $d")

      val result = runAsProcess(d.filePath, Nil, d.useO2, true, timeout, d.useClang, d.maxIteration)
      copyFile(d.filePath, outputDir)
      val cSrcFile = d.filePath.split("/").last
      writeString(result._2, toFileAtPath = s"$outputDir/$cSrcFile.output.txt")
      Seq(cSrcFile, s"$cSrcFile.output.txt", result._1.toString())
    }
  }

  /**
    *
    * @param runDataList
    * @param timeout
    * @param outputDir
    */
  def runBenchAndOutputReport(runDataList:Seq[Code], timeout:Duration, outputDir:String):Unit =
  {
    val output = runBench(runDataList, timeout, outputDir)
    val report = makeReportHTML(output)
    import java.io.PrintWriter
    new PrintWriter(s"$outputDir/report.html")
    {
      write(report)
      close()
    }
  }


  /**
    *
    * @param output
    * @return
    */
  def makeReportHTML(output:Seq[Seq[String]]):String =
  {
    def addRow(r:Seq[String]):String =
    {
      require(3 == r.length)
      s"""
         |<tr>
         |  <th> <a href="${r.head}"> ${r.head} </a> </th>
         |  <th> <a href="${r(1)}"> ${r.last} </a> </th>
         |</tr>
       """.stripMargin
    }

    def makeTable(t:Seq[Seq[String]]):String =
    {
      if(t.isEmpty)
        ""
      else
        s"${addRow(t.head)} ${makeTable(t.tail)}"
    }

    s"""
       |<html>
       |<head>
       |<style>
       |table {
       |    width:100%;
       |}
       |table, th, td {
       |    border: 1px solid black;
       |    border-collapse: collapse;
       |}
       |th, td {
       |    padding: 5px;
       |    text-align: left;
       |}
       |table#t01 tr:nth-child(even) {
       |    background-color: #eee;
       |}
       |table#t01 tr:nth-child(odd) {
       |   background-color:#fff;
       |}
       |table#t01 th {
       |    background-color: black;
       |    color: white;
       |}
       |</style>
       |</head>
       |<body><table>
       |${makeTable(output)}
       |</body></table>
       |</html>
     """.stripMargin
  }
}
