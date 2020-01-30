load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_lz4_lz4_java",
      artifact = "org.lz4:lz4-java:1.4.0",
      artifact_sha256 = "58516caefbfd99b3c5bac4065ba416d8e596efc58de2a2cc58e8a9302946a61b",
  )
