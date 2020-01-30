load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_cassandra_cassandra_all",
      artifact = "org.apache.cassandra:cassandra-all:3.0.0",
      artifact_sha256 = "32fce7cc0f24aa144086dd431b538b6abcfb106de470e085602f8d044ad53c94",
      deps = [
          "@com_addthis_metrics_reporter_config3",
          "@com_boundary_high_scale_lib",
          "@com_clearspring_analytics_stream",
          "@com_github_jbellis_jamm",
          "@com_google_guava_guava",
          "@com_googlecode_concurrentlinkedhashmap_concurrentlinkedhashmap_lru",
          "@com_googlecode_json_simple_json_simple",
          "@com_ning_compress_lzf",
          "@com_thinkaurelius_thrift_thrift_server",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@io_dropwizard_metrics_metrics_core",
          "@io_netty_netty_all",
          "@joda_time_joda_time",
          "@net_java_dev_jna_jna",
          "@net_jpountz_lz4_lz4",
          "@org_antlr_antlr",
          "@org_antlr_antlr_runtime",
          "@org_apache_cassandra_cassandra_thrift",
          "@org_apache_commons_commons_lang3",
          "@org_apache_commons_commons_math3",
          "@org_apache_thrift_libthrift",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_eclipse_jdt_core_compiler_ecj",
          "@org_fusesource_sigar",
          "@org_jgrapht_jgrapht_core",
          "@org_mindrot_jbcrypt",
          "@org_slf4j_jcl_over_slf4j",
          "@org_slf4j_slf4j_api",
          "@org_xerial_snappy_snappy_java",
          "@org_yaml_snakeyaml"
      ],
    # EXCLUDES ch.qos.logback:logback-core
    # EXCLUDES org.slf4j:log4j-over-slf4j
    # EXCLUDES ch.qos.logback:logback-classic
  )


  import_external(
      name = "org_apache_cassandra_cassandra_thrift",
      artifact = "org.apache.cassandra:cassandra-thrift:3.0.0",
      artifact_sha256 = "afd2179a8830a16a0e1e5e9135434287810a4e0630d882bb40fa351e50beec8f",
      deps = [
          "@org_apache_commons_commons_lang3",
          "@org_apache_thrift_libthrift",
          "@org_slf4j_jcl_over_slf4j",
          "@org_slf4j_slf4j_api"
      ],
  )
