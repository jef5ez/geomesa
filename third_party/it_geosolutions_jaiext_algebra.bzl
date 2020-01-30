load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_algebra_jt_algebra",
      artifact = "it.geosolutions.jaiext.algebra:jt-algebra:1.1.9",
      artifact_sha256 = "6b6b87d7a5a68c3b4a1d7fe863a43a203287ce617edc66c70bbf0843b61ec883",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
