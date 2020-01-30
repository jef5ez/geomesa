load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_googlecode_efficient_java_matrix_library_core",
      artifact = "com.googlecode.efficient-java-matrix-library:core:0.26",
      artifact_sha256 = "a9b23f6fed33606241bdb4f4bcbff213706068dda5880b702e7d75addb63715d",
  )
