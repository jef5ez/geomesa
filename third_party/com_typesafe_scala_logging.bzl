load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_typesafe_scala_logging_scala_logging_2_11",
      artifact = "com.typesafe.scala-logging:scala-logging_2.11:3.8.0",
      artifact_sha256 = "b368502d5adf2e39a26dc6144648ec72c2dc75ab5dedb408d967c102311d5a28",
      deps = [
          "@org_scala_lang_scala_library",
          "@org_scala_lang_scala_reflect",
          "@org_slf4j_slf4j_api"
      ],
  )
