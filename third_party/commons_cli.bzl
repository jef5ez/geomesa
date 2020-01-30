load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_cli_commons_cli",
      artifact = "commons-cli:commons-cli:1.2",
      artifact_sha256 = "e7cd8951956d349b568b7ccfd4f5b2529a8c113e67c32b028f52ffda371259d9",
  )
