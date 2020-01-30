load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_mindrot_jbcrypt",
      artifact = "org.mindrot:jbcrypt:0.3m",
      artifact_sha256 = "c0717079f4fe18f72f36ad1ab15a2afa63c6544fee4b9ac2128851330b5e1031",
  )
