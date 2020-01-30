load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_avro_avro",
      artifact = "org.apache.avro:avro:1.8.2",
      artifact_sha256 = "f754a0830ce67a5a9fa67a54ec15d103ef15e1c850d7b26faf7b647eeddc82d3",
      deps = [
          "@com_thoughtworks_paranamer_paranamer",
          "@org_apache_commons_commons_compress",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_slf4j_slf4j_api",
          "@org_tukaani_xz"
      ],
    # EXCLUDES org.xerial.snappy:snappy-java
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_avro_avro_ipc",
      artifact = "org.apache.avro:avro-ipc:1.7.7",
      artifact_sha256 = "55d369313d9947a8f3250837526bdb90b7608101b4acc881c32f35fc16cc21e2",
      deps = [
          "@org_apache_avro_avro",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_avro_avro_ipc_tests",
      artifact = "org.apache.avro:avro-ipc:jar:tests:1.7.7",
      artifact_sha256 = "496c8137f1bc2e2fcaef8c42e4fe7aec02975d34487d413f7ad8cb8857626ddc",
      deps = [
          "@org_apache_avro_avro",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_avro_avro_mapred_hadoop2",
      artifact = "org.apache.avro:avro-mapred:jar:hadoop2:1.7.7",
      artifact_sha256 = "c79cf519f4ee3d278b9cdf0b3814d686a911d1bc37c1626bc2bcb4bd279f4895",
      deps = [
          "@org_apache_avro_avro_ipc",
          "@org_apache_avro_avro_ipc_tests",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES io.netty:netty
    # EXCLUDES org.apache.velocity:velocity
    # EXCLUDES org.mortbay.jetty:jetty
    # EXCLUDES org.mortbay.jetty:servlet-api
    # EXCLUDES org.mortbay.jetty:jetty-util
  )
