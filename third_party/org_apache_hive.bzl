load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_hive_hive_storage_api",
      artifact = "org.apache.hive:hive-storage-api:2.6.0",
      artifact_sha256 = "7221fc528bfee6385396b4ca05b1faedb658ef54253cd11f34a500883868c82e",
      deps = [
          "@commons_lang_commons_lang",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.apache.hadoop:hadoop-hdfs
  )
