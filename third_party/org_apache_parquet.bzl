load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_parquet_parquet_column",
      artifact = "org.apache.parquet:parquet-column:1.9.0",
      artifact_sha256 = "7ae521f1cf16f6674bec8c758975cbd1313800428a145a6db8a437b2bd46512c",
      deps = [
          "@commons_codec_commons_codec",
          "@org_apache_parquet_parquet_common",
          "@org_apache_parquet_parquet_encoding"
      ],
  )


  import_external(
      name = "org_apache_parquet_parquet_common",
      artifact = "org.apache.parquet:parquet-common:1.9.0",
      artifact_sha256 = "cf7178454c3d9486e1370b65f5957eda7766fe5ef4a53bbc19bdcbb8d932a13a",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_parquet_parquet_encoding",
      artifact = "org.apache.parquet:parquet-encoding:1.9.0",
      artifact_sha256 = "3bad0a32fa965c42e67610b6098daadfb22568889b9977acc06e0a5eb100a495",
      deps = [
          "@commons_codec_commons_codec",
          "@org_apache_parquet_parquet_common"
      ],
  )


  import_external(
      name = "org_apache_parquet_parquet_format",
      artifact = "org.apache.parquet:parquet-format:2.3.1",
      artifact_sha256 = "b45097b8fbbe18160ef3139fc04c278a5789ec60295dda13906971a5a8a4297a",
  )


  import_external(
      name = "org_apache_parquet_parquet_hadoop",
      artifact = "org.apache.parquet:parquet-hadoop:1.9.0",
      artifact_sha256 = "043b04b2a0056e8e0d25c6840afadd7668074f7b66157f8d42e85fb6eb53075d",
      deps = [
          "@commons_pool_commons_pool",
          "@org_apache_parquet_parquet_column",
          "@org_apache_parquet_parquet_format",
          "@org_apache_parquet_parquet_jackson",
          "@org_codehaus_jackson_jackson_core_asl",
          "@org_codehaus_jackson_jackson_mapper_asl"
      ],
    # EXCLUDES org.xerial.snappy:snappy-java
  )


  import_external(
      name = "org_apache_parquet_parquet_jackson",
      artifact = "org.apache.parquet:parquet-jackson:1.9.0",
      artifact_sha256 = "a52417bdc71276d17508455079357e5e1b3907966b6206c23eee7aa408683c4e",
  )
