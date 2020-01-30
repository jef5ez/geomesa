load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_clearspring_analytics_stream",
      artifact = "com.clearspring.analytics:stream:2.9.2",
      artifact_sha256 = "f5b4381cd5697a13125578cab3fe56702213c0723c0a00ff94cd6fb4fbe7b058",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES it.unimi.dsi:fastutil
  )
