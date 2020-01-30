load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_ning_compress_lzf",
      artifact = "com.ning:compress-lzf:1.0.3",
      artifact_sha256 = "6cf93bda1c2caf618652f97d2f36c883a5a9774345384c05d3593b173731bccd",
  )
