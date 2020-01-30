load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_json4s_json4s_ast_2_11",
      artifact = "org.json4s:json4s-ast_2.11:3.5.4",
      artifact_sha256 = "0df80a878631c17d38fd8975076fa0b93fed0131d0fab11a5f654cfa7ab8677c",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_json4s_json4s_core_2_11",
      artifact = "org.json4s:json4s-core_2.11:3.5.4",
      artifact_sha256 = "c28996837b52e8d035f612d278e5e6c9da85ef8ec4ac2b79d46d08353aad62fc",
      deps = [
          "@com_thoughtworks_paranamer_paranamer",
          "@org_json4s_json4s_ast_2_11",
          "@org_json4s_json4s_scalap_2_11",
          "@org_scala_lang_modules_scala_xml_2_11",
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_json4s_json4s_ext_2_11",
      artifact = "org.json4s:json4s-ext_2.11:3.5.2",
      deps = [
          "@joda_time_joda_time",
          "@org_joda_joda_convert",
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_json4s_json4s_jackson_2_11",
      artifact = "org.json4s:json4s-jackson_2.11:3.2.11",
      artifact_sha256 = "f0ab6bb74164889e5d9a43cf099ddd7ac856facec210bcf7caa711297915738f",
      deps = [
          "@com_fasterxml_jackson_core_jackson_databind",
          "@org_json4s_json4s_core_2_11",
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_json4s_json4s_native_2_11",
      artifact = "org.json4s:json4s-native_2.11:3.5.4",
      artifact_sha256 = "66b1fd4e922461caa6348e9bcf27ff993d614deec5066041c7de7544e81be9a6",
      deps = [
          "@org_json4s_json4s_core_2_11",
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_json4s_json4s_scalap_2_11",
      artifact = "org.json4s:json4s-scalap_2.11:3.5.4",
      artifact_sha256 = "307812195f49239fd5251f5fec1c45a1bb90e007e42f300542d913d7a72d43f3",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )
