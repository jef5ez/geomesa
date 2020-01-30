load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "jdk_tools_jdk_tools",
      artifact = "jdk.tools:jdk.tools:1.6",
  )
