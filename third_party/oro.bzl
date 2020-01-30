load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "oro_oro",
      artifact = "oro:oro:2.0.8",
      artifact_sha256 = "e00ccdad5df7eb43fdee44232ef64602bf63807c2d133a7be83ba09fd49af26e",
  )
