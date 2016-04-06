// name of the project
name := "skink"

version := "1.0"

organization := "au.edu.mq.comp"

// Scala compiler settings

scalaVersion := "2.11.8"

scalacOptions :=
    Seq (
        "-deprecation",
        "-feature",
        "-sourcepath", baseDirectory.value.getAbsolutePath,
        "-unchecked",
        "-Xfatal-warnings",
        "-Xlint",
        "-Xcheckinit"
    )

// Interactive settings

logLevel := Level.Info

shellPrompt <<= (name, version) { (n, v) =>
     _ => n + " " + v + "> "
}

// Dependencies

libraryDependencies ++=
    Seq (
        "au.edu.mq.comp" %% "automat" % "0.1",
        "org.bitbucket.inkytonik.kiama" %% "kiama" % "2.0.0",
        "org.bitbucket.inkytonik.kiama" %% "kiama" % "2.0.0" % "test" classifier ("tests"),
        "org.bitbucket.inkytonik.scalallvm" %% "scalallvm" % "0.1.0",
        //"scala-smt-lib" %% "scala-smt-lib" % "0.1",
        "au.edu.mq.comp" %% "scala-smt-lib-mq-fork-" % "0.1",
        "org.scalatest" %% "scalatest" % "2.2.4" % "test",
        "org.scalacheck" %% "scalacheck" % "1.12.2" % "test"
    )

resolvers ++= Seq (
    Resolver.sonatypeRepo ("releases"),
    Resolver.sonatypeRepo ("snapshots")
)

scalacOptions in (Compile,doc) ++= Seq("-groups", "-implicits", "-diagrams",
                                            // "-diagrams-dot-path",
                                            // "/usr/local/bin/dot",
                                            // "-diagrams-debug",
                                            "-diagrams-dot-restart", "50")

// Rats! setup

sbtRatsSettings

ratsScalaRepetitionType := Some (VectorType)

ratsUseScalaOptions := true

ratsUseScalaPositions := true

ratsDefineASTClasses := true

ratsDefinePrettyPrinter := true

ratsUseKiama := 2

// Assembly settings

test in assembly := {}

mainClass in assembly := Some ("au.edu.mq.comp.perentiemq.Main")

// ScalariForm

import scalariform.formatter.preferences._
import SbtScalariform.ScalariformKeys

scalariformSettings

ScalariformKeys.preferences := ScalariformKeys.preferences.value
    .setPreference (AlignSingleLineCaseStatements, true)
    .setPreference (IndentSpaces, 4)
    .setPreference (SpaceBeforeColon, true)
    .setPreference (SpacesAroundMultiImports, false)
