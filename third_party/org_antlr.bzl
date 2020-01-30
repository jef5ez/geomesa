load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_antlr_ST4",
      artifact = "org.antlr:ST4:4.0.8",
      artifact_sha256 = "58caabc40c9f74b0b5993fd868e0f64a50c0759094e6a251aaafad98edfc7a3b",
      deps = [
          "@org_antlr_antlr_runtime"
      ],
  )


  import_external(
      name = "org_antlr_antlr",
      artifact = "org.antlr:antlr:3.5.2",
      artifact_sha256 = "5ac36c2acfb0a0f3d37dafe20b5b570f2643e2d000c648d44503c2738be643df",
      deps = [
          "@org_antlr_ST4",
          "@org_antlr_antlr_runtime"
      ],
    # EXCLUDES org.antlr:stringtemplate
  )


  import_external(
      name = "org_antlr_antlr4_runtime",
      artifact = "org.antlr:antlr4-runtime:4.7",
      artifact_sha256 = "2a61943f803bbd1d0e02dffd19b92a418f83340c994346809e3b51e2231aa6c0",
  )


  import_external(
      name = "org_antlr_antlr_runtime",
      artifact = "org.antlr:antlr-runtime:3.5.2",
      artifact_sha256 = "ce3fc8ecb10f39e9a3cddcbb2ce350d272d9cd3d0b1e18e6fe73c3b9389c8734",
    # EXCLUDES org.antlr:stringtemplate
  )
