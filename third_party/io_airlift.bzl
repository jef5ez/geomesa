load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "io_airlift_aircompressor",
      artifact = "io.airlift:aircompressor:0.10",
      artifact_sha256 = "a5471abddc99a95939abfc0405cddb2213c4fba561de94f888d6e625566e826c",
    # EXCLUDES io.airlift:slice
  )
