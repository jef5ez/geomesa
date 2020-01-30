load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_yaml_snakeyaml",
      artifact = "org.yaml:snakeyaml:1.11",
      artifact_sha256 = "1cb255b78a38658b77395d5c340342e8d59a2725e6f6bb018e983aa7e0aa2470",
  )
