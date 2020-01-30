load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "xml_apis_xml_apis",
      artifact = "xml-apis:xml-apis:1.3.04",
      artifact_sha256 = "d404aa881eb9c5f7a4fb546e84ea11506cd417a72b5972e88eff17f43f9f8a64",
  )
