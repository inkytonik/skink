// name of the project
name := "skink"

version := "2.0-SNAPSHOT"

organization := "au.edu.mq.comp"

// Scala compiler settings

scalaVersion := "2.12.7"

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

shellPrompt := {
    state =>
        Project.extract(state).currentRef.project + " " + version.value +
            " " + scalaVersion.value + "> "
}

// Dependencies

libraryDependencies ++=
    Seq (
        "org.bitbucket.franck44.automat" %% "automat" % "1.0.4-SNAPSHOT",
        "org.bitbucket.inkytonik.kiama" %% "kiama" % "2.2.0",
        "org.bitbucket.inkytonik.kiama" %% "kiama" % "2.2.0" % "test" classifier ("tests"),
        "org.bitbucket.inkytonik.kiama" %% "kiama-extras" % "2.2.0",
        "org.bitbucket.inkytonik.kiama" %% "kiama-extras" % "2.2.0" % "test" classifier ("tests"),
        "org.bitbucket.inkytonik.scalallvm" %% "scalallvm" % "0.2.0-SNAPSHOT",
        "org.bitbucket.franck44.scalasmt" %% "scalasmt" % "2.1.1-SNAPSHOT",
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

javaOptions in run += "-Xss16m"

// Assembly settings

test in assembly := {}

mainClass in assembly := Some ("au.edu.mq.comp.skink.Main")

assemblyMergeStrategy in assembly ~=
  (old =>
    {
      case "logback-test.xml" => MergeStrategy.discard
      case x                  => old(x)
    })

// ScalariForm

import scalariform.formatter.preferences._

scalariformPreferences := scalariformPreferences.value
    .setPreference (AlignSingleLineCaseStatements, true)
    .setPreference (DanglingCloseParenthesis, Force)
    .setPreference (IndentSpaces, 4)
    .setPreference (SpaceBeforeColon, true)
    .setPreference (SpacesAroundMultiImports, false)

// File headers

//  Use headerCheck to check which files need new headers
//  Use headerCreate in sbt to generate the headers
//  Use Test/headerCheck etc to do same in test code

headerLicense := Some(HeaderLicense.Custom(
   """This file is part of Skink.
     |
     |Copyright (C) 2015-2018
     |Programming Languages and Verification Research Group
     |Macquarie University
     |
     |Skink is free software: you can redistribute it and/or modify
     |it under the terms of the GNU Lesser General Public License as published
     |by the Free Software Foundation, either version 3 of the License, or
     |(at your option) any later version.
     |
     |Skink is distributed in the hope that it will be useful,
     |but WITHOUT ANY WARRANTY; without even the implied warranty of
     |MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
     |GNU Lesser General Public License for more details.
     |
     |See COPYING and COPYING.LESSER for full license terms.
     |More information at http://www.gnu.org/licenses.
     |""".stripMargin
))
