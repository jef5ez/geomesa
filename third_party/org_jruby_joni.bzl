load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jruby_joni_joni",
      artifact = "org.jruby.joni:joni:2.1.2",
      artifact_sha256 = "d6f254480ea62cd1587c4bdd23736e4d3ad3773ae445fc5f5c3c8cfbe82ffa2a",
      deps = [
          "@org_jruby_jcodings_jcodings"
      ],
  )
