load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_sun_jersey_contribs_jersey_guice",
      artifact = "com.sun.jersey.contribs:jersey-guice:1.9",
      artifact_sha256 = "544fc92d2625332a9a8eeaa7a7274cf1af6703936a50afa80d92a78200a7de34",
      deps = [
          "@com_google_inject_extensions_guice_servlet",
          "@com_google_inject_guice",
          "@com_sun_jersey_jersey_server",
          "@javax_inject_javax_inject"
      ],
  )
