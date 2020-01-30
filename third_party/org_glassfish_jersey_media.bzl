load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_jersey_media_jersey_media_jaxb",
      artifact = "org.glassfish.jersey.media:jersey-media-jaxb:2.22.2",
      artifact_sha256 = "0a99789dd4f2f24451f7cf423d5682dbef39a34609555f455b73546967b9c225",
      deps = [
          "@org_glassfish_hk2_external_javax_inject",
          "@org_glassfish_hk2_hk2_api",
          "@org_glassfish_hk2_hk2_locator",
          "@org_glassfish_hk2_osgi_resource_locator",
          "@org_glassfish_jersey_core_jersey_common"
      ],
  )
