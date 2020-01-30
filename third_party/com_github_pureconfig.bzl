load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_github_pureconfig_pureconfig_2_11",
      artifact = "com.github.pureconfig:pureconfig_2.11:0.11.1",
      artifact_sha256 = "e12ea9da6efb043fc2830bdc1f97946c5664bf1aa1f7cae9d9a6045f4193e2b0",
      deps = [
          "@com_github_pureconfig_pureconfig_core_2_11",
          "@com_github_pureconfig_pureconfig_generic_2_11",
          "@org_scala_lang_scala_library"
      ],
    # EXCLUDES org.typelevel:macro-compat_2.11
  )


  import_external(
      name = "com_github_pureconfig_pureconfig_core_2_11",
      artifact = "com.github.pureconfig:pureconfig-core_2.11:0.11.1",
      artifact_sha256 = "a257c9ac89d2cf1c43ec3205398007a8c0cefb586560832e9a7b56c603434e71",
      deps = [
          "@com_github_pureconfig_pureconfig_macros_2_11",
          "@com_typesafe_config",
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "com_github_pureconfig_pureconfig_generic_2_11",
      artifact = "com.github.pureconfig:pureconfig-generic_2.11:0.11.1",
      artifact_sha256 = "4db8b780d7b9ec29aabbcccac3f9ab76ab06b04380944fb9a3f7c98a9ebee70a",
      deps = [
          "@com_chuusai_shapeless_2_11",
          "@com_github_pureconfig_pureconfig_core_2_11",
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "com_github_pureconfig_pureconfig_macros_2_11",
      artifact = "com.github.pureconfig:pureconfig-macros_2.11:0.11.1",
      artifact_sha256 = "794c61369f9dad7ce9414694a30f67b967706b8e764f6a97c1ee971f6b3ed7ad",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )
