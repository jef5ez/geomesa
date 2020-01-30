load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_scala_sbt_test_interface",
      artifact = "org.scala-sbt:test-interface:1.0",
      artifact_sha256 = "15f70b38bb95f3002fec9aea54030f19bb4ecfbad64c67424b5e5fea09cd749e",
  )
