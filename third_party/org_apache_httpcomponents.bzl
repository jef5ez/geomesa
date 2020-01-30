load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_httpcomponents_httpclient",
      artifact = "org.apache.httpcomponents:httpclient:4.5.3",
      artifact_sha256 = "db3d1b6c2d6a5e5ad47577ad61854e2f0e0936199b8e05eb541ed52349263135",
      deps = [
          "@commons_codec_commons_codec",
          "@commons_logging_commons_logging",
          "@org_apache_httpcomponents_httpcore"
      ],
  )


  import_external(
      name = "org_apache_httpcomponents_httpcore",
      artifact = "org.apache.httpcomponents:httpcore:4.4.6",
      artifact_sha256 = "d7f853dee87680b07293d30855b39b9eb56c1297bd16ff1cd6f19ddb8fa745fb",
  )


  import_external(
      name = "org_apache_httpcomponents_httpmime",
      artifact = "org.apache.httpcomponents:httpmime:4.5.3",
      artifact_sha256 = "b4865b79a3aaeef794220b532bc7b07f793fa4aad90c29e83cab2b835cd8ee06",
      deps = [
          "@org_apache_httpcomponents_httpclient"
      ],
  )
