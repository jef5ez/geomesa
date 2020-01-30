load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_bandselect_jt_bandselect",
      artifact = "it.geosolutions.jaiext.bandselect:jt-bandselect:1.1.9",
      artifact_sha256 = "c47f24d1f5ea3b24dc7515ea7f4fcecec005aacbd38745ea630b0f84cb6e2944",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
