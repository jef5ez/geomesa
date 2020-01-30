load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_hadoop_hadoop_annotations",
      artifact = "org.apache.hadoop:hadoop-annotations:2.6.4",
      artifact_sha256 = "61593f0262486ef5a90cca31ca0cccfd61f4a134c0f1a0f8a5609c9e8e385e63",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_auth",
      artifact = "org.apache.hadoop:hadoop-auth:2.5.1",
      deps = [
          "@commons_codec_commons_codec",
          "@org_apache_directory_server_apacheds_kerberos_codec",
          "@org_apache_httpcomponents_httpclient",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_client",
      artifact = "org.apache.hadoop:hadoop-client:2.6.4",
      artifact_sha256 = "f45599339242e4c0ae71715503fbc94a49d72c870e5c897707311fb009f12026",
      deps = [
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_hdfs",
          "@org_apache_hadoop_hadoop_mapreduce_client_app",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hadoop_hadoop_mapreduce_client_jobclient",
          "@org_apache_hadoop_hadoop_yarn_api"
      ],
    # EXCLUDES org.mortbay.jetty:jsp-2.1
    # EXCLUDES org.mortbay.jetty:jsp-api-2.1
    # EXCLUDES org.mortbay.jetty:jetty
    # EXCLUDES org.glassfish:javax.servlet
    # EXCLUDES hsqldb:hsqldb
    # EXCLUDES org.mortbay.jetty:jetty-util
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_common",
      artifact = "org.apache.hadoop:hadoop-common:2.6.4",
      artifact_sha256 = "044757d56dceba973fdb884273101d8811ec1db9239f273c5888397d661ba755",
      deps = [
          "@com_google_code_findbugs_jsr305",
          "@com_google_code_gson_gson",
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@com_jcraft_jsch",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_json",
          "@com_sun_jersey_jersey_server",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_configuration_commons_configuration",
          "@commons_el_commons_el",
          "@commons_httpclient_commons_httpclient",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@commons_net_commons_net",
          "@javax_servlet_servlet_api",
          "@log4j_log4j",
          "@net_java_dev_jets3t_jets3t",
          "@org_apache_avro_avro",
          "@org_apache_commons_commons_compress",
          "@org_apache_commons_commons_math3",
          "@org_apache_curator_curator_client",
          "@org_apache_curator_curator_recipes",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_auth",
          "@org_apache_zookeeper_zookeeper",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_htrace_htrace_core",
          "@org_mortbay_jetty_jetty",
          "@org_mortbay_jetty_jetty_util",
          "@org_slf4j_slf4j_api",
          "@tomcat_jasper_compiler",
          "@xmlenc_xmlenc"
      ],
      runtime_deps = [
          "@javax_servlet_jsp_jsp_api",
          "@org_slf4j_slf4j_log4j12",
          "@tomcat_jasper_runtime"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_common_tests",
      artifact = "org.apache.hadoop:hadoop-common:jar:tests:2.6.4",
      artifact_sha256 = "b9af53c8949aba2a404a30d8bb19ba58530ae58e018afb00b4d66345e8436385",
      deps = [
          "@com_google_code_findbugs_jsr305",
          "@com_google_code_gson_gson",
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@com_jcraft_jsch",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_json",
          "@com_sun_jersey_jersey_server",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_collections_commons_collections",
          "@commons_configuration_commons_configuration",
          "@commons_httpclient_commons_httpclient",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@commons_net_commons_net",
          "@javax_servlet_servlet_api",
          "@log4j_log4j",
          "@net_java_dev_jets3t_jets3t",
          "@org_apache_avro_avro",
          "@org_apache_commons_commons_compress",
          "@org_apache_commons_commons_math3",
          "@org_apache_curator_curator_client",
          "@org_apache_curator_curator_recipes",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_auth",
          "@org_apache_zookeeper_zookeeper",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_htrace_htrace_core",
          "@org_mortbay_jetty_jetty",
          "@org_mortbay_jetty_jetty_util",
          "@org_slf4j_slf4j_api",
          "@xmlenc_xmlenc"
      ],
      runtime_deps = [
          "@commons_el_commons_el",
          "@javax_servlet_jsp_jsp_api",
          "@org_slf4j_slf4j_log4j12",
          "@tomcat_jasper_compiler",
          "@tomcat_jasper_runtime"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_distcp",
      artifact = "org.apache.hadoop:hadoop-distcp:2.6.4",
      artifact_sha256 = "6baef44cedfd4a8c5501ade0ac4c205fd860513a1419e361f5d025ee943fcd9b",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_hdfs",
      artifact = "org.apache.hadoop:hadoop-hdfs:2.6.4",
      artifact_sha256 = "9130635a1d354337e336afee0098e50829f2876a0273be12196d78bd452fa108",
      deps = [
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_server",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_daemon_commons_daemon",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@io_netty_netty",
          "@javax_servlet_jsp_jsp_api",
          "@javax_servlet_servlet_api",
          "@log4j_log4j",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_htrace_htrace_core",
          "@org_mortbay_jetty_jetty",
          "@org_mortbay_jetty_jetty_util",
          "@tomcat_jasper_runtime",
          "@xerces_xercesImpl",
          "@xmlenc_xmlenc"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_hdfs_tests",
      artifact = "org.apache.hadoop:hadoop-hdfs:jar:tests:2.6.4",
      artifact_sha256 = "45b03047b39a3f6893c97c71af10c5896dd9ce3632c01de5e88bf3911e574d86",
      deps = [
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_server",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_daemon_commons_daemon",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@io_netty_netty",
          "@javax_servlet_jsp_jsp_api",
          "@javax_servlet_servlet_api",
          "@log4j_log4j",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_htrace_htrace_core",
          "@org_mortbay_jetty_jetty",
          "@org_mortbay_jetty_jetty_util",
          "@tomcat_jasper_runtime",
          "@xerces_xercesImpl",
          "@xmlenc_xmlenc"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_mapreduce_client_app",
      artifact = "org.apache.hadoop:hadoop-mapreduce-client-app:2.6.4",
      artifact_sha256 = "8c947143f382d0b59923f4bba32b51e80efdac7e49cd528a330aa827b3394e98",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_protobuf_protobuf_java",
          "@io_netty_netty",
          "@org_apache_avro_avro",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_mapreduce_client_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_shuffle",
          "@org_apache_hadoop_hadoop_yarn_server_web_proxy",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_mapreduce_client_common",
      artifact = "org.apache.hadoop:hadoop-mapreduce-client-common:2.6.4",
      artifact_sha256 = "a181598a744218e9a9a5b0f53929b1238c4058b24d419bf18fc2b0409aef7d41",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_protobuf_protobuf_java",
          "@io_netty_netty",
          "@org_apache_avro_avro",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hadoop_hadoop_yarn_client",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_hadoop_hadoop_yarn_server_common",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_mapreduce_client_core",
      artifact = "org.apache.hadoop:hadoop-mapreduce-client-core:2.6.4",
      artifact_sha256 = "631ced463f8cf6ce028293861a253ea991830d3bc1fd8d6a656235f8ac670684",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_protobuf_protobuf_java",
          "@io_netty_netty",
          "@org_apache_avro_avro",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_mapreduce_client_hs",
      artifact = "org.apache.hadoop:hadoop-mapreduce-client-hs:2.6.4",
      artifact_sha256 = "0a2e9ec6ec41c6c42e6f1781e5d02a98f8e4f5130c547c9ac283cc68a499469b",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_protobuf_protobuf_java",
          "@io_netty_netty",
          "@org_apache_avro_avro",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_hdfs",
          "@org_apache_hadoop_hadoop_mapreduce_client_app",
          "@org_apache_hadoop_hadoop_mapreduce_client_common",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_mapreduce_client_jobclient",
      artifact = "org.apache.hadoop:hadoop-mapreduce-client-jobclient:2.6.4",
      artifact_sha256 = "414aaf4661ab5e8d70fd0ce6fce40ccce42b5259aabdda9be09e935d18b288da",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_protobuf_protobuf_java",
          "@io_netty_netty",
          "@org_apache_avro_avro",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_mapreduce_client_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_shuffle",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_mapreduce_client_jobclient_tests",
      artifact = "org.apache.hadoop:hadoop-mapreduce-client-jobclient:jar:tests:2.6.4",
      artifact_sha256 = "e2f4e5597a1540a26f600983d48a9c8d0cb680fb08b1aec59e27e5f4c06d001f",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_protobuf_protobuf_java",
          "@io_netty_netty",
          "@org_apache_avro_avro",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_mapreduce_client_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_shuffle",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_mapreduce_client_shuffle",
      artifact = "org.apache.hadoop:hadoop-mapreduce-client-shuffle:2.6.4",
      artifact_sha256 = "62a4acab7d534a89e8e84c9e76952c49948abacbc4652797e497cb1671d77fb9",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_protobuf_protobuf_java",
          "@io_netty_netty",
          "@org_apache_avro_avro",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_mapreduce_client_common",
          "@org_apache_hadoop_hadoop_yarn_server_common",
          "@org_apache_hadoop_hadoop_yarn_server_nodemanager",
          "@org_fusesource_leveldbjni_leveldbjni_all",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_minicluster",
      artifact = "org.apache.hadoop:hadoop-minicluster:2.6.4",
      artifact_sha256 = "35ca4c39a37fcffed582f8a7f5608bdf0bd9a5e43ca65092d8eac5743df726ba",
      deps = [
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_common_tests",
          "@org_apache_hadoop_hadoop_hdfs",
          "@org_apache_hadoop_hadoop_hdfs_tests",
          "@org_apache_hadoop_hadoop_mapreduce_client_app",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hadoop_hadoop_mapreduce_client_hs",
          "@org_apache_hadoop_hadoop_mapreduce_client_jobclient",
          "@org_apache_hadoop_hadoop_mapreduce_client_jobclient_tests",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_server_tests_tests"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_minikdc",
      artifact = "org.apache.hadoop:hadoop-minikdc:2.3.0",
      artifact_sha256 = "b606147c6060cc90400973e58ab64ff2f1f9b4520980c83b18df37f72186e899",
      deps = [
          "@commons_io_commons_io",
          "@junit_junit",
          "@org_apache_directory_api_api_all",
          "@org_slf4j_slf4j_log4j12"
      ],
    # EXCLUDES bouncycastle:bcprov-jdk15
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_api",
      artifact = "org.apache.hadoop:hadoop-yarn-api:2.6.4",
      artifact_sha256 = "d31230bb77efcd53703cd136ab9a949ed97f40581b49d050b19fd27287bc7781",
      deps = [
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@org_apache_hadoop_hadoop_annotations"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_client",
      artifact = "org.apache.hadoop:hadoop-yarn-client:2.6.4",
      artifact_sha256 = "9ab397cda0688f444e54a8218e4ff32bb3fee58c1ba5a120a4e3bbb47b3b2fb4",
      deps = [
          "@com_google_guava_guava",
          "@commons_cli_commons_cli",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@log4j_log4j",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_common"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_common",
      artifact = "org.apache.hadoop:hadoop-yarn-common:2.6.4",
      artifact_sha256 = "166809688e7c93bc24fac03ac19a3725ffd88fe871910486eddbd909a3cf6efa",
      deps = [
          "@com_google_guava_guava",
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_inject_guice",
          "@com_google_protobuf_protobuf_java",
          "@com_sun_jersey_contribs_jersey_guice",
          "@com_sun_jersey_jersey_client",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_json",
          "@com_sun_jersey_jersey_server",
          "@commons_cli_commons_cli",
          "@commons_codec_commons_codec",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@javax_servlet_servlet_api",
          "@javax_xml_bind_jaxb_api",
          "@log4j_log4j",
          "@org_apache_commons_commons_compress",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_jaxrs",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_codehaus_jackson_jackson_xc",
          "@org_mortbay_jetty_jetty_util",
          "@org_slf4j_slf4j_api"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_server_applicationhistoryservice",
      artifact = "org.apache.hadoop:hadoop-yarn-server-applicationhistoryservice:2.6.4",
      artifact_sha256 = "6e5dc578d548d2b386b4dfd747e521b39fe8e3e11cfb82fe1cd6b210b4749cc2",
      deps = [
          "@com_google_guava_guava",
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_inject_guice",
          "@com_google_protobuf_protobuf_java",
          "@com_sun_jersey_contribs_jersey_guice",
          "@com_sun_jersey_jersey_client",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_json",
          "@commons_collections_commons_collections",
          "@commons_logging_commons_logging",
          "@javax_servlet_servlet_api",
          "@javax_xml_bind_jaxb_api",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_hadoop_hadoop_yarn_server_common",
          "@org_codehaus_jettison_jettison",
          "@org_fusesource_leveldbjni_leveldbjni_all"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_server_common",
      artifact = "org.apache.hadoop:hadoop-yarn-server-common:2.6.4",
      artifact_sha256 = "8a5bc90a701d34ff8896a2f761ab9e2cf760a97f701f04a6250b414a0f6d8bd7",
      deps = [
          "@com_google_guava_guava",
          "@com_google_protobuf_protobuf_java",
          "@commons_logging_commons_logging",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_zookeeper_zookeeper",
          "@org_fusesource_leveldbjni_leveldbjni_all"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_server_nodemanager",
      artifact = "org.apache.hadoop:hadoop-yarn-server-nodemanager:2.6.4",
      artifact_sha256 = "63d46cded980cf0085ee0577acfe1e683194da81edf625c846c838ff0137c695",
      deps = [
          "@com_google_guava_guava",
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_inject_guice",
          "@com_google_protobuf_protobuf_java",
          "@com_sun_jersey_contribs_jersey_guice",
          "@com_sun_jersey_jersey_client",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_json",
          "@commons_codec_commons_codec",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@javax_servlet_servlet_api",
          "@javax_xml_bind_jaxb_api",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_hadoop_hadoop_yarn_server_common",
          "@org_codehaus_jettison_jettison",
          "@org_fusesource_leveldbjni_leveldbjni_all",
          "@org_mortbay_jetty_jetty_util",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_server_resourcemanager",
      artifact = "org.apache.hadoop:hadoop-yarn-server-resourcemanager:2.6.4",
      artifact_sha256 = "0740ee61d3023fc2801792944fa5d79af6dfd65e325ef82a9147a87915b5a171",
      deps = [
          "@com_google_guava_guava",
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_inject_guice",
          "@com_google_protobuf_protobuf_java",
          "@com_sun_jersey_contribs_jersey_guice",
          "@com_sun_jersey_jersey_client",
          "@com_sun_jersey_jersey_core",
          "@com_sun_jersey_jersey_json",
          "@commons_io_commons_io",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging",
          "@javax_servlet_servlet_api",
          "@javax_xml_bind_jaxb_api",
          "@log4j_log4j",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_hadoop_hadoop_yarn_server_applicationhistoryservice",
          "@org_apache_hadoop_hadoop_yarn_server_common",
          "@org_apache_hadoop_hadoop_yarn_server_web_proxy",
          "@org_apache_zookeeper_zookeeper",
          "@org_codehaus_jettison_jettison",
          "@org_mortbay_jetty_jetty_util",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_server_tests_tests",
      artifact = "org.apache.hadoop:hadoop-yarn-server-tests:jar:tests:2.6.4",
      artifact_sha256 = "5711900dfa26dc1553ef84a8fdb08b08aa5eed750c6a59e4a34ce69e7f539918",
      deps = [
          "@com_google_guava_guava",
          "@commons_logging_commons_logging",
          "@org_apache_hadoop_hadoop_annotations",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_hadoop_hadoop_yarn_server_common",
          "@org_apache_hadoop_hadoop_yarn_server_nodemanager",
          "@org_apache_hadoop_hadoop_yarn_server_resourcemanager"
      ],
  )


  import_external(
      name = "org_apache_hadoop_hadoop_yarn_server_web_proxy",
      artifact = "org.apache.hadoop:hadoop-yarn-server-web-proxy:2.6.5",
      artifact_sha256 = "8b7ab54c16d08b510ca99cb252ff8eb6b4f3e893515f847991654abd0c966435",
      deps = [
          "@com_google_guava_guava",
          "@commons_httpclient_commons_httpclient",
          "@org_apache_hadoop_hadoop_yarn_api",
          "@org_apache_hadoop_hadoop_yarn_common",
          "@org_apache_hadoop_hadoop_yarn_server_common",
          "@org_mortbay_jetty_jetty"
      ],
    # EXCLUDES org.jboss.netty:netty
    # EXCLUDES commons-logging:commons-logging
    # EXCLUDES com.sun.jersey.contribs:*
    # EXCLUDES org.ow2.asm:asm
    # EXCLUDES javax.servlet:servlet-api
    # EXCLUDES asm:asm
    # EXCLUDES com.sun.jersey.jersey-test-framework:*
    # EXCLUDES com.sun.jersey:*
  )
