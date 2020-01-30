load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_google_inject_extensions_guice_servlet",
      artifact = "com.google.inject.extensions:guice-servlet:3.0",
      artifact_sha256 = "9e72a4b8582888d53c2f4297e93276a3c14c82880124490f2da7b16a9df1c618",
      deps = [
          "@com_google_inject_guice"
      ],
  )
