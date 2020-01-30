load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_orderdither_jt_orderdither",
      artifact = "it.geosolutions.jaiext.orderdither:jt-orderdither:1.1.9",
      artifact_sha256 = "44030af7fb8b19174c8d351e5ec59a7ff696fe39652311adaf919ae0ab78f65b",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
