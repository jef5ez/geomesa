load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_lmax_disruptor",
      artifact = "com.lmax:disruptor:3.3.0",
      artifact_sha256 = "237ee677d194fb5b6d53db3a1cd5462bba20ff9554bcaa39d78aec16c03e0799",
  )
