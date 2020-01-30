load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_mosaic_jt_mosaic",
      artifact = "it.geosolutions.jaiext.mosaic:jt-mosaic:1.1.9",
      artifact_sha256 = "504565b6e4a91f323ba8a0d3538e7fd480b68ff9e96a3b00f835f9119ea2fc70",
      deps = [
          "@it_geosolutions_jaiext_lookup_jt_lookup",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
