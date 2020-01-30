load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_bandmerge_jt_bandmerge",
      artifact = "it.geosolutions.jaiext.bandmerge:jt-bandmerge:1.1.9",
      artifact_sha256 = "9b9bfdd68db9d2d79ffc11d7b5dd78f244417e2bba7149bd9e856269afe9cf7a",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
