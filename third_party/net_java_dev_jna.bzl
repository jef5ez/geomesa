load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_java_dev_jna_jna",
      artifact = "net.java.dev.jna:jna:4.0.0",
      artifact_sha256 = "dac270b6441ce24d93a96ddb6e8f93d8df099192738799a6f6fcfc2b2416ca19",
  )
