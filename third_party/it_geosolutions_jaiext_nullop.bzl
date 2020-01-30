load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_nullop_jt_nullop",
      artifact = "it.geosolutions.jaiext.nullop:jt-nullop:1.1.9",
      artifact_sha256 = "5c8ff247d41c1f6ef9ba72172d87b05d5b07a0609f9477d8e0ae981062943716",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
