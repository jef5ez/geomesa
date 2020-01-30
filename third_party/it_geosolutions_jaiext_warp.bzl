load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_warp_jt_warp",
      artifact = "it.geosolutions.jaiext.warp:jt-warp:1.1.9",
      artifact_sha256 = "ea29ee4aefcdc08843ff5a4f36df1baa22f1dac8233c61e76a5f70de20241ab2",
      deps = [
          "@it_geosolutions_jaiext_border_jt_border",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@it_geosolutions_jaiext_vectorbin_jt_vectorbin",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
