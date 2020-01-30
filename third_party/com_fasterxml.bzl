load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_fasterxml_classmate",
      artifact = "com.fasterxml:classmate:1.0.0",
      artifact_sha256 = "1a381660e2f27912e2c421a70bf816a1739e0475190a8efefbcdd00d89216887",
  )
