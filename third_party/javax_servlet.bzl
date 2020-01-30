load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_servlet_javax_servlet_api",
      artifact = "javax.servlet:javax.servlet-api:3.1.0",
      artifact_sha256 = "af456b2dd41c4e82cf54f3e743bc678973d9fe35bd4d3071fa05c7e5333b8482",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "javax_servlet_servlet_api",
      artifact = "javax.servlet:servlet-api:2.5",
      artifact_sha256 = "c658ea360a70faeeadb66fb3c90a702e4142a0ab7768f9ae9828678e0d9ad4dc",
  )
