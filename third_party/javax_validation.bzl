load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_validation_validation_api",
      artifact = "javax.validation:validation-api:1.1.0.Final",
      artifact_sha256 = "f39d7ba7253e35f5ac48081ec1bc28c5df9b32ac4b7db20853e5a8e76bf7b0ed",
  )
