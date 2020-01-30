load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "javax_el_javax_el_api",
      artifact = "javax.el:javax.el-api:2.2.4",
      artifact_sha256 = "5fd94735743ed06252c83158a24c290fcbf94b3f599b1bcec3bdc8c80979bed7",
  )
