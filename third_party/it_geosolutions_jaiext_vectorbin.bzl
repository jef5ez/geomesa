load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_vectorbin_jt_vectorbin",
      artifact = "it.geosolutions.jaiext.vectorbin:jt-vectorbin:1.1.9",
      artifact_sha256 = "818bde037b7700f19a9f794103ca671d1ca59dafebae487661694489129d7074",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
