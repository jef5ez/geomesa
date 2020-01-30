load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_parboiled_parboiled_core",
      artifact = "org.parboiled:parboiled-core:1.1.7",
      artifact_sha256 = "2c403d7bc6d2d00bbc7cd72a9cd64c6d632d68e61ef2d4233f702f2f560b1595",
  )


  import_external(
      name = "org_parboiled_parboiled_scala_2_11",
      artifact = "org.parboiled:parboiled-scala_2.11:1.1.7",
      artifact_sha256 = "bc09b51566c5aab6642689e7fce1ced1a1c1174d42cb1709ecf7eb1f38cf48e1",
      deps = [
          "@org_parboiled_parboiled_core",
          "@org_scala_lang_scala_library"
      ],
  )
