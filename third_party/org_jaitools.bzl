load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jaitools_jt_utils",
      artifact = "org.jaitools:jt-utils:1.5.0",
      artifact_sha256 = "2ef39bf7547f9fa6d832742adeded145f585f34e530d0124aa28f815842e32e1",
      deps = [
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )


  import_external(
      name = "org_jaitools_jt_zonalstats",
      artifact = "org.jaitools:jt-zonalstats:1.5.0",
      artifact_sha256 = "b468412d91c4ef2f8f03351c118f7671bc799c1ff063488ef6699c6ac49ec99b",
      deps = [
          "@org_jaitools_jt_utils"
      ],
  )
