load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_javassist_javassist",
      artifact = "org.javassist:javassist:3.18.1-GA",
      artifact_sha256 = "3fb71231afd098bb0f93f5eb97aa8291c8d0556379125e596f92ec8f944c6162",
  )
