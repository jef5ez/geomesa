load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_conversantmedia_disruptor",
      artifact = "com.conversantmedia:disruptor:1.2.13",
      artifact_sha256 = "8a1ed933137148cecf8ffdffbe7ed02b1d9ff567dfa88cf64226b84d22e2c75b",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )
