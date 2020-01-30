load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_rescale_jt_rescale",
      artifact = "it.geosolutions.jaiext.rescale:jt-rescale:1.1.9",
      artifact_sha256 = "1d677c278ec5cc028f301457769f35003e44ee9649f756881a6caf556bd7ab2d",
      deps = [
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
