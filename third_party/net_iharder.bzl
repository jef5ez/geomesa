load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_iharder_base64",
      artifact = "net.iharder:base64:2.3.8",
      artifact_sha256 = "bbf41fda22877a538f6bc2d5ad0aa372a7ddf4a756af3386aa09d3d4eea84f7f",
  )
