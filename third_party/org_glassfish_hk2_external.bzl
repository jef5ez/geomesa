load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_hk2_external_aopalliance_repackaged",
      artifact = "org.glassfish.hk2.external:aopalliance-repackaged:2.4.0-b34",
      artifact_sha256 = "5d3cb0cece722c7ba8ab987b931053cdbcb0cb12ad5c8c8a7691eb6f7e60a64b",
  )


  import_external(
      name = "org_glassfish_hk2_external_javax_inject",
      artifact = "org.glassfish.hk2.external:javax.inject:2.4.0-b34",
      artifact_sha256 = "fdbf80a01b854045bd4004b7c6b1fdc2da81db475bfbd08ed574eeffcf9a7b1a",
    # EXCLUDES javax.inject:javax.inject
  )
