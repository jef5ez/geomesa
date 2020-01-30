load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_measure_unit_api",
      artifact = "javax.measure:unit-api:1.0",
      artifact_sha256 = "35da65fdbd3f9c1fe79cfc8399db975fd97660d8a219febfda9fd1a5fc058f10",
  )
