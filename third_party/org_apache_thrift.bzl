load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_thrift_libthrift",
      artifact = "org.apache.thrift:libthrift:0.9.3",
      artifact_sha256 = "bca5e8cdee1e0fbf563de7d41c452385e7bed69723fa28225a9ce718a8ee3419",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.apache.httpcomponents:httpclient
    # EXCLUDES org.apache.httpcomponents:httpcore
  )
