resolvers ++= Seq(
  "Typesafe repository" at "http://repo.typesafe.com/typesafe/releases/",
  "Sonatype releases" at "http://oss.sonatype.org/content/repositories/releases/"
)

// IntelliJ IDEA plugin
addSbtPlugin("com.github.mpeltonen" % "sbt-idea" % "1.6.0")

// Eclipse plugin
addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "2.5.0")

// Scalastyle plugin
addSbtPlugin("org.scalastyle" %% "scalastyle-sbt-plugin" % "0.6.0")

// Scalariform plugin (Daniel Trinh's fork)
addSbtPlugin("com.danieltrinh" % "sbt-scalariform" % "1.3.0")
