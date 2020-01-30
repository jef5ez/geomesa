load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_crop_jt_crop",
      artifact = "it.geosolutions.jaiext.crop:jt-crop:1.1.9",
      artifact_sha256 = "20596135c391f2f1725cd591d4afb3a107489915c2c156637b8f4a065fe8dc89",
      deps = [
          "@it_geosolutions_jaiext_mosaic_jt_mosaic",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
