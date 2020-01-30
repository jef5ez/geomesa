load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_fasterxml_jackson_dataformat_jackson_dataformat_cbor",
      artifact = "com.fasterxml.jackson.dataformat:jackson-dataformat-cbor:2.6.7",
      deps = [
          "@com_fasterxml_jackson_core_jackson_core"
      ],
  )
