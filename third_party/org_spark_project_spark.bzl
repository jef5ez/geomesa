load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_spark_project_spark_unused",
      artifact = "org.spark-project.spark:unused:1.0.0",
      artifact_sha256 = "00fd27fc9bde701581e7dcf5b95981d9e749a1c176bb8bfcd49f675768ff6bf0",
  )
