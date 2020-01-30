load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_ws_rs_javax_ws_rs_api",
      artifact = "javax.ws.rs:javax.ws.rs-api:2.0.1",
      artifact_sha256 = "38607d626f2288d8fbc1b1f8a62c369e63806d9a313ac7cbc5f9d6c94f4b466d",
  )
