load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_colorindexer_jt_colorindexer",
      artifact = "it.geosolutions.jaiext.colorindexer:jt-colorindexer:1.1.9",
      artifact_sha256 = "b5d6cc48e3a671ca1411468a63d81a2604d1cfca0988dc84e6daa31b67fe6567",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
