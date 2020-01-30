load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_htrace_htrace_core",
      artifact = "org.htrace:htrace-core:3.0.4",
      artifact_sha256 = "432afb6608a4b033e4a8945b022598f8185b871b291e6fce9373f5dcfe1a8c8b",
      deps = [
          "@com_google_guava_guava",
          "@commons_logging_commons_logging",
          "@org_mortbay_jetty_jetty_util"
      ],
  )
