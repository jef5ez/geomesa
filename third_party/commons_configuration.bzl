load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_configuration_commons_configuration",
      artifact = "commons-configuration:commons-configuration:1.6",
      artifact_sha256 = "46b71b9656154f6a16ea4b1dc84026b52a9305f8eff046a2b4655fa1738e5eee",
      deps = [
          "@commons_beanutils_commons_beanutils_core",
          "@commons_collections_commons_collections",
          "@commons_digester_commons_digester",
          "@commons_lang_commons_lang",
          "@commons_logging_commons_logging"
      ],
  )
