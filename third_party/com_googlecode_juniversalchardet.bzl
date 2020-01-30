load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_googlecode_juniversalchardet_juniversalchardet",
      artifact = "com.googlecode.juniversalchardet:juniversalchardet:1.0.3",
      artifact_sha256 = "757bfe906193b8b651e79dc26cd67d6b55d0770a2cdfb0381591504f779d4a76",
  )
