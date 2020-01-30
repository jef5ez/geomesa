load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_scala_lang_modules_scala_parser_combinators_2_11",
      artifact = "org.scala-lang.modules:scala-parser-combinators_2.11:1.0.6",
      artifact_sha256 = "e8d15ebde0ccad54b5c9c82501afef8f7506a12f9500f2526d9c7e76a6ec3618",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_scala_lang_modules_scala_xml_2_11",
      artifact = "org.scala-lang.modules:scala-xml_2.11:1.0.6",
      artifact_sha256 = "a3ec190294a15a26706123f140a087a8c0a5db8980e86755e5b8e8fc33ac8d3d",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )
