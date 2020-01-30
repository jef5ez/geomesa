load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jruby_jcodings_jcodings",
      artifact = "org.jruby.jcodings:jcodings:1.0.8",
      artifact_sha256 = "897793ca4a37583082a6ceeaca4ff83874da6448f651a914d1bbc7fd51d75442",
  )
