load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_java_dev_jets3t_jets3t",
      artifact = "net.java.dev.jets3t:jets3t:0.9.4",
      artifact_sha256 = "a03f0d25e810ecff30137e0d3148d1bf9afdcf62357ebd1b1af338f7f6115bbb",
      deps = [
          "@com_jamesmurty_utils_java_xmlbuilder",
          "@commons_codec_commons_codec",
          "@javax_activation_activation",
          "@org_apache_httpcomponents_httpclient",
          "@org_apache_httpcomponents_httpcore",
          "@org_bouncycastle_bcprov_jdk15on",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl"
      ],
    # EXCLUDES commons-logging:commons-logging
  )
