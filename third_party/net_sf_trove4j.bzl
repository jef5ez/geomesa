load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_sf_trove4j_trove4j",
      artifact = "net.sf.trove4j:trove4j:3.0.3",
      artifact_sha256 = "3c8616203d61a12a7e3487e8b34f3c198c2b5ba9e90da0c7ea32d99cd4958012",
  )
