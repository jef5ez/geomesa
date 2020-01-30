load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_kafka_kafka_2_11",
      artifact = "org.apache.kafka:kafka_2.11:2.1.1",
      artifact_sha256 = "f9ac844b62c8d248e358f235629eb339dd213d9e1f712ec522e13b78489347e1",
      deps = [
          "@com_101tec_zkclient",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_typesafe_scala_logging_scala_logging_2_11",
          "@com_yammer_metrics_metrics_core",
          "@net_sf_jopt_simple_jopt_simple",
          "@org_apache_kafka_kafka_clients",
          "@org_apache_zookeeper_zookeeper",
          "@org_scala_lang_scala_library",
          "@org_scala_lang_scala_reflect"
      ],
    # EXCLUDES org.slf4j:slf4j-log4j12
    # EXCLUDES org.slf4j:*
    # EXCLUDES org.xerial.snappy:snappy-java
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_kafka_kafka_2_11_test",
      artifact = "org.apache.kafka:kafka_2.11:jar:test:2.1.1",
      artifact_sha256 = "ca08241804b304471525e91c470038874077a80894f30cb89187d90ee1e2ca23",
      deps = [
          "@com_101tec_zkclient",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_typesafe_scala_logging_scala_logging_2_11",
          "@com_yammer_metrics_metrics_core",
          "@org_apache_kafka_kafka_clients",
          "@org_apache_zookeeper_zookeeper",
          "@org_scala_lang_scala_library",
          "@org_scala_lang_scala_reflect",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.slf4j:slf4j-log4j12
    # EXCLUDES org.xerial.snappy:snappy-java
    # EXCLUDES net.sf.jopt-simple:jopt-simple
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_kafka_kafka_clients",
      artifact = "org.apache.kafka:kafka-clients:2.1.1",
      artifact_sha256 = "d5c1ed6e23e815fe43c0f050ef0651110b9e9b59cfc4d86e50bf7cc084132a93",
      deps = [
          "@com_github_luben_zstd_jni",
          "@org_lz4_lz4_java",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.slf4j:slf4j-log4j12
    # EXCLUDES org.xerial.snappy:snappy-java
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_kafka_kafka_clients_test",
      artifact = "org.apache.kafka:kafka-clients:jar:test:2.1.1",
      artifact_sha256 = "197895526cb7ddffd4eadf04668f85c0dde0ae20fa0c0c82713147efcf9c8f77",
      deps = [
          "@com_github_luben_zstd_jni",
          "@org_lz4_lz4_java",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.slf4j:slf4j-log4j12
    # EXCLUDES org.xerial.snappy:snappy-java
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
