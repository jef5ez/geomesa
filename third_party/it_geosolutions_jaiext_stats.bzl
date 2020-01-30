load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_stats_jt_stats",
      artifact = "it.geosolutions.jaiext.stats:jt-stats:1.1.9",
      artifact_sha256 = "a433ab8325d7178aa24bbb7c914423c0649de51bfc7b27f3b0b93091e2adc637",
      deps = [
          "@com_google_guava_guava",
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
