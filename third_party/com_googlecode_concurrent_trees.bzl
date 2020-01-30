load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_googlecode_concurrent_trees_concurrent_trees",
      artifact = "com.googlecode.concurrent-trees:concurrent-trees:2.6.1",
      artifact_sha256 = "04e3724984e2a5cbf55606cfa372a5bd3d3c5d2a21533a7004e3cde539761fa5",
  )
