load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_accumulo_accumulo_core",
      artifact = "org.apache.accumulo:accumulo-core:1.8.1",
      artifact_sha256 = "1f2d19f5e8b7c708b3b138e3c4023bc898ba1e30e769d6f182adfcc4b8d5149b",
      deps = [
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_configuration_commons_configuration",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@jline_jline",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_start",
          "@org_apache_commons_commons_math3",
          "@org_apache_commons_commons_vfs2",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_htrace_htrace_core",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES javax.servlet:servlet-api
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_accumulo_accumulo_examples_simple",
      artifact = "org.apache.accumulo:accumulo-examples-simple:1.8.1",
      artifact_sha256 = "129e8a64a4037aa99fee1af78937a425d4de1fb99072c42fcdfe8a7d5f0f4936",
      deps = [
          "@com_beust_jcommander",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_configuration_commons_configuration",
          "@jline_jline",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_shell",
          "@org_apache_accumulo_accumulo_tracer",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_htrace_htrace_core"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_fate",
      artifact = "org.apache.accumulo:accumulo-fate:1.8.1",
      artifact_sha256 = "ef68eb05ea54b0029194cce4310000d2f7b0488f13d987d909c858ceb16fba3f",
      deps = [
          "@com_google_guava_guava",
          "@commons_lang_commons_lang",
          "@log4j_log4j",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_gc",
      artifact = "org.apache.accumulo:accumulo-gc:1.8.1",
      artifact_sha256 = "db09380c8fbf96ca51c7301a3f1dda190d909de1f15b17d2e2a2446a2af008c4",
      deps = [
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_master",
      artifact = "org.apache.accumulo:accumulo-master:1.8.1",
      artifact_sha256 = "206f0fe2272f06905bcecaea8d59be21b01fc9c6bda842c342e9d51835fcb81c",
      deps = [
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@commons_codec_commons_codec",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_htrace_htrace_core",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_minicluster",
      artifact = "org.apache.accumulo:accumulo-minicluster:1.8.1",
      artifact_sha256 = "e137665ddeb1139e6016122ea19e6a23a59adc8e568ae8cccf88e8e0ba9c74d7",
      deps = [
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@commons_configuration_commons_configuration",
          "@commons_io_commons_io",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_gc",
          "@org_apache_accumulo_accumulo_master",
          "@org_apache_accumulo_accumulo_monitor",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_accumulo_accumulo_start",
          "@org_apache_accumulo_accumulo_tracer",
          "@org_apache_accumulo_accumulo_tserver",
          "@org_apache_commons_commons_vfs2",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_zookeeper_zookeeper"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_monitor",
      artifact = "org.apache.accumulo:accumulo-monitor:1.8.1",
      artifact_sha256 = "402950d8b585766d309614b8ac1a3993897ad2b684c36db43eecc5f1b71aaf2b",
      deps = [
          "@com_google_code_gson_gson",
          "@com_google_guava_guava",
          "@commons_codec_commons_codec",
          "@javax_servlet_javax_servlet_api//:linkable",
          "@jline_jline",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_accumulo_accumulo_shell",
          "@org_apache_accumulo_accumulo_tracer",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_eclipse_jetty_jetty_http",
          "@org_eclipse_jetty_jetty_io",
          "@org_eclipse_jetty_jetty_security",
          "@org_eclipse_jetty_jetty_server",
          "@org_eclipse_jetty_jetty_servlet",
          "@org_eclipse_jetty_jetty_util",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_proxy",
      artifact = "org.apache.accumulo:accumulo-proxy:1.8.1",
      artifact_sha256 = "13f8acc528565dc307ac0aff9ff978c19c1e8d71daa6a318d9139120574620e4",
      deps = [
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@commons_io_commons_io",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_minicluster",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_thrift_libthrift",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_server_base",
      artifact = "org.apache.accumulo:accumulo-server-base:1.8.1",
      artifact_sha256 = "67fd0b632f320d15f2e325831f34919fffb3c6e5e8ad156ded23376d5068d752",
      deps = [
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_configuration_commons_configuration",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@jline_jline",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_start",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_htrace_htrace_core",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_shell",
      artifact = "org.apache.accumulo:accumulo-shell:1.8.1",
      artifact_sha256 = "7336d0204a3f54cae4ca89672c8bc58fa4a03a3a9987ad6a3f376f44683d083c",
      deps = [
          "@com_beust_jcommander",
          "@com_google_code_gson_gson",
          "@com_google_guava_guava",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_configuration_commons_configuration",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@jline_jline",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_start",
          "@org_apache_accumulo_accumulo_tracer",
          "@org_apache_commons_commons_vfs2",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_thrift_libthrift"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_start",
      artifact = "org.apache.accumulo:accumulo-start:1.8.1",
      artifact_sha256 = "bd3001c9bec63c4b1988dcfa9808db273c4ac45f7e5f3fd4dc2cd61d4bfc2b44",
      deps = [
          "@commons_io_commons_io",
          "@commons_logging_commons_logging",
          "@log4j_log4j",
          "@org_apache_commons_commons_vfs2",
          "@org_apache_hadoop_hadoop_client"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_accumulo_accumulo_test",
      artifact = "org.apache.accumulo:accumulo-test:1.8.1",
      artifact_sha256 = "ca361923c3a573d7daf2b334a4d36f70f738ae4aa8a9734c7e8ff9e09e838d01",
      deps = [
          "@//third_party/org/apache/accumulo:accumulo_native",
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_configuration_commons_configuration",
          "@commons_httpclient_commons_httpclient",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@jline_jline",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_examples_simple",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_gc",
          "@org_apache_accumulo_accumulo_master",
          "@org_apache_accumulo_accumulo_minicluster",
          "@org_apache_accumulo_accumulo_monitor",
          "@org_apache_accumulo_accumulo_proxy",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_accumulo_accumulo_start",
          "@org_apache_accumulo_accumulo_trace",
          "@org_apache_accumulo_accumulo_tracer",
          "@org_apache_accumulo_accumulo_tserver",
          "@org_apache_commons_commons_lang3",
          "@org_apache_commons_commons_math3",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_hadoop_hadoop_distcp",
          "@org_apache_hadoop_hadoop_minicluster",
          "@org_apache_hadoop_hadoop_minikdc",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_bouncycastle_bcpkix_jdk15on",
          "@org_bouncycastle_bcprov_jdk15on",
          "@org_easymock_easymock",
          "@org_eclipse_jetty_jetty_server",
          "@org_slf4j_slf4j_log4j12"
      ],
    # EXCLUDES org.apache.directory.server:*
  )


  import_external(
      name = "org_apache_accumulo_accumulo_trace",
      artifact = "org.apache.accumulo:accumulo-trace:1.8.1",
      artifact_sha256 = "aa09d0dc33c497e230106cd2e3bfd2bf0207e7d451668fc69397b01e90ae2efc",
      deps = [
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_htrace_htrace_core"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_tracer",
      artifact = "org.apache.accumulo:accumulo-tracer:1.8.1",
      artifact_sha256 = "96df9da68561ae08dc316875be8d1420e6de0832674fc97eda2f95d2b5a7d183",
      deps = [
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_accumulo_accumulo_start",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_htrace_htrace_core",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_accumulo_accumulo_tserver",
      artifact = "org.apache.accumulo:accumulo-tserver:1.8.1",
      artifact_sha256 = "4e4087bff8fc5372645ab849703b40b673229bf7b7e64722d8cf5a494334fa76",
      deps = [
          "@com_beust_jcommander",
          "@com_google_guava_guava",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@log4j_log4j",
          "@org_apache_accumulo_accumulo_core",
          "@org_apache_accumulo_accumulo_fate",
          "@org_apache_accumulo_accumulo_server_base",
          "@org_apache_accumulo_accumulo_start",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_htrace_htrace_core",
          "@org_apache_thrift_libthrift",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )
