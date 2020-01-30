load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_xml_stream_stax_api",
      artifact = "javax.xml.stream:stax-api:1.0-2",
  )
