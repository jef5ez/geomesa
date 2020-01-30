load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_beanutils_commons_beanutils",
      artifact = "commons-beanutils:commons-beanutils:1.7.0",
      artifact_sha256 = "24bcaa20ccbdc7c856ce0c0aea144566943403e2e9f27bd9779cda1d76823ef4",
      deps = [
          "@commons_logging_commons_logging"
      ],
  )


  import_external(
      name = "commons_beanutils_commons_beanutils_core",
      artifact = "commons-beanutils:commons-beanutils-core:1.8.0",
      artifact_sha256 = "9038c7ddc61d3d8089eb5a52a24b430a202617d57d2d344a93b68e4eafefefde",
      deps = [
          "@commons_logging_commons_logging"
      ],
  )
