load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "xerces_xercesImpl",
      artifact = "xerces:xercesImpl:2.9.1",
      artifact_sha256 = "6ae540a7c85c814ac64bea48016b3a6f45c95d4765f547fcc0053dc36c94ed5c",
      deps = [
          "@xml_apis_xml_apis"
      ],
  )
