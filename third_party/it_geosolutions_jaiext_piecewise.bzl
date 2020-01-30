load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_piecewise_jt_piecewise",
      artifact = "it.geosolutions.jaiext.piecewise:jt-piecewise:1.1.9",
      artifact_sha256 = "1409cae00cf7c96b66a02f97ce1156a84a035c2f6a2538688ed865fdc790dd90",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@it_geosolutions_jaiext_vectorbin_jt_vectorbin",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
