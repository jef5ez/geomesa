load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_fasterxml_jackson_module_jackson_module_jaxb_annotations",
      artifact = "com.fasterxml.jackson.module:jackson-module-jaxb-annotations:2.9.6",
      artifact_sha256 = "65a3427608de9a6d0228f5605ae5a8704ff1e23f66593d76422c9489a71fb280",
      deps = [
          "@com_fasterxml_jackson_core_jackson_annotations",
          "@com_fasterxml_jackson_core_jackson_core",
          "@com_fasterxml_jackson_core_jackson_databind"
      ],
  )


  import_external(
      name = "com_fasterxml_jackson_module_jackson_module_paranamer",
      artifact = "com.fasterxml.jackson.module:jackson-module-paranamer:2.7.9",
      deps = [
          "@com_thoughtworks_paranamer_paranamer"
      ],
    # EXCLUDES com.fasterxml.jackson.core:jackson-databind
  )


  import_external(
      name = "com_fasterxml_jackson_module_jackson_module_scala_2_11",
      artifact = "com.fasterxml.jackson.module:jackson-module-scala_2.11:2.6.7.1",
      deps = [
          "@com_fasterxml_jackson_core_jackson_annotations",
          "@com_fasterxml_jackson_core_jackson_core",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_fasterxml_jackson_module_jackson_module_paranamer",
          "@org_scala_lang_scala_library",
          "@org_scala_lang_scala_reflect"
      ],
    # EXCLUDES com.google.guava:guava
  )
