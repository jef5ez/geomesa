load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_shadedrelief_jt_shadedrelief",
      artifact = "it.geosolutions.jaiext.shadedrelief:jt-shadedrelief:1.1.9",
      artifact_sha256 = "6bd08330cd3d4452d63d264dbf8d9d6b6281b27e98db265998424838386124e3",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES com.vividsolutions:jts
  )
