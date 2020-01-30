load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_orc_orc_core_nohive",
      artifact = "org.apache.orc:orc-core:jar:nohive:1.5.4",
      artifact_sha256 = "2e3eb0110f00a8a681099605edd510a96b64ffb3f53b18d038ad37536b127081",
      deps = [
          "@com_google_protobuf_protobuf_java",
          "@commons_lang_commons_lang",
          "@io_airlift_aircompressor",
          "@javax_xml_bind_jaxb_api",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_hdfs",
          "@org_apache_hive_hive_storage_api",
          "@org_apache_orc_orc_shims",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.openjdk.jol:jol-core
  )


  import_external(
      name = "org_apache_orc_orc_mapreduce_nohive",
      artifact = "org.apache.orc:orc-mapreduce:jar:nohive:1.5.4",
      artifact_sha256 = "025eceb5c05da169a99b678958c6785a3b7d216226a2270b86068a6f0adce83f",
      deps = [
          "@com_esotericsoftware_kryo_shaded",
          "@com_google_guava_guava",
          "@commons_codec_commons_codec",
          "@commons_lang_commons_lang",
          "@org_apache_hadoop_hadoop_common",
          "@org_apache_hadoop_hadoop_mapreduce_client_core",
          "@org_apache_hive_hive_storage_api"
      ],
    # EXCLUDES org.apache.orc:orc-core
  )


  import_external(
      name = "org_apache_orc_orc_shims",
      artifact = "org.apache.orc:orc-shims:1.5.4",
      artifact_sha256 = "e08ddfde92a8928f2dae1d54fe9cbd719551fef8eab4ac025aa8a87aaaacd72c",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.apache.hadoop:hadoop-common
    # EXCLUDES org.apache.hadoop:hadoop-hdfs
  )
