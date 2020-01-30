load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "io_confluent_common_config",
      artifact = "io.confluent:common-config:5.1.0",
      artifact_sha256 = "8ed33a79dd52f951e9f108864ff3cb8bd3df999ecafe77971035dc704437551a",
      deps = [
          "@io_confluent_common_utils",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "io_confluent_common_metrics",
      artifact = "io.confluent:common-metrics:5.1.0",
      artifact_sha256 = "b94442ade03418419ce8ff872091046f5a60a86a87e8d6b8526a9e62acd1388a",
      deps = [
          "@io_confluent_common_utils",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "io_confluent_common_utils",
      artifact = "io.confluent:common-utils:5.1.0",
      artifact_sha256 = "c4abd318c14f9343cedb5d85a55068e65ef0325e36db7692d953f2120d16e0db",
      deps = [
          "@com_101tec_zkclient",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "io_confluent_kafka_avro_serializer",
      artifact = "io.confluent:kafka-avro-serializer:5.1.0",
      artifact_sha256 = "e15a46fc61c149dce376eb66ce336ec59248562ef1b18adb64a257b3e7aa8233",
      deps = [
          "@io_confluent_common_config",
          "@io_confluent_common_utils",
          "@io_confluent_kafka_schema_registry_client",
          "@org_apache_avro_avro"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "io_confluent_kafka_schema_registry",
      artifact = "io.confluent:kafka-schema-registry:5.1.0",
      artifact_sha256 = "282ff948949d937a8a688a148fa731974476e71197e1d3c85336e441084591d9",
      deps = [
          "@io_confluent_common_config",
          "@io_confluent_common_utils",
          "@io_confluent_kafka_schema_registry_client",
          "@io_confluent_rest_utils",
          "@org_apache_avro_avro",
          "@org_apache_kafka_kafka_2_11",
          "@org_apache_kafka_kafka_clients",
          "@org_glassfish_jersey_ext_jersey_bean_validation",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "io_confluent_kafka_schema_registry_client",
      artifact = "io.confluent:kafka-schema-registry-client:5.1.0",
      artifact_sha256 = "a33c5b7a7184fad430848ce33df58a6a62e8c4920f243c2d86ebca2516260223",
      deps = [
          "@com_fasterxml_jackson_core_jackson_databind",
          "@io_confluent_common_config",
          "@io_confluent_common_utils",
          "@org_apache_avro_avro",
          "@org_apache_kafka_kafka_clients"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "io_confluent_kafka_schema_registry_tests",
      artifact = "io.confluent:kafka-schema-registry:jar:tests:5.1.0",
      artifact_sha256 = "6f2524ab90f73b07422fc941866abf1d17e991b38cf0604eef44f3676e661dc4",
      deps = [
          "@io_confluent_common_config",
          "@io_confluent_common_utils",
          "@io_confluent_kafka_schema_registry_client",
          "@io_confluent_rest_utils",
          "@org_apache_avro_avro",
          "@org_apache_kafka_kafka_2_11",
          "@org_apache_kafka_kafka_clients",
          "@org_glassfish_jersey_ext_jersey_bean_validation",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "io_confluent_rest_utils",
      artifact = "io.confluent:rest-utils:5.1.0",
      artifact_sha256 = "5cd5774f5f7b915ba893b1724d1c6e86e4c1be9e6487265367231ed8709c9f79",
      deps = [
          "@com_fasterxml_jackson_core_jackson_annotations",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_fasterxml_jackson_jaxrs_jackson_jaxrs_base",
          "@com_fasterxml_jackson_jaxrs_jackson_jaxrs_json_provider",
          "@io_confluent_common_config",
          "@io_confluent_common_metrics",
          "@io_confluent_common_utils",
          "@javax_activation_activation",
          "@javax_xml_bind_jaxb_api",
          "@org_eclipse_jetty_jetty_jaas",
          "@org_eclipse_jetty_jetty_jmx",
          "@org_eclipse_jetty_jetty_server",
          "@org_eclipse_jetty_jetty_servlet",
          "@org_eclipse_jetty_jetty_servlets",
          "@org_eclipse_jetty_websocket_javax_websocket_server_impl",
          "@org_glassfish_jersey_containers_jersey_container_servlet",
          "@org_glassfish_jersey_ext_jersey_bean_validation",
          "@org_glassfish_jersey_inject_jersey_hk2"
      ],
  )
