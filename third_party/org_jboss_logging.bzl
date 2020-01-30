load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jboss_logging_jboss_logging",
      artifact = "org.jboss.logging:jboss-logging:3.1.3.GA",
      artifact_sha256 = "6813931fe607469989f76a73a22515d2489dcd8b6be9fc147093a9cec995f822",
  )
