load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_arrow_arrow_format",
      artifact = "org.apache.arrow:arrow-format:0.10.0",
      artifact_sha256 = "21387bd6012d98bbc7083f349f9569dc4798cd72c5b7c9aa713092bbce1939eb",
      deps = [
          "@com_vlkan_flatbuffers"
      ],
  )


  import_external(
      name = "org_apache_arrow_arrow_memory",
      artifact = "org.apache.arrow:arrow-memory:0.10.0",
      artifact_sha256 = "84bfe57d112717b355dc201abaeb60ceb0750b9a77d4814088b52606981337c1",
      deps = [
          "@com_google_code_findbugs_jsr305",
          "@com_google_guava_guava",
          "@io_netty_netty_buffer",
          "@io_netty_netty_common",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_arrow_arrow_vector",
      artifact = "org.apache.arrow:arrow-vector:0.10.0",
      artifact_sha256 = "7e264f28f3b9c0351291a2415e4df5909243e44d75112439fd0d70878dec8b6c",
      deps = [
          "@com_carrotsearch_hppc",
          "@com_fasterxml_jackson_core_jackson_annotations",
          "@com_fasterxml_jackson_core_jackson_core",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_google_code_findbugs_jsr305",
          "@com_google_guava_guava",
          "@com_vlkan_flatbuffers",
          "@commons_codec_commons_codec",
          "@io_netty_netty_buffer",
          "@io_netty_netty_common",
          "@org_apache_arrow_arrow_format",
          "@org_apache_arrow_arrow_memory",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES joda-time:joda-time
    # EXCLUDES org.slf4j:log4j-over-slf4j
  )


  import_external(
      name = "org_apache_arrow_arrow_vector_tests",
      artifact = "org.apache.arrow:arrow-vector:jar:tests:0.10.0",
      artifact_sha256 = "9d00b73ac3d9c889f860d35238de3a368594d39dc75e33d57d0820e28d0dc544",
      deps = [
          "@com_carrotsearch_hppc",
          "@com_fasterxml_jackson_core_jackson_annotations",
          "@com_fasterxml_jackson_core_jackson_core",
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_google_code_findbugs_jsr305",
          "@com_google_guava_guava",
          "@com_vlkan_flatbuffers",
          "@commons_codec_commons_codec",
          "@io_netty_netty_buffer",
          "@io_netty_netty_common",
          "@org_apache_arrow_arrow_format",
          "@org_apache_arrow_arrow_memory",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES joda-time:joda-time
    # EXCLUDES org.slf4j:log4j-over-slf4j
  )
