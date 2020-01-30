load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_specs2_classycle",
      artifact = "org.specs2:classycle:1.4.3",
      artifact_sha256 = "9b8cc4f88a5fa8c0e9437ff72f472f9f8e2a7509d94261df6196d5570935d697",
  )


  import_external(
      name = "org_specs2_specs2_analysis_2_11",
      artifact = "org.specs2:specs2-analysis_2.11:4.0.1",
      artifact_sha256 = "0d23a25faacabfccaa70aa992179b2ee8329cba70e6a41c0d68e05a631656de2",
      deps = [
          "@org_scala_lang_scala_compiler",
          "@org_scala_lang_scala_library",
          "@org_scala_sbt_test_interface",
          "@org_specs2_classycle",
          "@org_specs2_specs2_core_2_11",
          "@org_specs2_specs2_matcher_2_11"
      ],
  )


  import_external(
      name = "org_specs2_specs2_common_2_11",
      artifact = "org.specs2:specs2-common_2.11:4.3.2",
      artifact_sha256 = "8197f0ec9100c87ec33e80377a69ec503a86a8bd1573026c579cd815d08f589c",
      deps = [
          "@org_scala_lang_modules_scala_parser_combinators_2_11",
          "@org_scala_lang_modules_scala_xml_2_11",
          "@org_scala_lang_scala_library",
          "@org_scala_lang_scala_reflect",
          "@org_specs2_specs2_fp_2_11"
      ],
  )


  import_external(
      name = "org_specs2_specs2_core_2_11",
      artifact = "org.specs2:specs2-core_2.11:4.3.2",
      artifact_sha256 = "62d7d90edaea2698064ce593c71f5ebab00f96b5f806a480b3f85fbb3f5eb98d",
      deps = [
          "@org_scala_lang_scala_library",
          "@org_scala_sbt_test_interface",
          "@org_specs2_specs2_matcher_2_11"
      ],
  )


  import_external(
      name = "org_specs2_specs2_fp_2_11",
      artifact = "org.specs2:specs2-fp_2.11:4.3.2",
      artifact_sha256 = "2ec7726f861a858416671ffd45d38d5876fe72a1991d2e1896c3c9c6862da385",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_specs2_specs2_junit_2_11",
      artifact = "org.specs2:specs2-junit_2.11:4.3.2",
      artifact_sha256 = "354519279d0af190ed695ccf3740698f459edf3a2e3daf1ecf8d40a7ee987852",
      deps = [
          "@junit_junit",
          "@org_scala_lang_scala_library",
          "@org_scala_sbt_test_interface",
          "@org_specs2_specs2_core_2_11"
      ],
  )


  import_external(
      name = "org_specs2_specs2_matcher_2_11",
      artifact = "org.specs2:specs2-matcher_2.11:4.3.2",
      artifact_sha256 = "53f34bf8c61acb1df804830eb258b8d0f80b929fbf4fac2586dc911558ce950f",
      deps = [
          "@org_scala_lang_scala_library",
          "@org_specs2_specs2_common_2_11"
      ],
  )


  import_external(
      name = "org_specs2_specs2_matcher_extra_2_11",
      artifact = "org.specs2:specs2-matcher-extra_2.11:4.0.1",
      artifact_sha256 = "623d04fdcfa3087fc4636007f60ac9ad93c54306993c551134029847d7a97369",
      deps = [
          "@org_scala_lang_modules_scala_parser_combinators_2_11",
          "@org_scala_lang_scala_library",
          "@org_scala_sbt_test_interface",
          "@org_specs2_specs2_analysis_2_11",
          "@org_specs2_specs2_matcher_2_11"
      ],
  )


  import_external(
      name = "org_specs2_specs2_mock_2_11",
      artifact = "org.specs2:specs2-mock_2.11:4.3.2",
      artifact_sha256 = "08b322cbd5686ed5a4a6b8bfee9b6a1f7752f6baab7cc331543898dcd922397b",
      deps = [
          "@org_hamcrest_hamcrest_core",
          "@org_mockito_mockito_core",
          "@org_scala_lang_scala_library",
          "@org_scala_sbt_test_interface",
          "@org_specs2_specs2_core_2_11"
      ],
  )
