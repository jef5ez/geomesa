load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_sf_geographiclib_GeographicLib_Java",
      artifact = "net.sf.geographiclib:GeographicLib-Java:1.49",
      artifact_sha256 = "78c292f7e6910d51a15fc9088c301fac3b4c0a43ac5ae17499f5763b4dd9aca8",
  )
