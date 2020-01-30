load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_datastax_cassandra_cassandra_driver_core",
      artifact = "com.datastax.cassandra:cassandra-driver-core:3.0.0",
      artifact_sha256 = "3650841db5afa037b69f695c925714b4b39f66f277f12df8846ce84dee48b14f",
      deps = [
          "@com_google_guava_guava",
          "@io_dropwizard_metrics_metrics_core",
          "@io_netty_netty_handler"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "com_datastax_cassandra_cassandra_driver_mapping",
      artifact = "com.datastax.cassandra:cassandra-driver-mapping:3.0.0",
      artifact_sha256 = "ecccb6d79d741094bf736383ab1e02e285ebb007dcec37f6e09b144ef3a59176",
      deps = [
          "@com_datastax_cassandra_cassandra_driver_core"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
