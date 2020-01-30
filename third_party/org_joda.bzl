load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_joda_joda_convert",
      artifact = "org.joda:joda-convert:1.8.1",
      artifact_sha256 = "96d8f5163fb77bc747b92dd2eefc6aa2cfbc9fccdfc392eba2190cb4709b4328",
  )
