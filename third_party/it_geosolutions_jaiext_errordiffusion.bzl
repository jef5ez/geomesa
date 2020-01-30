load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_errordiffusion_jt_errordiffusion",
      artifact = "it.geosolutions.jaiext.errordiffusion:jt-errordiffusion:1.1.9",
      artifact_sha256 = "22c83add3f16217603e1f826bfcc428e67db2f1c22b1adbfefb059ec3d651201",
      deps = [
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
