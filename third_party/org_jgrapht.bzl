load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jgrapht_jgrapht_core",
      artifact = "org.jgrapht:jgrapht-core:0.9.1",
      artifact_sha256 = "e6ef1c115689eda08142b86d524620da643b6e9f013405257ad07f42dc5c6978",
  )
