load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_jpountz_lz4_lz4",
      artifact = "net.jpountz.lz4:lz4:1.3.0",
      artifact_sha256 = "b877a4d4a3a0140486d3d0f83d9058e7c0ff6ca80b00d2f7b77145935b385b56",
  )
