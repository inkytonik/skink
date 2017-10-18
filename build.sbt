// name of the project
name := "skink"

version := "2.0-SNAPSHOT"

organization := "au.edu.mq.comp"

// Scala compiler settings

scalaVersion := "2.12.2"

scalacOptions := {

    // Turn on all lint warnings, except:
    //  - stars-align: incorrectly reports problems if pattern matching of
    //    unapplySeq extractor doesn't match sequence directly

    val lintOption =
        if (scalaVersion.value.startsWith ("2.10"))
            "-Xlint"
        else
            "-Xlint:-stars-align,-unused,_"

    Seq (
        "-deprecation",
        "-feature",
        "-sourcepath", baseDirectory.value.getAbsolutePath,
        "-unchecked",
        "-Xfatal-warnings",
        "-Xcheckinit",
        lintOption
    )

}

// Interactive settings

logLevel := Level.Info

shellPrompt <<= (name, version) { (n, v) =>
     _ => n + " " + v + "> "
}

// Dependencies

libraryDependencies ++=
    Seq (
        "org.bitbucket.franck44.automat" %% "automat" % "1.0.2-SNAPSHOT",
        "org.bitbucket.inkytonik.kiama" %% "kiama" % "2.1.0",
        "org.bitbucket.inkytonik.kiama" %% "kiama" % "2.1.0" % "test" classifier ("tests"),
        "org.bitbucket.inkytonik.scalallvm" %% "scalallvm" % "0.2.0-SNAPSHOT",
        "org.bitbucket.franck44.scalasmt" %% "scalasmt" % "2.0.10-SNAPSHOT",
        "org.scalatest" %% "scalatest" % "3.0.4" % "test",
        "org.scalacheck" %% "scalacheck" % "1.13.5" % "test",
        "com.typesafe.scala-logging" %% "scala-logging" % "3.7.2",
        "ch.qos.logback" % "logback-classic" % "1.2.3"
    )

resolvers ++= Seq (
    Resolver.sonatypeRepo ("releases"),
    Resolver.sonatypeRepo ("snapshots")
)

javaOptions in run += "-Dlogback.configurationFile=src/test/resources/logback-test.xml"

scalacOptions in (Compile,doc) ++= Seq("-groups", "-implicits", "-diagrams",
                                            // "-diagrams-dot-path",
                                            // "/usr/local/bin/dot",
                                            // "-diagrams-debug",
                                            "-diagrams-dot-restart", "50")

// Fork runs and tests

fork := true

// Assembly settings

test in assembly := {}

mainClass in assembly := Some ("au.edu.mq.comp.skink.Main")

mergeStrategy in assembly <<= (mergeStrategy in assembly) { (old) =>
  {
    case "logback-test.xml" => MergeStrategy.discard
    case x                  => old(x)
  }
}

// ScalariForm

import scalariform.formatter.preferences._
import SbtScalariform.ScalariformKeys

scalariformSettings

ScalariformKeys.preferences := ScalariformKeys.preferences.value
    .setPreference (AlignSingleLineCaseStatements, true)
    .setPreference (IndentSpaces, 4)
    .setPreference (SpaceBeforeColon, true)
    .setPreference (SpacesAroundMultiImports, false)
