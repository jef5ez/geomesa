load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jruby_extras_bytelist",
      artifact = "org.jruby.extras:bytelist:1.0.13",
      artifact_sha256 = "e29892c0a19cf5ba923a09a546318b2a3054b1717269697215e4bb2090553c30",
      deps = [
          "@org_jruby_jcodings_jcodings"
      ],
  )
