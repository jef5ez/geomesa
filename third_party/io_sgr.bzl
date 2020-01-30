load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "io_sgr_s2_geometry_library_java",
      artifact = "io.sgr:s2-geometry-library-java:1.0.1",
      artifact_sha256 = "8b239af6921e35204e0d6c9578b04398732dc3f43309b20d9a830e613dcbc2bb",
      deps = [
          "@com_google_guava_guava"
      ],
  )
