load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_xerial_snappy_snappy_java",
      artifact = "org.xerial.snappy:snappy-java:1.1.2.6",
      artifact_sha256 = "61f7bc4076be0320ab4ef076fb6d83e3f649c3caf9ffb6031654a73f9c23732f",
  )
