load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_border_jt_border",
      artifact = "it.geosolutions.jaiext.border:jt-border:1.1.9",
      artifact_sha256 = "fea0240d8fe0d3486edbe3e59f92e3ade37c0a2d5a85e1e29b3506e0b53fd560",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
