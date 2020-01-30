load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_martiansoftware_nailgun_server",
      artifact = "com.martiansoftware:nailgun-server:0.9.1",
      artifact_sha256 = "4518faa6bf4bd26fccdc4d85e1625dc679381a08d56872d8ad12151dda9cef25",
  )
