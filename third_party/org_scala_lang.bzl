load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_scala_lang_scala_compiler",
      artifact = "org.scala-lang:scala-compiler:2.11.7",
      artifact_sha256 = "23a7eeefc043ef4846dfd08a66b0dfd60106bfc093e17c16e3c39183f146632f",
      deps = [
          "@org_scala_lang_modules_scala_parser_combinators_2_11",
          "@org_scala_lang_modules_scala_xml_2_11",
          "@org_scala_lang_scala_library",
          "@org_scala_lang_scala_reflect"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_scala_lang_scala_library",
      artifact = "org.scala-lang:scala-library:2.11.7",
      artifact_sha256 = "b401e1dc0ab03370f4e6078dbc8b8eb478c7cdf97022c13bab61baad21e98158",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_scala_lang_scala_reflect",
      artifact = "org.scala-lang:scala-reflect:2.11.7",
      artifact_sha256 = "8cb825e246d2c7b0cc1a8005e34352132b6018eeb54cf35d24719a29b3885fd2",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )
