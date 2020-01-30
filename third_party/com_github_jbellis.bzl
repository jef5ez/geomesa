load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_github_jbellis_jamm",
      artifact = "com.github.jbellis:jamm:0.3.0",
      artifact_sha256 = "debe2f8137c703d81eb9623b457e82eee2b305d834c1a8cfb65ad1f9c8f31f95",
  )
