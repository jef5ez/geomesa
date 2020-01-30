load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_cassandraunit_cassandra_unit",
      artifact = "org.cassandraunit:cassandra-unit:2.2.2.1",
      artifact_sha256 = "5a75f6d3664a272eb0b152b09f88fd2d15f5c73c481a98681b41f2cee033314a",
      deps = [
          "@com_google_guava_guava",
          "@junit_junit",
          "@org_apache_commons_commons_lang3",
          "@org_hamcrest_hamcrest_core",
          "@org_hamcrest_hamcrest_library",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.apache.cassandra:cassandra-all
    # EXCLUDES org.hectorclient:hector-core
    # EXCLUDES com.datastax.cassandra:cassandra-driver-core
  )
