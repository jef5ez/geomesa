load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_fasterxml_jackson_jaxrs_jackson_jaxrs_base",
      artifact = "com.fasterxml.jackson.jaxrs:jackson-jaxrs-base:2.9.6",
      artifact_sha256 = "4a167ef9601a6037c112cd8ae250ab400237874e1d344d3a6dda41cc7eadf0eb",
      deps = [
          "@com_fasterxml_jackson_core_jackson_core",
          "@com_fasterxml_jackson_core_jackson_databind"
      ],
  )


  import_external(
      name = "com_fasterxml_jackson_jaxrs_jackson_jaxrs_json_provider",
      artifact = "com.fasterxml.jackson.jaxrs:jackson-jaxrs-json-provider:2.9.6",
      artifact_sha256 = "cc155755295488e936beaa81f0bf2d5d443cd082d2e3cd787bd759ea1c6b54a7",
      deps = [
          "@com_fasterxml_jackson_jaxrs_jackson_jaxrs_base",
          "@com_fasterxml_jackson_module_jackson_module_jaxb_annotations"
      ],
  )
