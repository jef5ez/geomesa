load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_hk2_hk2_api",
      artifact = "org.glassfish.hk2:hk2-api:2.4.0-b34",
      artifact_sha256 = "6eb071aaea327015ac3da18d5066c364c1a39978f4b6f94644158675ca5b9ced",
      deps = [
          "@org_glassfish_hk2_external_aopalliance_repackaged",
          "@org_glassfish_hk2_hk2_utils"
      ],
    # EXCLUDES javax.inject:javax.inject
  )


  import_external(
      name = "org_glassfish_hk2_hk2_locator",
      artifact = "org.glassfish.hk2:hk2-locator:2.4.0-b34",
      artifact_sha256 = "ea47ebf7ed56ef751055710cfad36840bcc36383cf387c4a963b41447c066f8f",
      deps = [
          "@org_glassfish_hk2_external_aopalliance_repackaged",
          "@org_glassfish_hk2_external_javax_inject",
          "@org_glassfish_hk2_hk2_api",
          "@org_glassfish_hk2_hk2_utils",
          "@org_javassist_javassist"
      ],
  )


  import_external(
      name = "org_glassfish_hk2_hk2_utils",
      artifact = "org.glassfish.hk2:hk2-utils:2.4.0-b34",
      artifact_sha256 = "70211b1f918819bf6afbf69d3d19d4ae6e2a75d6e26f6c39ba9f20eb8e5612d7",
  )


  import_external(
      name = "org_glassfish_hk2_osgi_resource_locator",
      artifact = "org.glassfish.hk2:osgi-resource-locator:1.0.1",
      artifact_sha256 = "775003be577e8806f51b6e442be1033d83be2cb2207227b349be0bf16e6c0843",
  )
