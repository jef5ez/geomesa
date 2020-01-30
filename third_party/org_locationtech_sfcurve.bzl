load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_locationtech_sfcurve_sfcurve_api_2_11",
      artifact = "org.locationtech.sfcurve:sfcurve-api_2.11:0.2.0",
      artifact_sha256 = "2cf31ce90925f71159924ac7b4595717ac69cf28803168dea30a2edf5cbfbf68",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_locationtech_sfcurve_sfcurve_zorder_2_11",
      artifact = "org.locationtech.sfcurve:sfcurve-zorder_2.11:0.2.0",
      artifact_sha256 = "48a093f3f03b94f5d104edfc14738816c978e3fdccf9ba36247f18b95ce380a4",
      deps = [
          "@org_locationtech_sfcurve_sfcurve_api_2_11",
          "@org_scala_lang_scala_library"
      ],
  )
