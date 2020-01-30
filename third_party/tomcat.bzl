load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "tomcat_jasper_compiler",
      artifact = "tomcat:jasper-compiler:5.5.23",
      artifact_sha256 = "e493e53f7231f6c715341c661b95157aef3fb44bc44f82b4b1ec6d9380dc6c93",
    # EXCLUDES javax.servlet:jsp-api
    # EXCLUDES ant:ant
  )


  import_external(
      name = "tomcat_jasper_runtime",
      artifact = "tomcat:jasper-runtime:5.5.23",
      artifact_sha256 = "3564c35fa738e2e683af8b7ae28c4345a32e2bd97ff88498f17423f329975890",
      deps = [
          "@commons_el_commons_el",
          "@javax_servlet_servlet_api"
      ],
  )
