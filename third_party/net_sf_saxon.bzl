load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_sf_saxon_Saxon_HE",
      artifact = "net.sf.saxon:Saxon-HE:9.7.0-20",
      artifact_sha256 = "2ef65d000717aeeeb451fad49ce5c7231de98e28c62c89a41b401a7184b6ce84",
  )
