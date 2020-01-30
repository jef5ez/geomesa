load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "it_geosolutions_jaiext_classifier_jt_classifier",
      artifact = "it.geosolutions.jaiext.classifier:jt-classifier:1.1.9",
      artifact_sha256 = "503227ca01fa22590bc30edb52b401dd22e9765e818f8f7de65a0654907d99a4",
      deps = [
          "@it_geosolutions_jaiext_piecewise_jt_piecewise",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@javax_media_jai_codec",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES org.locationtech.jts:jts
  )
