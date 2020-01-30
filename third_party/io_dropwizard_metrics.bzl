load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "io_dropwizard_metrics_metrics_core",
      artifact = "io.dropwizard.metrics:metrics-core:3.2.6",
      artifact_sha256 = "891174c5230476e1950a286169672002978562ebdf5c85f0199ecae1bd030f9f",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "io_dropwizard_metrics_metrics_ganglia",
      artifact = "io.dropwizard.metrics:metrics-ganglia:3.2.6",
      artifact_sha256 = "bd64ca16506df7500fd0f11ae7133c8a05e8711518b0dd88607d82e08da0593f",
      deps = [
          "@info_ganglia_gmetric4j_gmetric4j",
          "@io_dropwizard_metrics_metrics_core",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "io_dropwizard_metrics_metrics_graphite",
      artifact = "io.dropwizard.metrics:metrics-graphite:3.2.6",
      artifact_sha256 = "8c16d0546e8fc5ee7c149ce4e75bf6080d846d869d13130d9ade3b9b0df547ac",
      deps = [
          "@io_dropwizard_metrics_metrics_core",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "io_dropwizard_metrics_metrics_json",
      artifact = "io.dropwizard.metrics:metrics-json:3.1.5",
      artifact_sha256 = "2c7e7efa6cdf8d41f232eb2fe91f811f22675c36f9a7a711c66619bbafb3be96",
      deps = [
          "@com_fasterxml_jackson_core_jackson_databind",
          "@io_dropwizard_metrics_metrics_core",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "io_dropwizard_metrics_metrics_jvm",
      artifact = "io.dropwizard.metrics:metrics-jvm:4.0.2",
      deps = [
          "@io_dropwizard_metrics_metrics_core",
          "@org_slf4j_slf4j_api"
      ],
  )
