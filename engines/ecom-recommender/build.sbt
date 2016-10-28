import AssemblyKeys._

assemblySettings

name := "template-scala-parallel-ecommercerecommendation"

organization := "io.prediction"

parallelExecution in Test := false

libraryDependencies ++= Seq(
  "io.prediction"    %% "core"          % pioVersion.value  % "provided",
  "org.apache.spark" %% "spark-core"    % "1.5.2" % "provided",
  "org.apache.spark" %% "spark-mllib"   % "1.5.2" % "provided",
  "org.scalatest"    %% "scalatest"     % "2.2.1" % "test")
