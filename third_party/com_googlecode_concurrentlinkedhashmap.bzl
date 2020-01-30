load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_googlecode_concurrentlinkedhashmap_concurrentlinkedhashmap_lru",
      artifact = "com.googlecode.concurrentlinkedhashmap:concurrentlinkedhashmap-lru:1.4",
      artifact_sha256 = "48f823692a8c26414a98b18572b3a07c4099d3cd04afe8babda62337d5540a95",
  )
