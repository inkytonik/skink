name := "perentiemq"

version := "0.1.0"

organization := "au.edu.mq.comp"

// Scala compiler settings

scalaVersion := "2.11.6"

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
        "com.googlecode.kiama" %% "kiama" % "2.0.0-SNAPSHOT",
        "com.googlecode.kiama" %% "kiama" % "2.0.0-SNAPSHOT" % "test" classifier ("tests"),
        "org.bitbucket.inkytonik.scalallvm" %% "scalallvm" % "0.1.0",
        "org.scalatest" %% "scalatest" % "2.2.4" % "test",
        "org.scalacheck" %% "scalacheck" % "1.12.2" % "test"
    )

resolvers ++= Seq (
    Resolver.sonatypeRepo ("releases"),
    Resolver.sonatypeRepo ("snapshots")
)

// Rats! setup

sbtRatsSettings

ratsUseScalaLists := true

ratsUseScalaOptions := true

ratsUseScalaPositions := true

ratsDefineASTClasses := true

ratsDefinePrettyPrinter := true

ratsUseKiama := 2


