load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "io_github_azagniotov_dropwizard_metrics_cloudwatch",
      artifact = "io.github.azagniotov:dropwizard-metrics-cloudwatch:1.0.13",
      artifact_sha256 = "290aa6ddc47305f6fd74b69ed3e09d6dde78b05cb00cb369b61f2ec3c06913ac",
      deps = [
          "@com_amazonaws_aws_java_sdk_cloudwatch",
          "@io_dropwizard_metrics_metrics_core",
          "@io_dropwizard_metrics_metrics_jvm",
          "@org_slf4j_slf4j_api"
      ],
  )
