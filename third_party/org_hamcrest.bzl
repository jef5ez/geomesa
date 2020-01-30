load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_hamcrest_hamcrest_core",
      artifact = "org.hamcrest:hamcrest-core:1.3",
      artifact_sha256 = "66fdef91e9739348df7a096aa384a5685f4e875584cce89386a7a47251c4d8e9",
  )


  import_external(
      name = "org_hamcrest_hamcrest_library",
      artifact = "org.hamcrest:hamcrest-library:1.3",
      artifact_sha256 = "711d64522f9ec410983bd310934296da134be4254a125080a0416ec178dfad1c",
      deps = [
          "@org_hamcrest_hamcrest_core"
      ],
  )
