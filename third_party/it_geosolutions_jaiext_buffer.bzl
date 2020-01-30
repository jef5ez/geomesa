load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_buffer_jt_buffer",
      artifact = "it.geosolutions.jaiext.buffer:jt-buffer:1.1.9",
      artifact_sha256 = "57d2478209e33325efc602e20e236ad170567f6647a6cc8f54941e34d035a70e",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
