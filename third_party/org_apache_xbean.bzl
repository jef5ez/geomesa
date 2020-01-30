load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_xbean_xbean_asm5_shaded",
      artifact = "org.apache.xbean:xbean-asm5-shaded:4.4",
      artifact_sha256 = "7d41dde216615b6c08adafe16e73598cd4ebfaa090394ae692dda8094576952a",
  )
