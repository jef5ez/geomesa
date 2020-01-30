load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_media_jai_codec",
      artifact = "javax.media:jai_codec:1.1.3",
      artifact_sha256 = "6d7824d972c0b6e10daa95f430f917d2256954535e62def9d287e79bf7824200",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "javax_media_jai_core",
      artifact = "javax.media:jai_core:1.1.3",
      artifact_sha256 = "8b696cf067533545f44c2f68339e24ab1a2669153ed2081aa5be8749f4d592bf",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
