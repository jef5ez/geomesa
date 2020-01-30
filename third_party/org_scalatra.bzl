load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_scalatra_scalatra_2_11",
      artifact = "org.scalatra:scalatra_2.11:2.6.3",
      artifact_sha256 = "0476df129b1435615af4a216d64554e0cc5d126c39668b1af08c58bfbab5f8a1",
      deps = [
          "@com_googlecode_juniversalchardet_juniversalchardet",
          "@eu_medsea_mimeutil_mime_util",
          "@org_apache_commons_commons_lang3",
          "@org_scala_lang_modules_scala_parser_combinators_2_11",
          "@org_scala_lang_modules_scala_xml_2_11",
          "@org_scala_lang_scala_library",
          "@org_scalatra_scalatra_common_2_11",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_scalatra_scalatra_auth_2_11",
      artifact = "org.scalatra:scalatra-auth_2.11:2.6.3",
      artifact_sha256 = "3994889497a499079b00821fbfa482ef6320c98f5bbeafe0c67117c1e314e5a8",
      deps = [
          "@org_scala_lang_scala_library",
          "@org_scalatra_scalatra_2_11"
      ],
  )


  import_external(
      name = "org_scalatra_scalatra_common_2_11",
      artifact = "org.scalatra:scalatra-common_2.11:2.6.3",
      artifact_sha256 = "e3e83205535fd0db12cf9ed511bff7168affaac830132a7e87378d3ba8e656e8",
      deps = [
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "org_scalatra_scalatra_json_2_11",
      artifact = "org.scalatra:scalatra-json_2.11:2.6.3",
      artifact_sha256 = "d57f211893cdc2e9af4d9a7db5ed62cd83c31c48fabd3bbca6e6c6913a0002d7",
      deps = [
          "@org_json4s_json4s_core_2_11",
          "@org_scala_lang_scala_library",
          "@org_scalatra_scalatra_2_11"
      ],
  )


  import_external(
      name = "org_scalatra_scalatra_specs2_2_11",
      artifact = "org.scalatra:scalatra-specs2_2.11:2.6.3",
      artifact_sha256 = "3f5a6bee4fbf76600c98d2376f24eeeb6721abe87750dc2431d0fcd2f6f8a9ec",
      deps = [
          "@org_scala_lang_scala_library",
          "@org_scalatra_scalatra_test_2_11",
          "@org_specs2_specs2_core_2_11",
          "@org_specs2_specs2_matcher_extra_2_11",
          "@org_specs2_specs2_mock_2_11"
      ],
  )


  import_external(
      name = "org_scalatra_scalatra_swagger_2_11",
      artifact = "org.scalatra:scalatra-swagger_2.11:2.6.3",
      artifact_sha256 = "7ed226995a62c3afdfa89e6f9ebf74bca73539c1f70858b2201d3320d29b2a94",
      deps = [
          "@org_json4s_json4s_ext_2_11",
          "@org_scala_lang_modules_scala_parser_combinators_2_11",
          "@org_scala_lang_scala_library",
          "@org_scalatra_scalatra_2_11",
          "@org_scalatra_scalatra_auth_2_11",
          "@org_scalatra_scalatra_json_2_11"
      ],
  )


  import_external(
      name = "org_scalatra_scalatra_test_2_11",
      artifact = "org.scalatra:scalatra-test_2.11:2.6.3",
      artifact_sha256 = "89f6a1cf8b96c785c30cc57b18a8807b8644469fd01915a41be095dbfccfb544",
      deps = [
          "@javax_servlet_javax_servlet_api//:linkable",
          "@org_apache_commons_commons_lang3",
          "@org_apache_httpcomponents_httpclient",
          "@org_apache_httpcomponents_httpmime",
          "@org_eclipse_jetty_jetty_webapp",
          "@org_mockito_mockito_core",
          "@org_scala_lang_scala_library",
          "@org_scalatra_scalatra_common_2_11"
      ],
  )
