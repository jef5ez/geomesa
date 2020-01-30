load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_sun_jersey_jersey_client",
      artifact = "com.sun.jersey:jersey-client:1.9",
      artifact_sha256 = "8ae03af0d06c46a51b65d123ec40f245da690991aa3669cef4767db8f36fbe68",
      deps = [
          "@com_sun_jersey_jersey_core"
      ],
  )


  import_external(
      name = "com_sun_jersey_jersey_core",
      artifact = "com.sun.jersey:jersey-core:1.9",
      artifact_sha256 = "2c6d0ec88fc8c36cb41637d9c00d0698c22cb6b6a137fa526ef782e00d2265bc",
  )


  import_external(
      name = "com_sun_jersey_jersey_json",
      artifact = "com.sun.jersey:jersey-json:1.9",
      artifact_sha256 = "cc5d535f43cef0d1c467240961aae35801a837ab010319e741b2c7a6658f3fd6",
      deps = [
          "@com_sun_jersey_jersey_core",
          "@com_sun_xml_bind_jaxb_impl",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_jaxrs",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_codehaus_jackson_jackson_xc",
          "@org_codehaus_jettison_jettison"
      ],
    # EXCLUDES stax:stax-api
  )


  import_external(
      name = "com_sun_jersey_jersey_server",
      artifact = "com.sun.jersey:jersey-server:1.9",
      artifact_sha256 = "3ded91b198077561bd51f6c0442c9cd70b754d8b31b61afaf448bda9d01848f0",
      deps = [
          "@asm_asm",
          "@com_sun_jersey_jersey_core"
      ],
  )
