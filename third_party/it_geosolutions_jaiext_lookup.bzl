load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_lookup_jt_lookup",
      artifact = "it.geosolutions.jaiext.lookup:jt-lookup:1.1.9",
      artifact_sha256 = "c921cc0445c8c227baeeb689a996fe7ae90a5c5a049f6456fc6d86a4d3c0b576",
      deps = [
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
