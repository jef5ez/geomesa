load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_sourceforge_hatbox_hatbox",
      artifact = "net.sourceforge.hatbox:hatbox:1.0.b10",
      artifact_sha256 = "9593f362755fa344437a2f9c098514f2b68b10824bfea1323fd2cd2ea2a02758",
  )
