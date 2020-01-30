load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_el_commons_el",
      artifact = "commons-el:commons-el:1.0",
      artifact_sha256 = "0d67550ec0022b653453c759f063a643c2fe64bc48faa8b25f95a220e2a282e2",
      deps = [
          "@commons_logging_commons_logging"
      ],
  )
