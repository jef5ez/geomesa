load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "xmlenc_xmlenc",
      artifact = "xmlenc:xmlenc:0.52",
      artifact_sha256 = "282ae185fc2ff27da7714af9962897c09cfefafb88072219c4a2f9c73616c026",
  )
