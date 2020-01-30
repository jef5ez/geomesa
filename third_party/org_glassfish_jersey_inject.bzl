load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_jersey_inject_jersey_hk2",
      artifact = "org.glassfish.jersey.inject:jersey-hk2:2.27",
      artifact_sha256 = "634a2790f08c2f33feb78586b22a23005a2f8aa483c316ae2435729be0943968",
      deps = [
          "@org_glassfish_hk2_hk2_locator",
          "@org_glassfish_jersey_core_jersey_common"
      ],
  )
