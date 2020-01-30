load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_format_jt_format",
      artifact = "it.geosolutions.jaiext.format:jt-format:1.1.9",
      artifact_sha256 = "708c1764fc0c17223818e04d4008dcde3d2bd7a3c125b2c60bec14042fbf814d",
      deps = [
          "@it_geosolutions_jaiext_border_jt_border",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
