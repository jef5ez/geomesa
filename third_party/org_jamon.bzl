load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jamon_jamon_runtime",
      artifact = "org.jamon:jamon-runtime:2.4.1",
      artifact_sha256 = "0dc41d463124b3815d0ce2ce8064b00b2ed0237c187ab277e1052ec7c82ba28d",
  )
