load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_chuusai_shapeless_2_11",
      artifact = "com.chuusai:shapeless_2.11:2.3.3",
      artifact_sha256 = "d1ed83b05994d26e5e993efc86127a98a98ca09d45a995cfad4d6f161e2295c4",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )
