load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_huldra_math_bigint",
      artifact = "org.huldra.math:bigint:0.7.1",
      artifact_sha256 = "aae42edfa250950238c856ca4c723bdf116b1ae61115708a36da12af444a8824",
  )
