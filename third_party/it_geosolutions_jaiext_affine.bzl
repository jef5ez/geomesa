load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_affine_jt_affine",
      artifact = "it.geosolutions.jaiext.affine:jt-affine:1.1.9",
      artifact_sha256 = "fabed5bf4358153ffdf77fe19eea730bd2c0fedc0015381e41ea02484b206a64",
      deps = [
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_scale_jt_scale",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
