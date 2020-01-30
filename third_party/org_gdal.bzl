load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_gdal_gdal",
      artifact = "org.gdal:gdal:2.0.0",
      artifact_sha256 = "dfe0bca210ed956c79a20cf6edea6b1bc211ff28cbc9f5cc1b19f249420a688e",
  )
