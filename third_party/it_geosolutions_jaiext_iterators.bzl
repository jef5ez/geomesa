load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_iterators_jt_iterators",
      artifact = "it.geosolutions.jaiext.iterators:jt-iterators:1.1.9",
      artifact_sha256 = "c084997e855e92860ab0caff68c9b7580c1d2f37e59124c0ff291689ce0c3c4b",
      deps = [
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
