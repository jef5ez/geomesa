load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_codehaus_jettison_jettison",
      artifact = "org.codehaus.jettison:jettison:1.1",
      artifact_sha256 = "377940288b0643c48780137f6f68578937e1ea5ca2b73830a820c50a7b7ed801",
  )
