load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_locationtech_spatial4j_spatial4j",
      artifact = "org.locationtech.spatial4j:spatial4j:0.7",
      artifact_sha256 = "9adccb1d87f7e0be70567b952c65552607e2dcbde32a1579a8a639bdcfa1a3c8",
  )
