load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_scale2_jt_scale2",
      artifact = "it.geosolutions.jaiext.scale2:jt-scale2:1.1.9",
      artifact_sha256 = "7f24977195d84a11e54a6ca94f6cc0e83e198dfe91abd3e86ff89be3bc1a73c7",
      deps = [
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_translate_jt_translate",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@it_geosolutions_jaiext_vectorbin_jt_vectorbin",
          "@javax_media_jai_codec",
          "@org_huldra_math_bigint",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
