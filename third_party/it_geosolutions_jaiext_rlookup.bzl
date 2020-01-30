load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_rlookup_jt_rlookup",
      artifact = "it.geosolutions.jaiext.rlookup:jt-rlookup:1.1.9",
      artifact_sha256 = "ad3a8ca6ec16ba0da30db8f11ccd8099fb68ed586f9b92d7207c4280479d2e7d",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
