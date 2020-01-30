load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "picocontainer_picocontainer",
      artifact = "picocontainer:picocontainer:1.2",
      artifact_sha256 = "d729282e385ed351684e649e261b5b02399327c4713c6b100f122942f923412f",
    # EXCLUDES xml-apis:xml-apis
  )
