load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_codehaus_jackson_jackson_core_asl",
      artifact = "org.codehaus.jackson:jackson-core-asl:1.9.13",
  )


  import_external(
      name = "org_codehaus_jackson_jackson_jaxrs",
      artifact = "org.codehaus.jackson:jackson-jaxrs:1.9.13",
      deps = [
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl"
      ],
  )


  import_external(
      name = "org_codehaus_jackson_jackson_mapper_asl",
      artifact = "org.codehaus.jackson:jackson-mapper-asl:1.9.13",
      deps = [
          "@org_codehaus_jackson_jackson_core_asl"
      ],
  )


  import_external(
      name = "org_codehaus_jackson_jackson_xc",
      artifact = "org.codehaus.jackson:jackson-xc:1.9.13",
      deps = [
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl"
      ],
  )
