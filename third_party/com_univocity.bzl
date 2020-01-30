load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_univocity_univocity_parsers",
      artifact = "com.univocity:univocity-parsers:2.5.9",
      artifact_sha256 = "129a78955e33fed6ec2a3e68942cb1dd1d459187cb16c415a43179108b02f27a",
  )
