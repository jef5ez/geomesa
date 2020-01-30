load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_locationtech_jts_jts_core",
      artifact = "org.locationtech.jts:jts-core:1.16.0",
      artifact_sha256 = "2b72752377712a3e13d4f60c19a229277f11bc9c23897dd0f758641b982e901b",
  )
