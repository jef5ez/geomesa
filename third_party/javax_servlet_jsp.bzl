load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_servlet_jsp_jsp_api",
      artifact = "javax.servlet.jsp:jsp-api:2.1",
      artifact_sha256 = "545f4e7dc678ffb4cf8bd0fd40b4a4470a409a787c0ea7d0ad2f08d56112987b",
  )
