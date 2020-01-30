load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_jersey_ext_jersey_bean_validation",
      artifact = "org.glassfish.jersey.ext:jersey-bean-validation:2.27",
      artifact_sha256 = "9dc23bd60a6ff1b8ce3f436b1dec959f82a1a643b7a981f4462700aae432c16d",
      deps = [
          "@javax_el_javax_el_api",
          "@javax_validation_validation_api",
          "@javax_ws_rs_javax_ws_rs_api",
          "@org_glassfish_hk2_external_javax_inject",
          "@org_glassfish_jersey_core_jersey_common",
          "@org_glassfish_jersey_core_jersey_server",
          "@org_glassfish_web_javax_el",
          "@org_hibernate_hibernate_validator"
      ],
  )
