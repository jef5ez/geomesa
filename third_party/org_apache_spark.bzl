load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_spark_spark_catalyst_2_11",
      artifact = "org.apache.spark:spark-catalyst_2.11:2.3.1",
      artifact_sha256 = "573ae09839a69c10df800515f8b98d2c017b20ca92853a018bdc4ebce19cd58d",
      deps = [
          "@commons_codec_commons_codec",
          "@org_antlr_antlr4_runtime",
          "@org_apache_spark_spark_core_2_11",
          "@org_apache_spark_spark_sketch_2_11",
          "@org_apache_spark_spark_tags_2_11",
          "@org_apache_spark_spark_unsafe_2_11",
          "@org_codehaus_janino_commons_compiler",
          "@org_codehaus_janino_janino",
          "@org_scala_lang_modules_scala_parser_combinators_2_11",
          "@org_scala_lang_scala_reflect",
          "@org_spark_project_spark_unused"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_spark_spark_core_2_11",
      artifact = "org.apache.spark:spark-core_2.11:2.3.1",
      artifact_sha256 = "38e45ec03f3f919189a840b841aba8ab77ef06f7b1c13b1f27822ff470363dfb",
      deps = [
          "@com_clearspring_analytics_stream",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_fasterxml_jackson_module_jackson_module_scala_2_11",
          "@com_github_luben_zstd_jni",
          "@com_google_code_findbugs_jsr305",
          "@com_ning_compress_lzf",
          "@com_twitter_chill_2_11",
          "@com_twitter_chill_java",
          "@commons_net_commons_net",
          "@io_dropwizard_metrics_metrics_core",
          "@io_dropwizard_metrics_metrics_graphite",
          "@io_dropwizard_metrics_metrics_json",
          "@io_dropwizard_metrics_metrics_jvm",
          "@io_netty_netty",
          "@io_netty_netty_all",
          "@javax_servlet_javax_servlet_api//:linkable",
          "@log4j_log4j",
          "@net_java_dev_jets3t_jets3t",
          "@net_razorvine_pyrolite",
          "@net_sf_py4j_py4j",
          "@org_apache_avro_avro",
          "@org_apache_avro_avro_mapred_hadoop2",
          "@org_apache_commons_commons_crypto",
          "@org_apache_commons_commons_lang3",
          "@org_apache_commons_commons_math3",
          "@org_apache_curator_curator_recipes",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_ivy_ivy",
          "@org_apache_spark_spark_kvstore_2_11",
          "@org_apache_spark_spark_launcher_2_11",
          "@org_apache_spark_spark_network_common_2_11",
          "@org_apache_spark_spark_network_shuffle_2_11",
          "@org_apache_spark_spark_tags_2_11",
          "@org_apache_spark_spark_unsafe_2_11",
          "@org_apache_xbean_xbean_asm5_shaded",
          "@org_glassfish_jersey_containers_jersey_container_servlet",
          "@org_glassfish_jersey_containers_jersey_container_servlet_core",
          "@org_glassfish_jersey_core_jersey_client",
          "@org_glassfish_jersey_core_jersey_common",
          "@org_glassfish_jersey_core_jersey_server",
          "@org_json4s_json4s_jackson_2_11",
          "@org_lz4_lz4_java",
          "@org_roaringbitmap_RoaringBitmap",
          "@org_scala_lang_scala_library",
          "@org_slf4j_jcl_over_slf4j",
          "@org_slf4j_jul_to_slf4j",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12",
          "@org_spark_project_spark_unused",
          "@org_xerial_snappy_snappy_java",
          "@oro_oro"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_spark_spark_kvstore_2_11",
      artifact = "org.apache.spark:spark-kvstore_2.11:2.3.1",
      artifact_sha256 = "430869bcd3c484758195193de584b4859d160db3687aa4c4105da5227a641108",
      deps = [
          "@com_fasterxml_jackson_core_jackson_annotations",
          "@com_fasterxml_jackson_core_jackson_core",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@org_apache_spark_spark_tags_2_11",
          "@org_fusesource_leveldbjni_leveldbjni_all",
          "@org_spark_project_spark_unused"
      ],
  )


  import_external(
      name = "org_apache_spark_spark_launcher_2_11",
      artifact = "org.apache.spark:spark-launcher_2.11:2.3.1",
      artifact_sha256 = "aeb182bf38e068fd35c96acc9c18f0e000e9e08e90e3ab3f6874ebaa883934b0",
      deps = [
          "@org_apache_spark_spark_tags_2_11",
          "@org_spark_project_spark_unused"
      ],
  )


  import_external(
      name = "org_apache_spark_spark_network_common_2_11",
      artifact = "org.apache.spark:spark-network-common_2.11:2.3.1",
      artifact_sha256 = "fe26b08c8cc7f106a0971fff5d343a3caf1a324bd7f255b471a572e5bbc935ff",
      deps = [
          "@com_fasterxml_jackson_core_jackson_annotations",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_google_code_findbugs_jsr305",
          "@io_dropwizard_metrics_metrics_core",
          "@io_netty_netty_all",
          "@org_apache_commons_commons_crypto",
          "@org_apache_commons_commons_lang3",
          "@org_fusesource_leveldbjni_leveldbjni_all",
          "@org_spark_project_spark_unused"
      ],
  )


  import_external(
      name = "org_apache_spark_spark_network_shuffle_2_11",
      artifact = "org.apache.spark:spark-network-shuffle_2.11:2.3.1",
      artifact_sha256 = "1178e9e2dc3972c9ade21b3fd4489a6c5db17261ed206448330ca1aa1af2bfb2",
      deps = [
          "@io_dropwizard_metrics_metrics_core",
          "@org_apache_spark_spark_network_common_2_11",
          "@org_spark_project_spark_unused"
      ],
  )


  import_external(
      name = "org_apache_spark_spark_sketch_2_11",
      artifact = "org.apache.spark:spark-sketch_2.11:2.3.1",
      artifact_sha256 = "9aa9da0b63cc531fecb892cb2e117648c4c7f564fd155add0590491aaf4d5c73",
      deps = [
          "@org_apache_spark_spark_tags_2_11",
          "@org_spark_project_spark_unused"
      ],
  )


  import_external(
      name = "org_apache_spark_spark_sql_2_11",
      artifact = "org.apache.spark:spark-sql_2.11:2.3.1",
      artifact_sha256 = "f50dd1d9dee8e5c59058f8743481faff6b0d8278c0b88578a77629b93b290e18",
      deps = [
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_univocity_univocity_parsers",
          "@org_apache_arrow_arrow_vector",
          "@org_apache_orc_orc_core_nohive",
          "@org_apache_orc_orc_mapreduce_nohive",
          "@org_apache_parquet_parquet_column",
          "@org_apache_parquet_parquet_hadoop",
          "@org_apache_spark_spark_catalyst_2_11",
          "@org_apache_spark_spark_core_2_11",
          "@org_apache_spark_spark_sketch_2_11",
          "@org_apache_spark_spark_tags_2_11",
          "@org_apache_xbean_xbean_asm5_shaded",
          "@org_spark_project_spark_unused"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_spark_spark_tags_2_11",
      artifact = "org.apache.spark:spark-tags_2.11:2.3.1",
      artifact_sha256 = "88e20eac9881be0e698642373f5fdd74bdaf91beffdc21fec879d61839011d6f",
      deps = [
          "@org_scala_lang_scala_library",
          "@org_spark_project_spark_unused"
      ],
  )


  import_external(
      name = "org_apache_spark_spark_unsafe_2_11",
      artifact = "org.apache.spark:spark-unsafe_2.11:2.3.1",
      artifact_sha256 = "c5b1edd73a1def80924b6ec4e264bb4852569f1908f8b5aeba12ab3b4a2b33fc",
      deps = [
          "@com_google_code_findbugs_jsr305",
          "@com_twitter_chill_2_11",
          "@org_apache_spark_spark_tags_2_11",
          "@org_spark_project_spark_unused"
      ],
  )


  import_external(
      name = "org_apache_spark_spark_yarn_2_11",
      artifact = "org.apache.spark:spark-yarn_2.11:2.3.1",
      artifact_sha256 = "e217c29cf3e54216bca151734d4d94e98ccc3bb5a79b00719a27652b27f9e903",
      deps = [
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_client",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_hadoop_hadoop_yarn_server_web_proxy",
          "@org_apache_spark_spark_core_2_11",
          "@org_spark_project_spark_unused"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
