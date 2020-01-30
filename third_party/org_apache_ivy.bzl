load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_ivy_ivy",
      artifact = "org.apache.ivy:ivy:2.4.0",
      artifact_sha256 = "ce81cb234406b093b5b8de9f6f5b2a50ed0824d6a235891353e8d3e941a53970",
  )
