load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_stumbleupon_async",
      artifact = "com.stumbleupon:async:1.4.1",
      artifact_sha256 = "118bce251e41b829459eb5a14124bd9edbc42ff554514c048395cc3c6830c73a",
    # EXCLUDES org.slf4j:slf4j-api
  )
