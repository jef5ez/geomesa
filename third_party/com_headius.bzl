load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_headius_invokebinder",
      artifact = "com.headius:invokebinder:1.5",
      artifact_sha256 = "03ddbd5b09a0bf8b8e7997e1c846c2c03e6733907df5b84e49d8c80f38b4ad2d",
  )


  import_external(
      name = "com_headius_options",
      artifact = "com.headius:options:1.3",
      artifact_sha256 = "bc3f9d0b187cdd7800909efd737a0466ffd029f0a8266137e40ee995ea5c215e",
  )
