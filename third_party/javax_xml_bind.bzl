load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_xml_bind_jaxb_api",
      artifact = "javax.xml.bind:jaxb-api:2.2.2",
      deps = [
          "@javax_activation_activation",
          "@javax_xml_stream_stax_api"
      ],
  )
