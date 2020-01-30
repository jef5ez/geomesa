load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_sf_py4j_py4j",
      artifact = "net.sf.py4j:py4j:0.10.7",
      artifact_sha256 = "49d1e3e86532a6c68c399fb83508603ebeeb9b942e0cf301db71c7987fd4dfcb",
  )
