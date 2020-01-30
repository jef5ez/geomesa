load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_bandcombine_jt_bandcombine",
      artifact = "it.geosolutions.jaiext.bandcombine:jt-bandcombine:1.1.9",
      artifact_sha256 = "72c1c37eda5089209ea53bbda328a5679fd895fc362034543c8a35bf896d57a1",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
