load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_imagefunction_jt_imagefunction",
      artifact = "it.geosolutions.jaiext.imagefunction:jt-imagefunction:1.1.9",
      artifact_sha256 = "1f879997f680921d700c5766428f4008a524665df8fc63f347fdf250cea469cf",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
