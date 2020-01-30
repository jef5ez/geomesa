load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_101tec_zkclient",
      artifact = "com.101tec:zkclient:0.10",
      artifact_sha256 = "26e988b8bba838c724fd8350b331ee8b5ffc59c3a9c074df115c4c3a6c843878",
      deps = [
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
