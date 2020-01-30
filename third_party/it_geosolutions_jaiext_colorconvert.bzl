load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_colorconvert_jt_colorconvert",
      artifact = "it.geosolutions.jaiext.colorconvert:jt-colorconvert:1.1.9",
      artifact_sha256 = "f940d936f519de8b44ed441d7b7f6aae5b30436a5b1c38221747a6bbeb26f7ba",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
