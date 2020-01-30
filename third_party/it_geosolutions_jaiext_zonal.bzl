load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_zonal_jt_zonal",
      artifact = "it.geosolutions.jaiext.zonal:jt-zonal:1.1.9",
      artifact_sha256 = "cf617cbdcc760cc9a081a1d3f99aee08514a6f02117f0e0e245b0faa3a39e264",
      deps = [
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_stats_jt_stats",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
