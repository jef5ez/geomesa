load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_directory_api_api_all",
      artifact = "org.apache.directory.api:api-all:1.0.0-M20",
      artifact_sha256 = "344af05830488c4f497a6f79009626e43112cb3e0f67d39104d0ca3d80622e75",
      deps = [
          "@antlr_antlr",
          "@commons_collections_commons_collections",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_pool_commons_pool",
          "@org_apache_mina_mina_core",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES xml-apis:xml-apis
    # EXCLUDES xpp3:xpp3
    # EXCLUDES dom4j:dom4j
  )


  import_external(
      name = "org_apache_directory_api_api_asn1_api",
      artifact = "org.apache.directory.api:api-asn1-api:1.0.0-M20",
      artifact_sha256 = "484aaf4b888b0eb699d95bea265c2d5b6ebec951d70e5c5f7691cd52dd4c8298",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_directory_api_api_util",
      artifact = "org.apache.directory.api:api-util:1.0.0-M20",
      artifact_sha256 = "fd32fd047ccf143c58d093b58811aa81e539f8cf83c1187809f1a241a1df12d1",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )
