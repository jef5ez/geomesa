load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_digester_commons_digester",
      artifact = "commons-digester:commons-digester:1.8",
      artifact_sha256 = "05662373044f3dff112567b7bb5dfa1174e91e074c0c727b4412788013f49d56",
      deps = [
          "@commons_beanutils_commons_beanutils",
          "@commons_logging_commons_logging"
      ],
  )
