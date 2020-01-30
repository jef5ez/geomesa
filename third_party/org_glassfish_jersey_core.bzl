load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_jersey_core_jersey_client",
      artifact = "org.glassfish.jersey.core:jersey-client:2.22.2",
      artifact_sha256 = "c2229f74968db3d0e676f680a58c1148278def927499f6f2eb1e932aba41fbd5",
      deps = [
          "@javax_ws_rs_javax_ws_rs_api",
          "@org_glassfish_hk2_external_javax_inject",
          "@org_glassfish_hk2_hk2_api",
          "@org_glassfish_hk2_hk2_locator",
          "@org_glassfish_jersey_core_jersey_common"
      ],
  )


  import_external(
      name = "org_glassfish_jersey_core_jersey_common",
      artifact = "org.glassfish.jersey.core:jersey-common:2.22.2",
      artifact_sha256 = "33c51bda7fe94c27056af05c6b6bb1a0c2968b5bcf09b4c098ccbe953231186d",
      deps = [
          "@javax_annotation_javax_annotation_api",
          "@javax_ws_rs_javax_ws_rs_api",
          "@org_glassfish_hk2_external_javax_inject",
          "@org_glassfish_hk2_hk2_api",
          "@org_glassfish_hk2_hk2_locator",
          "@org_glassfish_hk2_osgi_resource_locator",
          "@org_glassfish_jersey_bundles_repackaged_jersey_guava"
      ],
  )


  import_external(
      name = "org_glassfish_jersey_core_jersey_server",
      artifact = "org.glassfish.jersey.core:jersey-server:2.22.2",
      artifact_sha256 = "8f8649b568d068f053362fa3def56206166dfceb3baa74e9f19eff6f8f8d9f1f",
      deps = [
          "@javax_annotation_javax_annotation_api",
          "@javax_validation_validation_api",
          "@javax_ws_rs_javax_ws_rs_api",
          "@org_glassfish_hk2_external_javax_inject",
          "@org_glassfish_hk2_hk2_api",
          "@org_glassfish_hk2_hk2_locator",
          "@org_glassfish_jersey_core_jersey_client",
          "@org_glassfish_jersey_core_jersey_common",
          "@org_glassfish_jersey_media_jersey_media_jaxb"
      ],
  )
