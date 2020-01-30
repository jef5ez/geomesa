load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_boundary_high_scale_lib",
      artifact = "com.boundary:high-scale-lib:1.0.6",
      artifact_sha256 = "e529306290e184905443f2b190853fb0e6ce158d15e8eadba7cc8b22af52a650",
  )
