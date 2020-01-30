load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jdom_jdom2",
      artifact = "org.jdom:jdom2:2.0.6",
      artifact_sha256 = "1345f11ba606d15603d6740551a8c21947c0215640770ec67271fe78bea97cf5",
  )
