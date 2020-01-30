load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_directory_server_apacheds_i18n",
      artifact = "org.apache.directory.server:apacheds-i18n:2.0.0-M15",
      artifact_sha256 = "bd3b7cece7fc6364cbce32b9edd0e9628a3e889c6a93cdeff1b5e2131e2a007c",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_directory_server_apacheds_kerberos_codec",
      artifact = "org.apache.directory.server:apacheds-kerberos-codec:2.0.0-M15",
      artifact_sha256 = "4996f5b72497e94dd86d64a370158c4fb0049eea9b17ff8b27a4671d6c136ded",
      deps = [
          "@org_apache_directory_api_api_asn1_api",
          "@org_apache_directory_api_api_util",
          "@org_apache_directory_server_apacheds_i18n",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.apache.directory.api:api-asn1-ber
    # EXCLUDES org.apache.directory.api:api-i18n
    # EXCLUDES org.apache.directory.api:api-ldap-model
    # EXCLUDES net.sf.ehcache:ehcache-core
  )
