load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_utilities_jt_utilities",
      artifact = "it.geosolutions.jaiext.utilities:jt-utilities:1.1.9",
      artifact_sha256 = "50d5b1a332e658f387c1ee45c013f7f5282559afd3f9e338468262110137333d",
      deps = [
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
