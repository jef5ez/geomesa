load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_thinkaurelius_thrift_thrift_server",
      artifact = "com.thinkaurelius.thrift:thrift-server:0.3.7",
      artifact_sha256 = "21307a6014e42ad5175373bdc544ab8cf865d72b0537eced168d04e695542b5e",
      deps = [
          "@com_lmax_disruptor",
          "@junit_junit",
          "@org_apache_thrift_libthrift",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.slf4j:slf4j-log4j12
  )
