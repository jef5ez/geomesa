load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_binarize_jt_binarize",
      artifact = "it.geosolutions.jaiext.binarize:jt-binarize:1.1.9",
      artifact_sha256 = "018b453ee6149053ae8c2a14d921ce24164f43e8d60d6c51393b6fde64fab119",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
