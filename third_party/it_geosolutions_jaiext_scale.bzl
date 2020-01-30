load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_scale_jt_scale",
      artifact = "it.geosolutions.jaiext.scale:jt-scale:1.1.9",
      artifact_sha256 = "98e9d69689a8e550346f6ad31ef5ee39f78eb484f390bd15cc9bdefb96f1e5f7",
      deps = [
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_translate_jt_translate",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@it_geosolutions_jaiext_vectorbin_jt_vectorbin",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
