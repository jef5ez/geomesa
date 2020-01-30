load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_fusesource_sigar",
      artifact = "org.fusesource:sigar:1.6.4",
      artifact_sha256 = "de8725b3be2c25d44ba41a9450cd03842fac9466d92dc582cb37691eeea1f8db",
    # EXCLUDES log4j:log4j
  )
