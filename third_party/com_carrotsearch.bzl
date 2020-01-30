load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_carrotsearch_hppc",
      artifact = "com.carrotsearch:hppc:0.7.2",
      artifact_sha256 = "7b3dd6661e83e313d70b4aa82c5180bb39535e536a3435fa741fff9727433b6a",
  )
