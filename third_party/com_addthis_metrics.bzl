load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_addthis_metrics_reporter_config3",
      artifact = "com.addthis.metrics:reporter-config3:3.0.0",
      artifact_sha256 = "19c7f0e7ae4e64ea5aa1a2d7c774152aac52d187b7e0fd076b1338a7f6ebe97a",
      deps = [
          "@com_addthis_metrics_reporter_config_base",
          "@io_dropwizard_metrics_metrics_core",
          "@org_apache_commons_commons_lang3",
          "@org_hibernate_hibernate_validator",
          "@org_slf4j_slf4j_api",
          "@org_yaml_snakeyaml"
      ],
  )


  import_external(
      name = "com_addthis_metrics_reporter_config_base",
      artifact = "com.addthis.metrics:reporter-config-base:3.0.0",
      artifact_sha256 = "29d227d95cb30af2cf71941435d2a98945c4411379fa5ad86aa1f11945d6e0c4",
      deps = [
          "@org_apache_commons_commons_lang3",
          "@org_hibernate_hibernate_validator",
          "@org_slf4j_slf4j_api",
          "@org_yaml_snakeyaml"
      ],
  )
