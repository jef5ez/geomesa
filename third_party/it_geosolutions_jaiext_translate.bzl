load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_translate_jt_translate",
      artifact = "it.geosolutions.jaiext.translate:jt-translate:1.1.9",
      artifact_sha256 = "8e0a0bb4e9d329815161882dd4513414ba2cbbdf7bfacc1ee8218c21c7b22c86",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
