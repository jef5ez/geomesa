load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_amazonaws_aws_java_sdk_cloudwatch",
      artifact = "com.amazonaws:aws-java-sdk-cloudwatch:1.11.179",
      artifact_sha256 = "02f8a2c2e40f80fd7aef7bf9e35a41d7ecb7bb20d2bdc1d84fac308a202f82ed",
      deps = [
          "@com_amazonaws_aws_java_sdk_core",
          "@com_amazonaws_jmespath_java"
      ],
  )


  import_external(
      name = "com_amazonaws_aws_java_sdk_core",
      artifact = "com.amazonaws:aws-java-sdk-core:1.11.179",
      artifact_sha256 = "30e65dc00130e4dc5b7e0ba8e1b320b8304648ecc8c5a832ed86989f2cc4bdfa",
      deps = [
          "@com_fasterxml_jackson_core_jackson_databind",
          "@com_fasterxml_jackson_dataformat_jackson_dataformat_cbor",
          "@commons_logging_commons_logging",
          "@joda_time_joda_time",
          "@org_apache_httpcomponents_httpclient",
          "@software_amazon_ion_ion_java"
      ],
  )


  import_external(
      name = "com_amazonaws_jmespath_java",
      artifact = "com.amazonaws:jmespath-java:1.11.179",
      artifact_sha256 = "04c6299794f08ee977e085d97b202314be7a98983149ec80f92e5444b3dba037",
      deps = [
          "@com_fasterxml_jackson_core_jackson_databind"
      ],
  )
