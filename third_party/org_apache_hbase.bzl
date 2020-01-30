load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_hbase_hbase_annotations",
      artifact = "org.apache.hbase:hbase-annotations:1.3.1",
      artifact_sha256 = "58c01b2f51f84ad25b0bdd6f241291f2971c739555a8a471ecca1bb25ea6f842",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@junit_junit",
          "@log4j_log4j"
      ],
    # EXCLUDES jdk.tools:jdk.tools
  )


  import_external(
      name = "org_apache_hbase_hbase_annotations_tests",
      artifact = "org.apache.hbase:hbase-annotations:jar:tests:1.3.1",
      artifact_sha256 = "a6ccbbcdb4ac5f9ae2ff0b507dd8f3c3cbc3ea21520f485b0d5ba4514bd1c660",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@junit_junit",
          "@log4j_log4j"
      ],
    # EXCLUDES jdk.tools:jdk.tools
  )


  import_external(
      name = "org_apache_hbase_hbase_client",
      artifact = "org.apache.hbase:hbase-client:1.3.1",
      artifact_sha256 = "f8a44d534b56360775cf725472088c6cb37a6176d19b3e33e6a9a8afe74cad01",
      deps = [
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@com_yammer_metrics_metrics_core",
          "@commons_codec_commons_codec",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@io_netty_netty_all",
          "@junit_junit",
          "@org_apache_hadoop_hadoop_auth",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hbase_hbase_annotations",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_protocol",
          "@org_apache_htrace_htrace_core",
          "@org_apache_zookeeper_zookeeper",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_jruby_jcodings_jcodings",
          "@org_jruby_joni_joni"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hbase_hbase_common",
      artifact = "org.apache.hbase:hbase-common:1.3.1",
      artifact_sha256 = "5b3c132895a1c5153aa64221ab7a1ac14bf1874b2040e59ac1ccb80db5ce8134",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hbase_hbase_annotations",
          "@org_apache_hbase_hbase_protocol",
          "@org_apache_htrace_htrace_core",
          "@org_mortbay_jetty_jetty_util"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hbase_hbase_common_tests",
      artifact = "org.apache.hbase:hbase-common:jar:tests:1.3.1",
      artifact_sha256 = "44ec3a236cd59e74af708d26fc124264ca0ceee67af533dcd92c68cb25dd8fdc",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hbase_hbase_annotations",
          "@org_apache_hbase_hbase_protocol",
          "@org_apache_htrace_htrace_core",
          "@org_mortbay_jetty_jetty_util"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hbase_hbase_hadoop2_compat",
      artifact = "org.apache.hbase:hbase-hadoop2-compat:1.3.1",
      artifact_sha256 = "9f64470a3c81822a4ce2bbcdbd145923efe9c03d4e4e6c98222ec27f9e5bd8be",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@com_google_guava_guava",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_commons_commons_math",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hbase_hbase_annotations",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_hadoop_compat"
      ],
  )


  import_external(
      name = "org_apache_hbase_hbase_hadoop2_compat_tests",
      artifact = "org.apache.hbase:hbase-hadoop2-compat:jar:tests:1.3.1",
      artifact_sha256 = "2e58bd97a21be2224195807ca9b73592f4263913277816fb467305f5167b088c",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@com_google_guava_guava",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_commons_commons_math",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hbase_hbase_annotations",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_hadoop_compat"
      ],
  )


  import_external(
      name = "org_apache_hbase_hbase_hadoop_compat",
      artifact = "org.apache.hbase:hbase-hadoop-compat:1.3.1",
      artifact_sha256 = "446437fd217763deb0561a3253009967f8b4da29f28c65138fe22882618d4181",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_commons_commons_math"
      ],
  )


  import_external(
      name = "org_apache_hbase_hbase_hadoop_compat_tests",
      artifact = "org.apache.hbase:hbase-hadoop-compat:jar:tests:1.3.1",
      artifact_sha256 = "1295c586e2b7c65750588f00c1a284f3ee888ba532974dfe3913b8c6080428aa",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_commons_commons_math"
      ],
  )


  import_external(
      name = "org_apache_hbase_hbase_prefix_tree",
      artifact = "org.apache.hbase:hbase-prefix-tree:1.3.1",
      artifact_sha256 = "2c2cbfa5439b2dea69ecb6e879d95a937cc8dbfc9beb669f1af8bb828cef27bc",
      runtime_deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@com_google_guava_guava",
          "@commons_logging_commons_logging",
          "@io_netty_netty_all",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_common_tests",
          "@org_apache_hbase_hbase_hadoop2_compat",
          "@org_apache_hbase_hbase_hadoop_compat"
      ],
  )


  import_external(
      name = "org_apache_hbase_hbase_procedure",
      artifact = "org.apache.hbase:hbase-procedure:1.3.1",
      artifact_sha256 = "cc3102d533d86f15e5cd776768f91fd88c0a2af26f7c0496a29ccea1e9db649f",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@com_google_guava_guava",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_common_tests",
          "@org_apache_hbase_hbase_protocol"
      ],
  )


  import_external(
      name = "org_apache_hbase_hbase_protocol",
      artifact = "org.apache.hbase:hbase-protocol:1.3.1",
      artifact_sha256 = "b7be48f19e198ae244be396afd94d778b9d8a1438acd4fb11c5754878cf488ae",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@com_google_protobuf_protobuf_java",
          "@commons_logging_commons_logging",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_hbase_hbase_annotations"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hbase_hbase_server",
      artifact = "org.apache.hbase:hbase-server:1.3.1",
      artifact_sha256 = "a27cbb97c6759acb0c35ec5063f60af4ea7244d666d33b9146ba35c23f994802",
      deps = [
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@com_lmax_disruptor",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_server",
          "@com_yammer_metrics_metrics_core",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_httpclient_commons_httpclient",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@io_netty_netty_all",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_commons_commons_math",
          "@org_apache_hadoop_hadoop_auth",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_hdfs",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hbase_hbase_client",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_hadoop2_compat",
          "@org_apache_hbase_hbase_hadoop_compat",
          "@org_apache_hbase_hbase_procedure",
          "@org_apache_hbase_hbase_protocol",
          "@org_apache_htrace_htrace_core",
          "@org_apache_zookeeper_zookeeper",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_jaxrs",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_jamon_jamon_runtime"
      ],
      runtime_deps = [
          "@org_apache_hbase_hbase_prefix_tree"
      ],
    # EXCLUDES tomcat:jasper-compiler
    # EXCLUDES org.mortbay.jetty:*
    # EXCLUDES tomcat:jasper-runtime
    # EXCLUDES javax.servlet:servlet-api
    # EXCLUDES tomcat:*
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hbase_hbase_server_tests",
      artifact = "org.apache.hbase:hbase-server:jar:tests:1.3.1",
      artifact_sha256 = "afdaa36b94e2761b967a2667c99e585eb470a5e784f90ef36f9ce1e01c894a36",
      deps = [
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@com_lmax_disruptor",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_server",
          "@com_yammer_metrics_metrics_core",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_httpclient_commons_httpclient",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@io_netty_netty_all",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_commons_commons_math",
          "@org_apache_hadoop_hadoop_auth",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_hdfs",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hbase_hbase_client",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_hadoop2_compat",
          "@org_apache_hbase_hbase_hadoop_compat",
          "@org_apache_hbase_hbase_procedure",
          "@org_apache_hbase_hbase_protocol",
          "@org_apache_htrace_htrace_core",
          "@org_apache_zookeeper_zookeeper",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_jaxrs",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_jamon_jamon_runtime",
          "@org_mortbay_jetty_jetty",
          "@org_mortbay_jetty_jetty_sslengine",
          "@org_mortbay_jetty_jetty_util",
          "@org_mortbay_jetty_jsp_2_1",
          "@org_mortbay_jetty_jsp_api_2_1",
          "@org_mortbay_jetty_servlet_api_2_5",
          "@tomcat_jasper_compiler"
      ],
      runtime_deps = [
          "@org_apache_hbase_hbase_prefix_tree",
          "@tomcat_jasper_runtime"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hbase_hbase_testing_util",
      artifact = "org.apache.hbase:hbase-testing-util:1.3.1",
      artifact_sha256 = "626c58431abe893d4e542009adf6200f8932f6679d13c509dfee78d6a505a5e2",
      deps = [
          "@com_github_stephenc_findbugs_findbugs_annotations",
          "@junit_junit",
          "@log4j_log4j",
          "@org_apache_hadoop_hadoop_auth",
          "@org_apache_hadoop_hadoop_client",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_hdfs",
          "@org_apache_hadoop_hadoop_hdfs_tests",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hadoop_hadoop_mapreduce_client_jobclient",
          "@org_apache_hadoop_hadoop_minicluster",
          "@org_apache_hbase_hbase_annotations_tests",
          "@org_apache_hbase_hbase_client",
          "@org_apache_hbase_hbase_common",
          "@org_apache_hbase_hbase_common_tests",
          "@org_apache_hbase_hbase_hadoop2_compat",
          "@org_apache_hbase_hbase_hadoop2_compat_tests",
          "@org_apache_hbase_hbase_hadoop_compat",
          "@org_apache_hbase_hbase_hadoop_compat_tests",
          "@org_apache_hbase_hbase_protocol",
          "@org_apache_hbase_hbase_server",
          "@org_apache_hbase_hbase_server_tests",
          "@org_slf4j_slf4j_log4j12"
      ],
  )
