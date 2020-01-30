load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_pool_commons_pool",
      artifact = "commons-pool:commons-pool:1.5.4",
      artifact_sha256 = "22095672ac3ad6503e42ec6d4cbc330cd1318040223f6c5d9605473b6d2aa0fd",
  )
